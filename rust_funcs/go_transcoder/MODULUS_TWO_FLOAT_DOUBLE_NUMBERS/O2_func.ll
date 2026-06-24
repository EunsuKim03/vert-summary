define noundef float @f_gold(float noundef %a, float noundef %0) unnamed_addr #4 {
start:
  %_4 = fcmp olt float %a, 0.000000e+00
  %1 = fneg float %a
  %mod_a.sroa.0.0 = select i1 %_4, float %1, float %a
  %_5 = fcmp olt float %0, 0.000000e+00
  %2 = fneg float %0
  %b.sroa.0.0 = select i1 %_5, float %2, float %0
  %_83 = fcmp ult float %mod_a.sroa.0.0, %b.sroa.0.0
  br i1 %_83, label %bb9, label %bb8

bb9:                                              ; preds = %bb8, %start
  %mod_a.sroa.0.1.lcssa = phi float [ %mod_a.sroa.0.0, %start ], [ %4, %bb8 ]
  %3 = fneg float %mod_a.sroa.0.1.lcssa
  %_0.sroa.0.0 = select i1 %_4, float %3, float %mod_a.sroa.0.1.lcssa
  ret float %_0.sroa.0.0

bb8:                                              ; preds = %start, %bb8
  %mod_a.sroa.0.14 = phi float [ %4, %bb8 ], [ %mod_a.sroa.0.0, %start ]
  %4 = fsub float %mod_a.sroa.0.14, %b.sroa.0.0
  %_8 = fcmp ult float %4, %b.sroa.0.0
  br i1 %_8, label %bb9, label %bb8
}
