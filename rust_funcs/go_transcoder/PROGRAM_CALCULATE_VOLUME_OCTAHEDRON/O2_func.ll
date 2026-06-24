define noundef float @f_gold(float noundef %side) unnamed_addr #4 {
start:
  %_3 = fmul float %side, %side
  %side3 = fmul float %side, %_3
  %_0 = fmul float %side3, 0x3FDE2B7DE0000000
  ret float %_0
}
