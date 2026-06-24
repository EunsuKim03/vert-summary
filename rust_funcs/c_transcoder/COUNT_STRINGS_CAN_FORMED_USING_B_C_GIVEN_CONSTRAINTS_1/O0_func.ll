define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %sum = alloca [4 x i8], align 4
  store float 1.000000e+00, ptr %sum, align 4
  %_4 = sitofp i32 %n to float
  %_3 = fmul float %_4, 2.000000e+00
  %0 = load float, ptr %sum, align 4
  %1 = fadd float %0, %_3
  store float %1, ptr %sum, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %n)
  %_7.0 = extractvalue { i32, i1 } %2, 0
  %_7.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %n2 = sitofp i32 %_7.0 to float
  %n1 = sitofp i32 %n to float
  %_11 = fsub float %n1, 1.000000e+00
  %_10 = fmul float %n2, %_11
  %_9 = fdiv float %_10, 2.000000e+00
  %3 = load float, ptr %sum, align 4
  %4 = fadd float %3, %_9
  store float %4, ptr %sum, align 4
  %_12 = load float, ptr %sum, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_12)
  ret i32 %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_7cff48d07e20bbffc8cb21ac99381cf2) #22
  unreachable
}
