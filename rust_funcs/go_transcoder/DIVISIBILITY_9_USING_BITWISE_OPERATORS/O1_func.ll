define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb5, %start
  %n.tr = phi i32 [ %n, %start ], [ %_5, %bb5 ]
  switch i32 %n.tr, label %bb3 [
    i32 0, label %bb8
    i32 9, label %bb8
  ]

bb3:                                              ; preds = %tailrecurse
  %_4 = icmp slt i32 %n.tr, 9
  br i1 %_4, label %bb8, label %bb5

bb5:                                              ; preds = %bb3
  %_6 = lshr i32 %n.tr, 3
  %_7 = and i32 %n.tr, 7
  %_5 = sub nsw i32 %_6, %_7
  br label %tailrecurse

bb8:                                              ; preds = %bb3, %tailrecurse, %tailrecurse
  %_0.sroa.0.0 = phi i32 [ 1, %tailrecurse ], [ 1, %tailrecurse ], [ 0, %bb3 ]
  ret i32 %_0.sroa.0.0
}
