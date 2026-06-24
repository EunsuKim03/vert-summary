define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  %_2.not4 = icmp eq i32 %0, 0
  br i1 %_2.not4, label %bb3, label %bb2

bb3:                                              ; preds = %bb2, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb2 ]
  ret i32 %count.sroa.0.0.lcssa

bb2:                                              ; preds = %start, %bb2
  %n.sroa.0.06 = phi i32 [ %2, %bb2 ], [ %0, %start ]
  %count.sroa.0.05 = phi i32 [ %1, %bb2 ], [ 0, %start ]
  %_4 = and i32 %n.sroa.0.06, 1
  %1 = add i32 %_4, %count.sroa.0.05
  %2 = lshr i32 %n.sroa.0.06, 1
  %_2.not = icmp ult i32 %n.sroa.0.06, 2
  br i1 %_2.not, label %bb3, label %bb2
}
