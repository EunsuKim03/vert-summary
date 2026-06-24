define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_21 = icmp eq i32 %n, 0
  br i1 %_21, label %bb4, label %bb2

bb2:                                              ; preds = %start, %bb2
  %n.tr3 = phi i32 [ %_4, %bb2 ], [ %n, %start ]
  %accumulator.tr2 = phi i32 [ %0, %bb2 ], [ 0, %start ]
  %_5 = add i32 %n.tr3, -1
  %_4 = and i32 %_5, %n.tr3
  %0 = add i32 %accumulator.tr2, 1
  %_2 = icmp eq i32 %_4, 0
  br i1 %_2, label %bb4, label %bb2

bb4:                                              ; preds = %bb2, %start
  %accumulator.tr.lcssa = phi i32 [ 0, %start ], [ %0, %bb2 ]
  ret i32 %accumulator.tr.lcssa
}
