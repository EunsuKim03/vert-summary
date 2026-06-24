define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb2, %start
  %accumulator.tr = phi i32 [ 1, %start ], [ %0, %bb2 ]
  %n.tr = phi i32 [ %n, %start ], [ %_4, %bb2 ]
  %_2 = icmp eq i32 %n.tr, 0
  br i1 %_2, label %bb4, label %bb2

bb2:                                              ; preds = %tailrecurse
  %_4 = add i32 %n.tr, -1
  %0 = mul i32 %accumulator.tr, %n.tr
  br label %tailrecurse

bb4:                                              ; preds = %tailrecurse
  %accumulator.ret.tr = mul i32 %accumulator.tr, 1
  ret i32 %accumulator.ret.tr
}
