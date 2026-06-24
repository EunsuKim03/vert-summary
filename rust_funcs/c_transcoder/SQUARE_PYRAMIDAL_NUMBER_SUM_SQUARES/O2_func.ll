define noundef i32 @f_gold(i32 noundef %s) unnamed_addr #4 {
start:
  %_36 = icmp sgt i32 %s, 0
  br i1 %_36, label %bb2, label %bb6

bb2:                                              ; preds = %start, %bb4
  %n.sroa.0.08 = phi i32 [ %1, %bb4 ], [ 1, %start ]
  %sum.sroa.0.07 = phi i32 [ %0, %bb4 ], [ 0, %start ]
  %_5 = mul i32 %n.sroa.0.08, %n.sroa.0.08
  %0 = add i32 %_5, %sum.sroa.0.07
  %_8 = icmp eq i32 %0, %s
  br i1 %_8, label %bb6, label %bb4

bb6:                                              ; preds = %bb4, %bb2, %start
  %n.sroa.0.1 = phi i32 [ -1, %start ], [ %n.sroa.0.08, %bb2 ], [ -1, %bb4 ]
  ret i32 %n.sroa.0.1

bb4:                                              ; preds = %bb2
  %1 = add i32 %n.sroa.0.08, 1
  %_3 = icmp slt i32 %0, %s
  br i1 %_3, label %bb2, label %bb6
}
