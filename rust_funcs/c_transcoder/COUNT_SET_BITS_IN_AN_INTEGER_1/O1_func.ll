define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb2, %start
  %accumulator.tr = phi i32 [ 0, %start ], [ %0, %bb2 ]
  %n.tr = phi i32 [ %n, %start ], [ %_5, %bb2 ]
  %_2 = icmp eq i32 %n.tr, 0
  br i1 %_2, label %bb4, label %bb2

bb2:                                              ; preds = %tailrecurse
  %_3 = and i32 %n.tr, 1
  %_5 = ashr i32 %n.tr, 1
  %0 = add i32 %accumulator.tr, %_3
  br label %tailrecurse

bb4:                                              ; preds = %tailrecurse
  %accumulator.ret.tr = add i32 %accumulator.tr, 0
  ret i32 %accumulator.ret.tr
}
