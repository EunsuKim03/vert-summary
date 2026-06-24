define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %result = alloca [4 x i8], align 4
  %0 = sitofp i32 %n to float
  store float %0, ptr %result, align 4
  %_5 = sitofp i32 %n to float
  %_4 = fmul float 2.000000e+00, %_5
  %_3 = fsub float %_4, 1.000000e+00
  %1 = load float, ptr %result, align 4
  %2 = fmul float %1, %_3
  store float %2, ptr %result, align 4
  %_8 = sitofp i32 %n to float
  %_7 = fmul float 2.000000e+00, %_8
  %_6 = fadd float %_7, 1.000000e+00
  %3 = load float, ptr %result, align 4
  %4 = fmul float %3, %_6
  store float %4, ptr %result, align 4
  %5 = load float, ptr %result, align 4
  %6 = fdiv float %5, 3.000000e+00
  store float %6, ptr %result, align 4
  %_9 = load float, ptr %result, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_9)
  ret i32 %_0
}
