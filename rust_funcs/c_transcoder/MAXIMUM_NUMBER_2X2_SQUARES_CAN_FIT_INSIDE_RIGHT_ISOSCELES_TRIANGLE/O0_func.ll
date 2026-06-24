define i32 @f_gold(i32 %base) unnamed_addr #3 {
start:
  %base1 = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %base, i32 2)
  %_4.0 = extractvalue { i32, i1 } %0, 0
  %_4.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_4.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = sitofp i32 %_4.0 to float
  store float %1, ptr %base1, align 4
  %_5 = load float, ptr %base1, align 4
  %2 = fdiv float %_5, 2.000000e+00
  store float %2, ptr %base1, align 4
  %_8 = load float, ptr %base1, align 4
  %_10 = load float, ptr %base1, align 4
  %_9 = fadd float %_10, 1.000000e+00
  %_7 = fmul float %_8, %_9
  %_6 = fdiv float %_7, 2.000000e+00
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_6)
  ret i32 %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0b99f45fa6c1916718b21b27973b6ecc) #22
  unreachable
}
