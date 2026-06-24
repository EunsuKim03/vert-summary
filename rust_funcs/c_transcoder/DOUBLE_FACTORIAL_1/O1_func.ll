define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %0 = uitofp i32 %n to float
  br label %bb2

bb2:                                              ; preds = %start, %bb7
  %res.sroa.0.03 = phi i32 [ 1, %start ], [ %1, %bb7 ]
  %i.sroa.0.02 = phi float [ %0, %start ], [ %2, %bb7 ]
  %_5 = fcmp oeq float %i.sroa.0.02, 0.000000e+00
  %_7 = fcmp oeq float %i.sroa.0.02, 1.000000e+00
  %or.cond = or i1 %_5, %_7
  br i1 %or.cond, label %bb9, label %bb7

bb9:                                              ; preds = %bb2, %bb7
  %res.sroa.0.0.lcssa = phi i32 [ %res.sroa.0.03, %bb2 ], [ %1, %bb7 ]
  ret i32 %res.sroa.0.0.lcssa

bb7:                                              ; preds = %bb2
  %_9 = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.sroa.0.02)
  %1 = mul i32 %res.sroa.0.03, %_9
  %2 = fadd float %i.sroa.0.02, -2.000000e+00
  %_3 = fcmp ult float %2, 0.000000e+00
  br i1 %_3, label %bb9, label %bb2
}
