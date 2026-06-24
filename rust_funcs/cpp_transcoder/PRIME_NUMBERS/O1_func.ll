define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_2 = icmp slt i32 %n, 2
  br i1 %_2, label %bb14, label %bb4

bb4:                                              ; preds = %start, %bb10
  %iter.sroa.0.0 = phi i32 [ %spec.select, %bb10 ], [ 2, %start ]
  %exitcond.not = icmp eq i32 %iter.sroa.0.0, %n
  br i1 %exitcond.not, label %bb14, label %bb10

bb10:                                             ; preds = %bb4
  %spec.select = add nuw i32 %iter.sroa.0.0, 1
  %_11 = urem i32 %n, %iter.sroa.0.0
  %_10 = icmp eq i32 %_11, 0
  br i1 %_10, label %bb14, label %bb4

bb14:                                             ; preds = %bb10, %bb4, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 1, %bb4 ], [ 0, %bb10 ]
  ret i32 %_0.sroa.0.0
}
