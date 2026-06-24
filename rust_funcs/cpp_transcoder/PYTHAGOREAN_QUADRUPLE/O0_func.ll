define i32 @f_gold(i32 %a, i32 %b, i32 %c, i32 %d) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %a, i32 %a)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %b, i32 %b)
  %_10.0 = extractvalue { i32, i1 } %1, 0
  %_10.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_10.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2c914b8db82950172b6432be29aa9983) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_8.0, i32 %_10.0)
  %_11.0 = extractvalue { i32, i1 } %2, 0
  %_11.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_11.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3e6b7709990da32d4c06ece141d06cb1) #22
  unreachable

bb3:                                              ; preds = %bb2
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %c, i32 %c)
  %_13.0 = extractvalue { i32, i1 } %3, 0
  %_13.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_13.1, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2c914b8db82950172b6432be29aa9983) #22
  unreachable

bb4:                                              ; preds = %bb3
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_11.0, i32 %_13.0)
  %_14.0 = extractvalue { i32, i1 } %4, 0
  %_14.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_14.1, label %panic4, label %bb5

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d6521ab4198f5f5af4816faee1163ecf) #22
  unreachable

bb5:                                              ; preds = %bb4
  %5 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %d, i32 %d)
  %_17.0 = extractvalue { i32, i1 } %5, 0
  %_17.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_17.1, label %panic5, label %bb6

panic4:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2c914b8db82950172b6432be29aa9983) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_15 = icmp eq i32 %_17.0, %_14.0
  br i1 %_15, label %bb7, label %bb8

panic5:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b1bd6d9c1cede4b1c239ddb6a4f8eef6) #22
  unreachable

bb8:                                              ; preds = %bb6
  store i32 0, ptr %_0, align 4
  br label %bb9

bb7:                                              ; preds = %bb6
  store i32 1, ptr %_0, align 4
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = load i32, ptr %_0, align 4
  ret i32 %6
}
