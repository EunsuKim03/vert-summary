define noundef float @f_gold(float noundef %a, float noundef %b) unnamed_addr #6 {
start:
  %_3 = fmul float %a, 2.000000e+00
  %_4 = fmul float %b, 2.000000e+00
  %_0 = fadd float %_3, %_4
  ret float %_0
}
