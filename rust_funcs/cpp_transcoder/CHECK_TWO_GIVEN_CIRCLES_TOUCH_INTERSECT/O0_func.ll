define i32 @f_gold(float %x1, float %y1, float %x2, float %y2, float %r1, float %r2) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_9 = fsub float %x1, %x2
  %_10 = fsub float %x1, %x2
  %_8 = fmul float %_9, %_10
  %_12 = fsub float %y1, %y2
  %_13 = fsub float %y1, %y2
  %_11 = fmul float %_12, %_13
  %dist_sq = fadd float %_8, %_11
  %_15 = fadd float %r1, %r2
  %_16 = fadd float %r1, %r2
  %rad_sum_sq = fmul float %_15, %_16
  %_17 = fcmp oeq float %dist_sq, %rad_sum_sq
  br i1 %_17, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_18 = fcmp ogt float %dist_sq, %rad_sum_sq
  br i1 %_18, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb5

bb4:                                              ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  store i32 -1, ptr %_0, align 4
  br label %bb5

bb5:                                              ; preds = %bb1, %bb3, %bb4
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}
