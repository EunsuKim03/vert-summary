define noundef float @f_gold(float noundef %l, float noundef %b, float noundef %h) unnamed_addr #6 {
start:
  %_5 = fmul float %l, %b
  %_4 = fmul float %_5, %h
  %volume = fmul float %_4, 5.000000e-01
  ret float %volume
}
