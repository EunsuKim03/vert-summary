define noundef range(i32 2, 1) i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_34 = icmp sgt i32 %n, 0
  br i1 %_34, label %bb2.preheader, label %bb3

bb2.preheader:                                    ; preds = %start
  %0 = sitofp i32 %n to float
  br label %bb2

bb3:                                              ; preds = %bb2, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb2 ]
  %_8 = icmp eq i32 %sum.sroa.0.0.lcssa, 1
  %.sum.sroa.0.0 = select i1 %_8, i32 10, i32 %sum.sroa.0.0.lcssa
  ret i32 %.sum.sroa.0.0

bb2:                                              ; preds = %bb2.preheader, %bb2
  %sum.sroa.0.06 = phi i32 [ %1, %bb2 ], [ 0, %bb2.preheader ]
  %n1.sroa.0.05 = phi float [ %2, %bb2 ], [ %0, %bb2.preheader ]
  %_6 = frem float %n1.sroa.0.05, 1.000000e+01
  %_5 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_6)
  %1 = add i32 %_5, %sum.sroa.0.06
  %2 = fdiv float %n1.sroa.0.05, 1.000000e+01
  %_3 = fcmp ogt float %2, 0.000000e+00
  br i1 %_3, label %bb2, label %bb3
}
