define float @f_gold(float %a, float %b) unnamed_addr #3 {
start:
  %sum = alloca [4 x i8], align 4
  %0 = fmul float 2.000000e+00, %a
  store float %0, ptr %sum, align 4
  %_4 = fmul float 2.000000e+00, %b
  %1 = load float, ptr %sum, align 4
  %2 = fadd float %1, %_4
  store float %2, ptr %sum, align 4
  %_0 = load float, ptr %sum, align 4
  ret float %_0
}
