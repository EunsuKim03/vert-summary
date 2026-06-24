define noundef range(i32 0, 2) i32 @f_gold(float noundef %a, float noundef %b, float noundef %c, float noundef %d) unnamed_addr #6 {
start:
  %_7 = fmul float %a, %a
  %_8 = fmul float %b, %b
  %_6 = fadd float %_7, %_8
  %_9 = fmul float %c, %c
  %sum = fadd float %_6, %_9
  %_11 = fmul float %d, %d
  %_10 = fcmp oeq float %_11, %sum
  %. = zext i1 %_10 to i32
  ret i32 %.
}
