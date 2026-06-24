define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %res = alloca [4 x i8], align 4
  %c = alloca [4 x i8], align 4
  %b = alloca [4 x i8], align 4
  %a = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp sle i32 %n, 1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 0, ptr %a, align 4
  store i32 1, ptr %b, align 4
  store i32 1, ptr %c, align 4
  store i32 1, ptr %res, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 %n, ptr %_0, align 4
  br label %bb8

bb3:                                              ; preds = %bb6, %bb2
  %_8 = load i32, ptr %c, align 4
  %_7 = icmp slt i32 %_8, %n
  br i1 %_7, label %bb4, label %bb7

bb7:                                              ; preds = %bb3
  %0 = load i32, ptr %res, align 4
  store i32 %0, ptr %_0, align 4
  br label %bb8

bb4:                                              ; preds = %bb3
  %_9 = load i32, ptr %a, align 4
  %_10 = load i32, ptr %b, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_9, i32 %_10)
  %_11.0 = extractvalue { i32, i1 } %1, 0
  %_11.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_11.1, label %panic, label %bb5

bb8:                                              ; preds = %bb1, %bb7
  %2 = load i32, ptr %_0, align 4
  ret i32 %2

bb5:                                              ; preds = %bb4
  store i32 %_11.0, ptr %c, align 4
  %3 = load i32, ptr %res, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %_12.0 = extractvalue { i32, i1 } %4, 0
  %_12.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_12.1, label %panic1, label %bb6

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_61618cf8e74429402ea424f298712ce0) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_12.0, ptr %res, align 4
  %_13 = load i32, ptr %b, align 4
  store i32 %_13, ptr %a, align 4
  %_14 = load i32, ptr %c, align 4
  store i32 %_14, ptr %b, align 4
  br label %bb3

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dbbfee199d72c74b01ceea913aab28fb) #22
  unreachable
}
