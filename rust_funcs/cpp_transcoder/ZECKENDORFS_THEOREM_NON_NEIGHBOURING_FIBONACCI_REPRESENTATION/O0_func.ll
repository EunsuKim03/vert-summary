define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %f3 = alloca [4 x i8], align 4
  %f2 = alloca [4 x i8], align 4
  %f1 = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 0
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 %n, ptr %_0, align 4
  br label %bb8

bb3:                                              ; preds = %bb1
  store i32 0, ptr %f1, align 4
  store i32 1, ptr %f2, align 4
  store i32 1, ptr %f3, align 4
  br label %bb4

bb4:                                              ; preds = %bb6, %bb3
  %_8 = load i32, ptr %f3, align 4
  %_7 = icmp sle i32 %_8, %n
  br i1 %_7, label %bb5, label %bb7

bb7:                                              ; preds = %bb4
  %0 = load i32, ptr %f2, align 4
  store i32 %0, ptr %_0, align 4
  br label %bb8

bb5:                                              ; preds = %bb4
  %_9 = load i32, ptr %f2, align 4
  store i32 %_9, ptr %f1, align 4
  %_10 = load i32, ptr %f3, align 4
  store i32 %_10, ptr %f2, align 4
  %_11 = load i32, ptr %f1, align 4
  %_12 = load i32, ptr %f2, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_11, i32 %_12)
  %_13.0 = extractvalue { i32, i1 } %1, 0
  %_13.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_13.1, label %panic, label %bb6

bb8:                                              ; preds = %bb2, %bb7
  %2 = load i32, ptr %_0, align 4
  ret i32 %2

bb6:                                              ; preds = %bb5
  store i32 %_13.0, ptr %f3, align 4
  br label %bb4

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7786ffc5e4f684b5eb1584a8a321558d) #22
  unreachable
}
