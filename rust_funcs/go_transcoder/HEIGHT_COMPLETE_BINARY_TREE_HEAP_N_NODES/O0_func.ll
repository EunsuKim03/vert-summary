define i32 @f_gold(i32 %N) unnamed_addr #3 {
start:
  %result = alloca [4 x i8], align 4
  %base = alloca [4 x i8], align 4
  store float 2.000000e+00, ptr %base, align 4
  store float 0.000000e+00, ptr %result, align 4
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %_5 = load float, ptr %base, align 4
  %_7 = sitofp i32 %N to float
  %_6 = fadd float %_7, 1.000000e+00
  %_4 = fcmp ole float %_5, %_6
  br i1 %_4, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_9 = load float, ptr %result, align 4
  %_8 = call i32 @llvm.fptosi.sat.i32.f32(float %_9)
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_8, i32 1)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_10.1, label %panic, label %bb4

bb2:                                              ; preds = %bb1
  %1 = load float, ptr %result, align 4
  %2 = fadd float %1, 1.000000e+00
  store float %2, ptr %result, align 4
  %3 = load float, ptr %base, align 4
  %4 = fmul float %3, 2.000000e+00
  store float %4, ptr %base, align 4
  br label %bb1

bb4:                                              ; preds = %bb3
  ret i32 %_10.0

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e51ca733af32d24f829f5dc78d710d59) #22
  unreachable
}
