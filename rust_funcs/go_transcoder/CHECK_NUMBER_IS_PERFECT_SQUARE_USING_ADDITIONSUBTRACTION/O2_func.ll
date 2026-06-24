define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_44 = icmp sgt i32 %n, 0
  br i1 %_44, label %bb2, label %bb6

bb1:                                              ; preds = %bb2
  %0 = add i32 %i.sroa.0.05, 2
  %_4 = icmp slt i32 %1, %n
  br i1 %_4, label %bb2, label %bb6

bb2:                                              ; preds = %start, %bb1
  %sum.sroa.0.06 = phi i32 [ %1, %bb1 ], [ 0, %start ]
  %i.sroa.0.05 = phi i32 [ %0, %bb1 ], [ 1, %start ]
  %1 = add i32 %sum.sroa.0.06, %i.sroa.0.05
  %_7 = icmp eq i32 %1, %n
  br i1 %_7, label %bb6, label %bb1

bb6:                                              ; preds = %bb1, %bb2, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 1, %bb2 ], [ 0, %bb1 ]
  ret i32 %_0.sroa.0.0
}
