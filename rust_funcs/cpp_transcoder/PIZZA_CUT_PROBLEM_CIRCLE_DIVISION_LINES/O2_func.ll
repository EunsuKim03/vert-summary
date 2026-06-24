define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i11 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i11, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb2.i
  %sum.sroa.0.013 = phi i32 [ %1, %bb2.i ], [ 0, %start ]
  %iter.sroa.0.012 = phi i32 [ %spec.select10, %bb2.i ], [ 1, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.012, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select10 = add nuw nsw i32 %iter.sroa.0.012, %0
  %1 = add i32 %sum.sroa.0.013, %iter.sroa.0.012
  %_0.i.not.i = icmp sgt i32 %spec.select10, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb4:                                              ; preds = %bb2.i, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb2.i ]
  ret i32 %sum.sroa.0.0.lcssa
}
