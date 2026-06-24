define noundef range(i32 -1, 2) i32 @f_gold(i32 noundef %x1, i32 noundef %y1, i32 noundef %x2, i32 noundef %y2, i32 noundef %r1, i32 noundef %r2) unnamed_addr #6 {
start:
  %x11 = sitofp i32 %x1 to float
  %y12 = sitofp i32 %y1 to float
  %x23 = sitofp i32 %x2 to float
  %y24 = sitofp i32 %y2 to float
  %r15 = sitofp i32 %r1 to float
  %r26 = sitofp i32 %r2 to float
  %_15 = fsub float %x11, %x23
  %_14 = fmul float %_15, %_15
  %_17 = fsub float %y12, %y24
  %_16 = fmul float %_17, %_17
  %dist_sq = fadd float %_14, %_16
  %_19 = fadd float %r15, %r26
  %rad_sum_sq = fmul float %_19, %_19
  %_20 = fcmp oeq float %dist_sq, %rad_sum_sq
  %_21 = fcmp ogt float %dist_sq, %rad_sum_sq
  %. = sext i1 %_21 to i32
  %_0.sroa.0.0 = select i1 %_20, i32 1, i32 %.
  ret i32 %_0.sroa.0.0
}
