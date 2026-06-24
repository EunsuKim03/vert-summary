define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_2 = icmp slt i32 %n, 2
  br i1 %_2, label %bb6, label %bb4

bb4:                                              ; preds = %start, %bb4
  %res.sroa.0.06 = phi i32 [ %1, %bb4 ], [ 1, %start ]
  %a.sroa.0.05 = phi i32 [ %c.sroa.0.04, %bb4 ], [ 0, %start ]
  %c.sroa.0.04 = phi i32 [ %0, %bb4 ], [ 1, %start ]
  %0 = add i32 %a.sroa.0.05, %c.sroa.0.04
  %1 = add i32 %res.sroa.0.06, 1
  %_5 = icmp slt i32 %0, %n
  br i1 %_5, label %bb4, label %bb6

bb6:                                              ; preds = %bb4, %start
  %res.sroa.0.1 = phi i32 [ %n, %start ], [ %1, %bb4 ]
  ret i32 %res.sroa.0.1
}
