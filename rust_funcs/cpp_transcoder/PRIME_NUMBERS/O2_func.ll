define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_2 = icmp slt i32 %n, 2
  br i1 %_2, label %bb9, label %bb3

bb3:                                              ; preds = %start, %bb5
  %iter.sroa.0.0 = phi i32 [ %_16.0, %bb5 ], [ 2, %start ]
  %exitcond.not = icmp eq i32 %iter.sroa.0.0, %n
  br i1 %exitcond.not, label %bb9, label %bb5

bb5:                                              ; preds = %bb3
  %_16.0 = add nuw i32 %iter.sroa.0.0, 1
  %_6 = urem i32 %n, %iter.sroa.0.0
  %_5 = icmp eq i32 %_6, 0
  br i1 %_5, label %bb9, label %bb3

bb9:                                              ; preds = %bb5, %bb3, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 0, %bb5 ], [ 1, %bb3 ]
  ret i32 %_0.sroa.0.0
}
