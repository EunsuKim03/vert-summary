define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  %.off = add i32 %0, 9
  %_2 = icmp ult i32 %.off, 19
  br i1 %_2, label %bb10, label %bb3

bb3:                                              ; preds = %start, %bb4
  %num.sroa.0.0 = phi i32 [ %_10, %bb4 ], [ %0, %start ]
  %_5.not = icmp eq i32 %num.sroa.0.0, 0
  br i1 %_5.not, label %bb10, label %bb4

bb4:                                              ; preds = %bb3
  %digit1 = srem i32 %num.sroa.0.0, 10
  %_10 = sdiv i32 %num.sroa.0.0, 10
  %digit2 = srem i32 %_10, 10
  %_14 = sub nsw i32 %digit2, %digit1
  %_0.sroa.0.0.i = tail call noundef range(i32 0, 19) i32 @llvm.abs.i32(i32 range(i32 -18, 19) %_14, i1 true)
  %_12 = icmp samesign ugt i32 %_0.sroa.0.0.i, 1
  br i1 %_12, label %bb10, label %bb3

bb10:                                             ; preds = %bb4, %bb3, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb3 ], [ 0, %bb4 ]
  ret i32 %_0.sroa.0.0
}
