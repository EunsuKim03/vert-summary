define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #4 {
start:
  %_31 = icmp slt i32 %m, %n
  br i1 %_31, label %bb8, label %bb2

bb2:                                              ; preds = %start, %bb4
  %n.tr4 = phi i32 [ %_9, %bb4 ], [ %n, %start ]
  %m.tr3 = phi i32 [ %_8, %bb4 ], [ %m, %start ]
  %accumulator.tr2 = phi i32 [ %0, %bb4 ], [ 0, %start ]
  %_4 = icmp eq i32 %n.tr4, 0
  br i1 %_4, label %bb8.loopexit, label %bb4

bb4:                                              ; preds = %bb2
  %_6 = add i32 %m.tr3, -1
  %_5 = tail call noundef i32 @f_gold(i32 noundef %_6, i32 noundef %n.tr4)
  %_8 = sdiv i32 %m.tr3, 2
  %_9 = add i32 %n.tr4, -1
  %0 = add i32 %_5, %accumulator.tr2
  %_3 = icmp slt i32 %_8, %_9
  br i1 %_3, label %bb8.loopexit, label %bb2

bb8.loopexit:                                     ; preds = %bb2, %bb4
  %accumulator.tr.lcssa.ph = phi i32 [ %0, %bb4 ], [ %accumulator.tr2, %bb2 ]
  %_0.sroa.0.0.ph = phi i32 [ 0, %bb4 ], [ 1, %bb2 ]
  %1 = add i32 %_0.sroa.0.0.ph, %accumulator.tr.lcssa.ph
  br label %bb8

bb8:                                              ; preds = %bb8.loopexit, %start
  %accumulator.ret.tr = phi i32 [ 0, %start ], [ %1, %bb8.loopexit ]
  ret i32 %accumulator.ret.tr
}
