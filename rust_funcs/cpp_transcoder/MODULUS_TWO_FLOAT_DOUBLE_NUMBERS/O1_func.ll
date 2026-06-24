define noundef float @f_gold(float noundef %a, float noundef %b) unnamed_addr #12 {
start:
  %0 = tail call noundef float @llvm.fabs.f32(float %a)
  %1 = tail call noundef float @llvm.fabs.f32(float %b)
  %_54 = fcmp ult float %0, %1
  br i1 %_54, label %bb4, label %bb3

bb4:                                              ; preds = %bb3, %start
  %mod_a.sroa.0.0.lcssa = phi float [ %0, %start ], [ %3, %bb3 ]
  %_7 = fcmp olt float %a, 0.000000e+00
  %2 = fneg float %mod_a.sroa.0.0.lcssa
  %_0.sroa.0.0 = select i1 %_7, float %2, float %mod_a.sroa.0.0.lcssa
  ret float %_0.sroa.0.0

bb3:                                              ; preds = %start, %bb3
  %mod_a.sroa.0.05 = phi float [ %3, %bb3 ], [ %0, %start ]
  %3 = fsub float %mod_a.sroa.0.05, %1
  %_5 = fcmp ult float %3, %1
  br i1 %_5, label %bb4, label %bb3
}
