define float @f_gold(i32 %a) unnamed_addr #3 {
start:
  %area = alloca [4 x i8], align 4
  %_4 = sitofp i32 %a to float
  %_3 = fmul float 0x400921FB60000000, %_4
  %_5 = sitofp i32 %a to float
  %0 = fmul float %_3, %_5
  store float %0, ptr %area, align 4
  %1 = load float, ptr %area, align 4
  %2 = fdiv float %1, 4.000000e+00
  store float %2, ptr %area, align 4
  %_0 = load float, ptr %area, align 4
  ret float %_0
}
