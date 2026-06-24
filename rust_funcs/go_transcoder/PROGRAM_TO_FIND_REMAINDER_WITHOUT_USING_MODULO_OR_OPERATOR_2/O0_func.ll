define i32 @f_gold(i32 %0, i32 %divisor) unnamed_addr #3 {
start:
  %num = alloca [4 x i8], align 4
  store i32 %0, ptr %num, align 4
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %_4 = load i32, ptr %num, align 4
  %_3 = icmp sge i32 %_4, %divisor
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_0 = load i32, ptr %num, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %1 = load i32, ptr %num, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1, i32 %divisor)
  %_5.0 = extractvalue { i32, i1 } %2, 0
  %_5.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_5.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  store i32 %_5.0, ptr %num, align 4
  br label %bb1

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5aef939d5fe7a0f49303c6a18c7b7d16) #22
  unreachable
}
