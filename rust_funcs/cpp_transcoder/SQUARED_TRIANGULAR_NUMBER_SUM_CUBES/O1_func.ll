define noundef i32 @f_gold(i32 noundef %s) unnamed_addr #12 {
start:
  %_37 = icmp sgt i32 %s, 0
  br i1 %_37, label %bb2, label %bb6

bb2:                                              ; preds = %start, %bb4
  %n.sroa.0.09 = phi i32 [ %1, %bb4 ], [ 1, %start ]
  %sum.sroa.0.08 = phi i32 [ %0, %bb4 ], [ 0, %start ]
  %_6 = mul i32 %n.sroa.0.09, %n.sroa.0.09
  %_5 = mul i32 %_6, %n.sroa.0.09
  %0 = add i32 %_5, %sum.sroa.0.08
  %_10 = icmp eq i32 %0, %s
  br i1 %_10, label %bb6, label %bb4

bb6:                                              ; preds = %bb4, %bb2, %start
  %n.sroa.0.1 = phi i32 [ -1, %start ], [ -1, %bb4 ], [ %n.sroa.0.09, %bb2 ]
  ret i32 %n.sroa.0.1

bb4:                                              ; preds = %bb2
  %1 = add i32 %n.sroa.0.09, 1
  %_3 = icmp slt i32 %0, %s
  br i1 %_3, label %bb2, label %bb6
}
