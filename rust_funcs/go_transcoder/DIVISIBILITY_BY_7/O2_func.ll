define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %num) unnamed_addr #4 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %start
  %num.tr = phi i32 [ %num, %start ], [ %num.tr.be, %tailrecurse.backedge ]
  %_2 = icmp slt i32 %num.tr, 0
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %tailrecurse
  switch i32 %num.tr, label %bb5 [
    i32 0, label %bb10
    i32 7, label %bb10
  ]

bb1:                                              ; preds = %tailrecurse
  %_3 = sub i32 0, %num.tr
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb1, %bb8
  %num.tr.be = phi i32 [ %_3, %bb1 ], [ %_7, %bb8 ]
  br label %tailrecurse

bb5:                                              ; preds = %bb3
  %_6 = icmp samesign ult i32 %num.tr, 10
  br i1 %_6, label %bb10, label %bb8

bb8:                                              ; preds = %bb5
  %_8 = udiv i32 %num.tr, 10
  %_11.neg = mul i32 %_8, 2147483638
  %_10 = add i32 %_11.neg, %num.tr
  %_9 = shl i32 %_10, 1
  %_7 = sub i32 %_8, %_9
  br label %tailrecurse.backedge

bb10:                                             ; preds = %bb5, %bb3, %bb3
  %_0.sroa.0.0 = phi i32 [ 1, %bb3 ], [ 1, %bb3 ], [ 0, %bb5 ]
  ret i32 %_0.sroa.0.0
}
