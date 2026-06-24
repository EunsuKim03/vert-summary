define noundef range(i32 2, 1) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_34 = icmp sgt i32 %n, 0
  br i1 %_34, label %bb2.preheader, label %bb3.thread

bb2.preheader:                                    ; preds = %start
  %0 = uitofp i32 %n to float
  br label %bb2

bb3:                                              ; preds = %bb2
  %_8 = icmp eq i32 %2, 1
  %spec.select = select i1 %_8, i32 10, i32 %2
  br label %bb3.thread

bb3.thread:                                       ; preds = %bb3, %start
  %1 = phi i32 [ 0, %start ], [ %spec.select, %bb3 ]
  ret i32 %1

bb2:                                              ; preds = %bb2.preheader, %bb2
  %sum.sroa.0.06 = phi i32 [ %2, %bb2 ], [ 0, %bb2.preheader ]
  %n1.sroa.0.05 = phi float [ %3, %bb2 ], [ %0, %bb2.preheader ]
  %_6 = frem float %n1.sroa.0.05, 1.000000e+01
  %_5 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_6)
  %2 = add i32 %_5, %sum.sroa.0.06
  %3 = fdiv float %n1.sroa.0.05, 1.000000e+01
  %_3 = fcmp ogt float %3, 0.000000e+00
  br i1 %_3, label %bb2, label %bb3
}
