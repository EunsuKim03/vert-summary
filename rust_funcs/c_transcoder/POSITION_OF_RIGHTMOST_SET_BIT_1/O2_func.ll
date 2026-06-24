define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_43 = and i32 %n, 1
  %_34 = icmp eq i32 %_43, 0
  br i1 %_34, label %bb2, label %bb3

bb3:                                              ; preds = %bb2, %start
  %position.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %1, %bb2 ]
  ret i32 %position.sroa.0.0.lcssa

bb2:                                              ; preds = %start, %bb2
  %position.sroa.0.06 = phi i32 [ %1, %bb2 ], [ 1, %start ]
  %m.sroa.0.05 = phi i32 [ %0, %bb2 ], [ 1, %start ]
  %0 = shl i32 %m.sroa.0.05, 1
  %1 = add i32 %position.sroa.0.06, 1
  %_4 = and i32 %0, %n
  %_3 = icmp eq i32 %_4, 0
  br i1 %_3, label %bb2, label %bb3
}
