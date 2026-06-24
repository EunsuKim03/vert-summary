define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  %count.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select, %bb5 ]
  %curr.sroa.0.0 = phi i32 [ 19, %start ], [ %3, %bb5 ]
  %_65 = icmp sgt i32 %curr.sroa.0.0, 0
  br i1 %_65, label %bb3.preheader, label %bb5

bb3.preheader:                                    ; preds = %bb1
  %0 = sitofp i32 %curr.sroa.0.0 to float
  br label %bb3

bb5.loopexit:                                     ; preds = %bb3
  %1 = icmp eq i32 %4, 10
  %2 = zext i1 %1 to i32
  br label %bb5

bb5:                                              ; preds = %bb5.loopexit, %bb1
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb1 ], [ %2, %bb5.loopexit ]
  %spec.select = add i32 %count.sroa.0.0, %sum.sroa.0.0.lcssa
  %_12 = icmp eq i32 %spec.select, %n
  %3 = add i32 %curr.sroa.0.0, 9
  br i1 %_12, label %bb9, label %bb1

bb3:                                              ; preds = %bb3.preheader, %bb3
  %sum.sroa.0.07 = phi i32 [ %4, %bb3 ], [ 0, %bb3.preheader ]
  %x.sroa.0.06 = phi float [ %5, %bb3 ], [ %0, %bb3.preheader ]
  %r.i = frem float %x.sroa.0.06, 1.000000e+01
  %_8 = tail call i32 @llvm.fptosi.sat.i32.f32(float %r.i)
  %4 = add i32 %_8, %sum.sroa.0.07
  %5 = fdiv float %x.sroa.0.06, 1.000000e+01
  %_6 = fcmp ogt float %5, 0.000000e+00
  br i1 %_6, label %bb3, label %bb5.loopexit

bb9:                                              ; preds = %bb5
  ret i32 %curr.sroa.0.0
}
