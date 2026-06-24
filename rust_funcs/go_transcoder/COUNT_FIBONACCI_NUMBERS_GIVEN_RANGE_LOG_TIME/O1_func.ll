define noundef i32 @f_gold(i32 noundef %low, i32 noundef %high) unnamed_addr #12 {
start:
  %_8 = sitofp i32 %high to float
  %_62 = icmp slt i32 %high, 0
  br i1 %_62, label %bb6, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %_10 = sitofp i32 %low to float
  br label %bb2

bb6:                                              ; preds = %bb2, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1, %bb2 ]
  ret i32 %result.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2.lr.ph, %bb2
  %result.sroa.0.06 = phi i32 [ 0, %bb2.lr.ph ], [ %result.sroa.0.1, %bb2 ]
  %f1.sroa.0.05 = phi float [ 0.000000e+00, %bb2.lr.ph ], [ %f2.sroa.0.04, %bb2 ]
  %f2.sroa.0.04 = phi float [ 1.000000e+00, %bb2.lr.ph ], [ %f3.sroa.0.03, %bb2 ]
  %f3.sroa.0.03 = phi float [ 1.000000e+00, %bb2.lr.ph ], [ %1, %bb2 ]
  %_9 = fcmp oge float %f1.sroa.0.05, %_10
  %0 = zext i1 %_9 to i32
  %result.sroa.0.1 = add i32 %result.sroa.0.06, %0
  %1 = fadd float %f3.sroa.0.03, %f2.sroa.0.04
  %_6 = fcmp ugt float %f2.sroa.0.04, %_8
  br i1 %_6, label %bb6, label %bb2
}
