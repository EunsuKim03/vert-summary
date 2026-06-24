define float @f_gold(float %l, float %b, float %h) unnamed_addr #3 {
start:
  %_5 = fmul float %l, %b
  %_4 = fmul float %_5, %h
  %volume = fdiv float %_4, 2.000000e+00
  ret float %volume
}
