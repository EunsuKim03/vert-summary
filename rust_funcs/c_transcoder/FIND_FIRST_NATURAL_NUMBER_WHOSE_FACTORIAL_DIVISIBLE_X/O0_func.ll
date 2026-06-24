define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %fact = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  store i32 1, ptr %i, align 4
  store float 1.000000e+00, ptr %fact, align 4
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %_5 = load i32, ptr %i, align 4
  %_4 = sitofp i32 %_5 to float
  %0 = load float, ptr %fact, align 4
  %1 = fmul float %0, %_4
  store float %1, ptr %fact, align 4
  %_8 = load float, ptr %fact, align 4
  %_9 = sitofp i32 %x to float
  %_7 = frem float %_8, %_9
  %_6 = fcmp oeq float %_7, 0.000000e+00
  br i1 %_6, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %2 = load i32, ptr %i, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %_10.0 = extractvalue { i32, i1 } %3, 0
  %_10.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_10.1, label %panic, label %bb4

bb2:                                              ; preds = %bb1
  %_0 = load i32, ptr %i, align 4
  ret i32 %_0

bb4:                                              ; preds = %bb3
  store i32 %_10.0, ptr %i, align 4
  br label %bb1

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e2ffe5fbc50b91b0793d4fae5eb15c13) #22
  unreachable
}
