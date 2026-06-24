define i32 @f_gold(i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %r1, i32 %r2) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %x11 = sitofp i32 %x1 to float
  %y12 = sitofp i32 %y1 to float
  %x23 = sitofp i32 %x2 to float
  %y24 = sitofp i32 %y2 to float
  %r15 = sitofp i32 %r1 to float
  %r26 = sitofp i32 %r2 to float
  %_15 = fsub float %x11, %x23
  %_16 = fsub float %x11, %x23
  %_14 = fmul float %_15, %_16
  %_18 = fsub float %y12, %y24
  %_19 = fsub float %y12, %y24
  %_17 = fmul float %_18, %_19
  %dist_sq = fadd float %_14, %_17
  %_21 = fadd float %r15, %r26
  %_22 = fadd float %r15, %r26
  %rad_sum_sq = fmul float %_21, %_22
  %_23 = fcmp oeq float %dist_sq, %rad_sum_sq
  br i1 %_23, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_24 = fcmp ogt float %dist_sq, %rad_sum_sq
  br i1 %_24, label %bb3, label %bb4

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
