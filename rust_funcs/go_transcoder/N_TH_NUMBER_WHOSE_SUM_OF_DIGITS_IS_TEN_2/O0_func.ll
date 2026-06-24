define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %nth_element = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_4 = sitofp i32 %_6.0 to float
  %_3 = fmul float %_4, 9.000000e+00
  %1 = fadd float 1.900000e+01, %_3
  store float %1, ptr %nth_element, align 4
  %_10 = load float, ptr %nth_element, align 4
; call std::f32::<impl f32>::log10
  %_9 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5log1017h7119372d99bcf49dE"(float %_10) #20
  %_8 = fsub float %_9, 1.000000e+00
  %outliers_count = call i32 @llvm.fptosi.sat.i32.f32(float %_8)
  %_12 = sitofp i32 %outliers_count to float
  %_11 = fmul float 9.000000e+00, %_12
  %2 = load float, ptr %nth_element, align 4
  %3 = fadd float %2, %_11
  store float %3, ptr %nth_element, align 4
  %_13 = load float, ptr %nth_element, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_13)
  ret i32 %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7ca5361fcf7a2ecae7023fd58c586932) #22
  unreachable
}
