define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb3, %start
  %accumulator.tr = phi i32 [ 1, %start ], [ %0, %bb3 ]
  %n.tr = phi i32 [ %n, %start ], [ %_5, %bb3 ]
  %switch = icmp ult i32 %n.tr, 2
  br i1 %switch, label %bb5, label %bb3

bb3:                                              ; preds = %tailrecurse
  %_5 = add i32 %n.tr, -2
  %0 = mul i32 %accumulator.tr, %n.tr
  br label %tailrecurse

bb5:                                              ; preds = %tailrecurse
  %accumulator.ret.tr = mul i32 %accumulator.tr, 1
  ret i32 %accumulator.ret.tr
}
