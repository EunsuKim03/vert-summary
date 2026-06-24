define i32 @f_gold(i32 %num, i32 %divisor) unnamed_addr #3 {
start:
  %num1 = alloca [4 x i8], align 4
  store i32 %num, ptr %num1, align 4
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %_5 = load i32, ptr %num1, align 4
  %_4 = icmp sge i32 %_5, %divisor
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_0 = load i32, ptr %num1, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %0 = load i32, ptr %num1, align 4
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %0, i32 %divisor)
  %_6.0 = extractvalue { i32, i1 } %1, 0
  %_6.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_6.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  store i32 %_6.0, ptr %num1, align 4
  br label %bb1

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e5d16ca6c2aa95184264140c78be07c2) #22
  unreachable
}
