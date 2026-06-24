define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %count.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select, %bb4 ]
  %curr.sroa.0.0 = phi i32 [ 19, %start ], [ %3, %bb4 ]
  %_65 = icmp sgt i32 %curr.sroa.0.0, 0
  br i1 %_65, label %bb11.preheader, label %bb4

bb11.preheader:                                   ; preds = %bb1
  %0 = uitofp nneg i32 %curr.sroa.0.0 to float
  br label %bb11

bb4.loopexit:                                     ; preds = %bb11
  %1 = icmp eq i32 %4, 10
  %2 = zext i1 %1 to i32
  br label %bb4

bb4:                                              ; preds = %bb4.loopexit, %bb1
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb1 ], [ %2, %bb4.loopexit ]
  %spec.select = add i32 %count.sroa.0.0, %sum.sroa.0.0.lcssa
  %_12 = icmp eq i32 %spec.select, %n
  %3 = add i32 %curr.sroa.0.0, 9
  br i1 %_12, label %bb8, label %bb1

bb8:                                              ; preds = %bb4
  ret i32 %curr.sroa.0.0

bb11:                                             ; preds = %bb11.preheader, %bb11
  %sum.sroa.0.07 = phi i32 [ %4, %bb11 ], [ 0, %bb11.preheader ]
  %x.sroa.0.06 = phi float [ %5, %bb11 ], [ %0, %bb11.preheader ]
  %_14 = frem float %x.sroa.0.06, 1.000000e+01
  %_8 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_14)
  %4 = add i32 %_8, %sum.sroa.0.07
  %5 = fdiv float %x.sroa.0.06, 1.000000e+01
  %_6 = fcmp ogt float %5, 0.000000e+00
  br i1 %_6, label %bb11, label %bb4.loopexit
}
