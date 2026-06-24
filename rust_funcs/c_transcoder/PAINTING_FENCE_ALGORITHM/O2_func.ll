define noundef i32 @f_gold(i32 noundef %n, i32 noundef %k) unnamed_addr #4 {
start:
  %_0.i.not.i12 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i12, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %start
  %_11 = add i32 %k, -1
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb2.i
  %total.sroa.0.015 = phi i32 [ %k, %bb2.i.lr.ph ], [ %3, %bb2.i ]
  %diff.sroa.0.014 = phi i32 [ %k, %bb2.i.lr.ph ], [ %2, %bb2.i ]
  %iter.sroa.0.013 = phi i32 [ 2, %bb2.i.lr.ph ], [ %spec.select11, %bb2.i ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.013, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select11 = add nuw nsw i32 %iter.sroa.0.013, %0
  %1 = mul i32 %total.sroa.0.015, %_11
  %2 = srem i32 %1, 1000000007
  %_13 = add i32 %2, %diff.sroa.0.014
  %3 = srem i32 %_13, 1000000007
  %_0.i.not.i = icmp sgt i32 %spec.select11, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb4:                                              ; preds = %bb2.i, %start
  %total.sroa.0.0.lcssa = phi i32 [ %k, %start ], [ %3, %bb2.i ]
  ret i32 %total.sroa.0.0.lcssa
}
