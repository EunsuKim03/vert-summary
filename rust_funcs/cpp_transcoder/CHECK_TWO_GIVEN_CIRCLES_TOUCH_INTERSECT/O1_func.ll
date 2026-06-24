define noundef range(i32 -1, 2) i32 @f_gold(float noundef %x1, float noundef %y1, float noundef %x2, float noundef %y2, float noundef %r1, float noundef %r2) unnamed_addr #6 {
start:
  %_9 = fsub float %x1, %x2
  %_8 = fmul float %_9, %_9
  %_11 = fsub float %y1, %y2
  %_10 = fmul float %_11, %_11
  %dist_sq = fadd float %_8, %_10
  %_13 = fadd float %r1, %r2
  %rad_sum_sq = fmul float %_13, %_13
  %_14 = fcmp oeq float %dist_sq, %rad_sum_sq
  %_15 = fcmp ogt float %dist_sq, %rad_sum_sq
  %. = sext i1 %_15 to i32
  %_0.sroa.0.0 = select i1 %_14, i32 1, i32 %.
  ret i32 %_0.sroa.0.0
}
