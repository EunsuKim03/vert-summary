define noundef i32 @f_gold(i32 noundef %N) unnamed_addr #12 {
start:
  %_7 = sitofp i32 %N to float
  %_6 = fadd float %_7, 1.000000e+00
  %_42 = fcmp ult float %_6, 2.000000e+00
  br i1 %_42, label %bb3, label %bb2

bb3:                                              ; preds = %bb2, %start
  %result.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %0, %bb2 ]
  %_8 = tail call i32 @llvm.fptosi.sat.i32.f32(float %result.sroa.0.0.lcssa)
  %_0 = add i32 %_8, -1
  ret i32 %_0

bb2:                                              ; preds = %start, %bb2
  %base.sroa.0.04 = phi float [ %1, %bb2 ], [ 2.000000e+00, %start ]
  %result.sroa.0.03 = phi float [ %0, %bb2 ], [ 0.000000e+00, %start ]
  %0 = fadd float %result.sroa.0.03, 1.000000e+00
  %1 = fmul float %base.sroa.0.04, 2.000000e+00
  %_4 = fcmp ugt float %1, %_6
  br i1 %_4, label %bb3, label %bb2
}
