define noundef float @f_gold(float noundef %x1, float noundef %y1, float noundef %x2, float noundef %y2) unnamed_addr #6 {
start:
  %_5 = fsub float %y2, %y1
  %_6 = fsub float %x2, %x1
  %_0 = fdiv float %_5, %_6
  ret float %_0
}
