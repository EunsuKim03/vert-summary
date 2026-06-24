define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb7, label %bb2.i

bb2.i:                                            ; preds = %start, %bb2.i
  %a.sroa.0.014 = phi i32 [ %b.sroa.0.013, %bb2.i ], [ 1, %start ]
  %b.sroa.0.013 = phi i32 [ %1, %bb2.i ], [ 2, %start ]
  %iter.sroa.0.012 = phi i32 [ %spec.select11, %bb2.i ], [ 3, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.012, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select11 = add nuw nsw i32 %iter.sroa.0.012, %0
  %_12 = add nsw i32 %iter.sroa.0.012, -1
  %_11 = mul i32 %a.sroa.0.014, %_12
  %1 = add i32 %_11, %b.sroa.0.013
  %_0.i.not.i = icmp sgt i32 %spec.select11, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb7, label %bb2.i

bb7:                                              ; preds = %bb2.i, %start
  %c.sroa.0.1 = phi i32 [ %n, %start ], [ %1, %bb2.i ]
  ret i32 %c.sroa.0.1
}
