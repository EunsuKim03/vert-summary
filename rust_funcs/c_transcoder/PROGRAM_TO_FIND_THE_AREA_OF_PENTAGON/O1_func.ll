define noundef float @f_gold(float noundef %a) unnamed_addr #6 {
start:
  %_3 = fmul float %a, 0x401B871340000000
  %_2 = fmul float %a, %_3
  %area = fmul float %_2, 2.500000e-01
  ret float %area
}
