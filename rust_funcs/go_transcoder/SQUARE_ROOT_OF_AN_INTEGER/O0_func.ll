define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %result = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %x, 0
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp eq i32 %x, 1
  br i1 %_3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 %x, ptr %_0, align 4
  br label %bb10

bb3:                                              ; preds = %bb1
  store i32 1, ptr %i, align 4
  store i32 1, ptr %result, align 4
  br label %bb4

bb4:                                              ; preds = %bb7, %bb3
  %_7 = load i32, ptr %result, align 4
  %_6 = icmp sle i32 %_7, %x
  br i1 %_6, label %bb5, label %bb8

bb8:                                              ; preds = %bb4
  %_12 = load i32, ptr %i, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_12, i32 1)
  %_13.0 = extractvalue { i32, i1 } %0, 0
  %_13.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_13.1, label %panic, label %bb9

bb5:                                              ; preds = %bb4
  %1 = load i32, ptr %i, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic1, label %bb6

bb9:                                              ; preds = %bb8
  store i32 %_13.0, ptr %_0, align 4
  br label %bb10

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ccad866f0428514e6d83732a829bc565) #22
  unreachable

bb10:                                             ; preds = %bb2, %bb9
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb6:                                              ; preds = %bb5
  store i32 %_8.0, ptr %i, align 4
  %_9 = load i32, ptr %i, align 4
  %_10 = load i32, ptr %i, align 4
  %4 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_9, i32 %_10)
  %_11.0 = extractvalue { i32, i1 } %4, 0
  %_11.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_11.1, label %panic2, label %bb7

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_01175117630b5736602380af0c1d4c2b) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %_11.0, ptr %result, align 4
  br label %bb4

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5e297ae2ec89e4bd19745e24ebeb049e) #22
  unreachable
}
