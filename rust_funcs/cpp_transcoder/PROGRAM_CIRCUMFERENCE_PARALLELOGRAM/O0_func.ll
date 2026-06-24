define float @f_gold(float %a, float %b) unnamed_addr #3 {
start:
  %_3 = fmul float 2.000000e+00, %a
  %_4 = fmul float 2.000000e+00, %b
  %_0 = fadd float %_3, %_4
  ret float %_0
}
