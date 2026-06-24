define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb4, %start
  %accumulator.tr = phi i32 [ 0, %start ], [ %0, %bb4 ]
  %m.tr = phi i32 [ %m, %start ], [ %_8, %bb4 ]
  %n.tr = phi i32 [ %n, %start ], [ %_9, %bb4 ]
  %_3 = icmp slt i32 %m.tr, %n.tr
  br i1 %_3, label %bb8, label %bb2

bb2:                                              ; preds = %tailrecurse
  %_4 = icmp eq i32 %n.tr, 0
  br i1 %_4, label %bb8, label %bb4

bb4:                                              ; preds = %bb2
  %_6 = add i32 %m.tr, -1
  %_5 = tail call noundef i32 @f_gold(i32 noundef %_6, i32 noundef %n.tr)
  %_8 = sdiv i32 %m.tr, 2
  %_9 = add i32 %n.tr, -1
  %0 = add i32 %accumulator.tr, %_5
  br label %tailrecurse

bb8:                                              ; preds = %bb2, %tailrecurse
  %_0.sroa.0.0 = phi i32 [ 0, %tailrecurse ], [ 1, %bb2 ]
  %accumulator.ret.tr = add i32 %accumulator.tr, %_0.sroa.0.0
  ret i32 %accumulator.ret.tr
}
