define noundef float @f_gold(float noundef %r1, float noundef %r2, float noundef %r3) unnamed_addr #4 {
start:
  %_5 = fmul float %r1, 0x4010B46DE0000000
  %_4 = fmul float %_5, %r2
  %_0 = fmul float %_4, %r3
  ret float %_0
}
