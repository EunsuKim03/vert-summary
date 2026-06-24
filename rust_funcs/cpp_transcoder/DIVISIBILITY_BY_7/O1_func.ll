define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %num) unnamed_addr #12 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb10.sink.split, %start
  %num.tr = phi i32 [ %num, %start ], [ %_3.sink, %bb10.sink.split ]
  %_2 = icmp slt i32 %num.tr, 0
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %tailrecurse
  switch i32 %num.tr, label %bb5 [
    i32 0, label %bb10
    i32 7, label %bb10
  ]

bb1:                                              ; preds = %tailrecurse
  %_3 = sub i32 0, %num.tr
  br label %bb10.sink.split

bb5:                                              ; preds = %bb3
  %_6 = icmp slt i32 %num.tr, 10
  br i1 %_6, label %bb10, label %bb8

bb8:                                              ; preds = %bb5
  %_8 = udiv i32 %num.tr, 10
  %_11.neg = mul i32 %_8, 2147483638
  %_10 = add i32 %_11.neg, %num.tr
  %_9 = shl i32 %_10, 1
  %_7 = sub i32 %_8, %_9
  br label %bb10.sink.split

bb10.sink.split:                                  ; preds = %bb8, %bb1
  %_3.sink = phi i32 [ %_3, %bb1 ], [ %_7, %bb8 ]
  br label %tailrecurse

bb10:                                             ; preds = %bb5, %bb3, %bb3
  %_0.sroa.0.0 = phi i32 [ 1, %bb3 ], [ 1, %bb3 ], [ 0, %bb5 ]
  ret i32 %_0.sroa.0.0
}
