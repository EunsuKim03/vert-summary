define noundef i32 @f_gold(i32 noundef %x) unnamed_addr #12 {
start:
  %_38 = icmp sgt i32 %x, 1
  br i1 %_38, label %bb2, label %bb8

bb2:                                              ; preds = %start, %bb6
  %i.sroa.0.010 = phi i32 [ %1, %bb6 ], [ 1, %start ]
  %fact.sroa.0.09 = phi i32 [ %0, %bb6 ], [ 1, %start ]
  %0 = mul i32 %i.sroa.0.010, %fact.sroa.0.09
  %_8 = srem i32 %0, %x
  %_7 = icmp eq i32 %_8, 0
  br i1 %_7, label %bb8, label %bb6

bb8:                                              ; preds = %bb6, %bb2, %start
  %i.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %x, %bb6 ], [ %i.sroa.0.010, %bb2 ]
  ret i32 %i.sroa.0.0.lcssa

bb6:                                              ; preds = %bb2
  %1 = add nuw nsw i32 %i.sroa.0.010, 1
  %exitcond.not = icmp eq i32 %1, %x
  br i1 %exitcond.not, label %bb8, label %bb2
}
