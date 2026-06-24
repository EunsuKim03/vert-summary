define noundef i32 @f_gold(i32 noundef %limit) unnamed_addr #12 {
start:
  %_2 = icmp slt i32 %limit, 2
  br i1 %_2, label %bb9, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %_10 = uitofp nneg i32 %limit to float
  br label %bb4

bb4:                                              ; preds = %bb3.preheader, %bb6
  %ef1.sroa.0.05 = phi float [ %ef2.sroa.0.04, %bb6 ], [ 0.000000e+00, %bb3.preheader ]
  %ef2.sroa.0.04 = phi float [ %ef3, %bb6 ], [ 2.000000e+00, %bb3.preheader ]
  %sum.sroa.0.03 = phi float [ %1, %bb6 ], [ 2.000000e+00, %bb3.preheader ]
  %_12 = fmul float %ef2.sroa.0.04, 4.000000e+00
  %ef3 = fadd float %_12, %ef1.sroa.0.05
  %_14 = fcmp ogt float %ef3, %_10
  br i1 %_14, label %bb8, label %bb6

bb8:                                              ; preds = %bb6, %bb4
  %sum.sroa.0.0.lcssa.ph = phi float [ %1, %bb6 ], [ %sum.sroa.0.03, %bb4 ]
  %0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %sum.sroa.0.0.lcssa.ph)
  br label %bb9

bb6:                                              ; preds = %bb4
  %1 = fadd float %sum.sroa.0.03, %ef3
  %_8 = fcmp ugt float %ef3, %_10
  br i1 %_8, label %bb8, label %bb4

bb9:                                              ; preds = %start, %bb8
  %_0.sroa.0.0 = phi i32 [ %0, %bb8 ], [ 0, %start ]
  ret i32 %_0.sroa.0.0
}
