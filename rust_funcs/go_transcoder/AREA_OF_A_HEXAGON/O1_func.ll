define noundef float @f_gold(float noundef %s) unnamed_addr #6 {
start:
  %_3 = fmul float %s, 0x4014C8DC20000000
  %_2 = fmul float %s, %_3
  %_0 = fmul float %_2, 5.000000e-01
  ret float %_0
}
