define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb1, %start
  %accumulator.tr = phi i32 [ 1, %start ], [ %0, %bb1 ]
  %n.tr = phi i32 [ %n, %start ], [ %_3, %bb1 ]
  %switch = icmp ult i32 %n.tr, 2
  br i1 %switch, label %bb4, label %bb1

bb1:                                              ; preds = %tailrecurse
  %_3 = add i32 %n.tr, -1
  %0 = mul i32 %accumulator.tr, %n.tr
  br label %tailrecurse

bb4:                                              ; preds = %tailrecurse
  %accumulator.ret.tr = mul i32 %accumulator.tr, 1
  ret i32 %accumulator.ret.tr
}
