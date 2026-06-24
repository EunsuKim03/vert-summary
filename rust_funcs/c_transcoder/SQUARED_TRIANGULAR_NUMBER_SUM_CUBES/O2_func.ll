define noundef i32 @f_gold(i32 noundef %s) unnamed_addr #4 {
start:
  %_87 = icmp eq i32 %s, 1
  br i1 %_87, label %bb6, label %bb3

bb3:                                              ; preds = %start, %bb5
  %0 = phi i32 [ %2, %bb5 ], [ 1, %start ]
  %n.sroa.0.08 = phi i32 [ %1, %bb5 ], [ 1, %start ]
  %_10 = icmp sgt i32 %0, %s
  br i1 %_10, label %bb6, label %bb5

bb5:                                              ; preds = %bb3
  %1 = add i32 %n.sroa.0.08, 1
  %_4 = mul i32 %1, %1
  %_3 = mul i32 %_4, %1
  %2 = add i32 %_3, %0
  %_8 = icmp eq i32 %2, %s
  br i1 %_8, label %bb6, label %bb3

bb6:                                              ; preds = %bb5, %bb3, %start
  %n.sroa.0.1 = phi i32 [ 1, %start ], [ -1, %bb3 ], [ %1, %bb5 ]
  ret i32 %n.sroa.0.1
}
