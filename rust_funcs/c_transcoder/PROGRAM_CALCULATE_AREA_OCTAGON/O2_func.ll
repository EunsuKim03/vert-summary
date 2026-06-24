define noundef float @f_gold(float noundef %side) unnamed_addr #4 {
start:
  %_3 = fmul float %side, 0x4013504F40000000
  %area = fmul float %side, %_3
  ret float %area
}
