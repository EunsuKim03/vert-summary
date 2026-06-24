define noundef float @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_3 = sitofp i32 %n to float
  %_2 = fmul float %_3, 3.000000e+00
  %_6 = fmul float %_3, %_3
  %_5 = fmul float %_6, 4.000000e+00
  %_4 = fadd float %_5, -1.000000e+00
  %_0 = fdiv float %_2, %_4
  ret float %_0
}
