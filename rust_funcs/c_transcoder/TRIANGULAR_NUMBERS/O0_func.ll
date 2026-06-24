define i32 @f_gold(i32 %num) unnamed_addr #3 {
start:
  %n = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp slt i32 %num, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 0, ptr %sum, align 4
  store i32 1, ptr %n, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb10

bb3:                                              ; preds = %bb8, %bb2
  %_6 = load i32, ptr %sum, align 4
  %_5 = icmp sle i32 %_6, %num
  br i1 %_5, label %bb4, label %bb9

bb9:                                              ; preds = %bb3
  store i32 0, ptr %_0, align 4
  br label %bb10

bb4:                                              ; preds = %bb3
  %_7 = load i32, ptr %sum, align 4
  %_8 = load i32, ptr %n, align 4
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_7, i32 %_8)
  %_9.0 = extractvalue { i32, i1 } %0, 0
  %_9.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_9.1, label %panic, label %bb5

bb10:                                             ; preds = %bb1, %bb6, %bb9
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb5:                                              ; preds = %bb4
  store i32 %_9.0, ptr %sum, align 4
  %_11 = load i32, ptr %sum, align 4
  %_10 = icmp eq i32 %_11, %num
  br i1 %_10, label %bb6, label %bb7

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4c5636f278c75056c94061899b8b3525) #22
  unreachable

bb7:                                              ; preds = %bb5
  %2 = load i32, ptr %n, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %_12.0 = extractvalue { i32, i1 } %3, 0
  %_12.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_12.1, label %panic1, label %bb8

bb6:                                              ; preds = %bb5
  store i32 1, ptr %_0, align 4
  br label %bb10

bb8:                                              ; preds = %bb7
  store i32 %_12.0, ptr %n, align 4
  br label %bb3

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_00a44842b70183b79255d16ad5173824) #22
  unreachable
}
