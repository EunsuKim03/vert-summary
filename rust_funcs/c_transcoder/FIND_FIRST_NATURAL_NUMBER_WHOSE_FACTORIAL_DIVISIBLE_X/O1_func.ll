define noundef i32 @f_gold(i32 noundef %x) unnamed_addr #12 {
start:
  %_8 = sitofp i32 %x to float
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  %fact.sroa.0.0 = phi float [ 1.000000e+00, %start ], [ %0, %bb1 ]
  %i.sroa.0.0 = phi i32 [ 1, %start ], [ %1, %bb1 ]
  %_3 = sitofp i32 %i.sroa.0.0 to float
  %0 = fmul float %fact.sroa.0.0, %_3
  %_6 = frem float %0, %_8
  %_5 = fcmp oeq float %_6, 0.000000e+00
  %1 = add i32 %i.sroa.0.0, 1
  br i1 %_5, label %bb2, label %bb1

bb2:                                              ; preds = %bb1
  ret i32 %i.sroa.0.0
}
