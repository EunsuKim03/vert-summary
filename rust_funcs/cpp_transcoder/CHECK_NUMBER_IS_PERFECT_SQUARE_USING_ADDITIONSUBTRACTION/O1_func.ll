define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %i.sroa.0.0 = phi i32 [ 1, %start ], [ %1, %bb2 ]
  %sum.sroa.0.0 = phi i32 [ 0, %start ], [ %0, %bb2 ]
  %_4 = icmp slt i32 %sum.sroa.0.0, %n
  br i1 %_4, label %bb2, label %bb6

bb2:                                              ; preds = %bb1
  %0 = add i32 %sum.sroa.0.0, %i.sroa.0.0
  %1 = add i32 %i.sroa.0.0, 2
  %_7 = icmp eq i32 %0, %n
  br i1 %_7, label %bb6, label %bb1

bb6:                                              ; preds = %bb2, %bb1
  %_0.sroa.0.0 = phi i32 [ 0, %bb1 ], [ 1, %bb2 ]
  ret i32 %_0.sroa.0.0
}
