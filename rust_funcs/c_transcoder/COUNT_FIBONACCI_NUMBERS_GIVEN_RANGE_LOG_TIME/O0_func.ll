define i32 @f_gold(i32 %low, i32 %high) unnamed_addr #3 {
start:
  %result = alloca [4 x i8], align 4
  %f3 = alloca [4 x i8], align 4
  %f2 = alloca [4 x i8], align 4
  %f1 = alloca [4 x i8], align 4
  store float 0.000000e+00, ptr %f1, align 4
  store float 1.000000e+00, ptr %f2, align 4
  store float 1.000000e+00, ptr %f3, align 4
  store i32 0, ptr %result, align 4
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  %_8 = load float, ptr %f1, align 4
  %_9 = sitofp i32 %high to float
  %_7 = fcmp ole float %_8, %_9
  br i1 %_7, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_11 = load float, ptr %f1, align 4
  %_12 = sitofp i32 %low to float
  %_10 = fcmp oge float %_11, %_12
  br i1 %_10, label %bb3, label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %_14 = load float, ptr %f2, align 4
  store float %_14, ptr %f1, align 4
  %_15 = load float, ptr %f3, align 4
  store float %_15, ptr %f2, align 4
  %_16 = load float, ptr %f1, align 4
  %_17 = load float, ptr %f2, align 4
  %0 = fadd float %_16, %_17
  store float %0, ptr %f3, align 4
  br label %bb1

bb3:                                              ; preds = %bb2
  %1 = load i32, ptr %result, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %_13.0 = extractvalue { i32, i1 } %2, 0
  %_13.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_13.1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_13.0, ptr %result, align 4
  br label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_87276c627d76cf0664d68313d1bf2b85) #22
  unreachable
}
