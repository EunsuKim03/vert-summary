define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %m = alloca [4 x i8], align 4
  %position = alloca [4 x i8], align 4
  store i32 1, ptr %position, align 4
  store i32 1, ptr %m, align 4
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %_6 = load i32, ptr %m, align 4
  %_5 = and i32 %n, %_6
  %_4 = icmp eq i32 %_5, 0
  br i1 %_4, label %bb2, label %bb5

bb5:                                              ; preds = %bb1
  %_0 = load i32, ptr %position, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_7 = load i32, ptr %m, align 4
  %0 = shl i32 %_7, 1
  store i32 %0, ptr %m, align 4
  %1 = load i32, ptr %position, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %_10.0 = extractvalue { i32, i1 } %2, 0
  %_10.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_10.1, label %panic, label %bb4

bb4:                                              ; preds = %bb2
  store i32 %_10.0, ptr %position, align 4
  br label %bb1

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b43c939acf11e901b8e80fad87277044) #22
  unreachable
}
