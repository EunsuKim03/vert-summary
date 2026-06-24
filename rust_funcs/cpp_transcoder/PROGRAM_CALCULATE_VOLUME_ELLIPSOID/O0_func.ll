define float @f_gold(float %r1, float %r2, float %r3) unnamed_addr #3 {
start:
  %_5 = fmul float 0x4010B46DE0000000, %r1
  %_4 = fmul float %_5, %r2
  %_0 = fmul float %_4, %r3
  ret float %_0
}
