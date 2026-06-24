define noundef i32 @f_gold(i32 noundef %low, i32 noundef %high) unnamed_addr #4 {
start:
  %_6.not5 = icmp slt i32 %high, 0
  br i1 %_6.not5, label %bb6, label %bb2

bb6:                                              ; preds = %bb2, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %spec.select, %bb2 ]
  ret i32 %result.sroa.0.0.lcssa

bb2:                                              ; preds = %start, %bb2
  %result.sroa.0.09 = phi i32 [ %spec.select, %bb2 ], [ 0, %start ]
  %f1.sroa.0.08 = phi i32 [ %f2.sroa.0.07, %bb2 ], [ 0, %start ]
  %f2.sroa.0.07 = phi i32 [ %f3.sroa.0.06, %bb2 ], [ 1, %start ]
  %f3.sroa.0.06 = phi i32 [ %1, %bb2 ], [ 1, %start ]
  %_8.not = icmp sge i32 %f1.sroa.0.08, %low
  %0 = zext i1 %_8.not to i32
  %spec.select = add i32 %result.sroa.0.09, %0
  %1 = add i32 %f2.sroa.0.07, %f3.sroa.0.06
  %_6.not = icmp sgt i32 %f2.sroa.0.07, %high
  br i1 %_6.not, label %bb6, label %bb2
}
