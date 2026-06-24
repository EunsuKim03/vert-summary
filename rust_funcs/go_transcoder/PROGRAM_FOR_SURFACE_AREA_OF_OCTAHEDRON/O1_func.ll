define noundef float @f_gold(float noundef %side) unnamed_addr #6 {
start:
  %_4 = fmul float %side, %side
  %_0 = fmul float %_4, 0x400BB67AE0000000
  ret float %_0
}
