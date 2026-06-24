define float @f_gold(float %x1, float %y1, float %x2, float %y2) unnamed_addr #3 {
start:
  %_5 = fsub float %y2, %y1
  %_6 = fsub float %x2, %x1
  %_0 = fdiv float %_5, %_6
  ret float %_0
}
