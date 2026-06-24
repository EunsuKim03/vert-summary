define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %count.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select, %bb4 ]
  %curr.sroa.0.0 = phi i32 [ 19, %start ], [ %2, %bb4 ]
  %_57 = icmp sgt i32 %curr.sroa.0.0, 0
  br i1 %_57, label %bb3, label %bb4

bb4.loopexit:                                     ; preds = %bb3
  %0 = icmp eq i32 %3, 10
  %1 = zext i1 %0 to i32
  br label %bb4

bb4:                                              ; preds = %bb4.loopexit, %bb1
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb1 ], [ %1, %bb4.loopexit ]
  %spec.select = add i32 %count.sroa.0.0, %sum.sroa.0.0.lcssa
  %_10 = icmp eq i32 %spec.select, %n
  %2 = add i32 %curr.sroa.0.0, 9
  br i1 %_10, label %bb8, label %bb1

bb3:                                              ; preds = %bb1, %bb3
  %sum.sroa.0.09 = phi i32 [ %3, %bb3 ], [ 0, %bb1 ]
  %x.sroa.0.08 = phi i32 [ %4, %bb3 ], [ %curr.sroa.0.0, %bb1 ]
  %_7 = urem i32 %x.sroa.0.08, 10
  %3 = add i32 %sum.sroa.0.09, %_7
  %4 = udiv i32 %x.sroa.0.08, 10
  %_5.not = icmp samesign ult i32 %x.sroa.0.08, 10
  br i1 %_5.not, label %bb4.loopexit, label %bb3

bb8:                                              ; preds = %bb4
  ret i32 %curr.sroa.0.0
}
