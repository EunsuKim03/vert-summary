define noundef float @f_gold(float noundef %a, float noundef %b) unnamed_addr #6 {
start:
  %0 = fmul float %a, 2.000000e+00
  %_3 = fmul float %b, 2.000000e+00
  %1 = fadd float %0, %_3
  ret float %1
}
