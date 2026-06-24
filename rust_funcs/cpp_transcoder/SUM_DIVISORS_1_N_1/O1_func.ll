define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.not.i.i9 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i9, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.115 = zext i1 %.not to i8
  %_0.i3.i.i10.not = icmp eq i32 %n, 1
  %iter.sroa.0.114 = select i1 %_0.i3.i.i10.not, i32 1, i32 2
  br label %bb9

bb7:                                              ; preds = %bb9, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb9 ]
  ret i32 %sum.sroa.0.0.lcssa

bb9:                                              ; preds = %bb6.lr.ph, %bb9
  %_0.sroa.3.0.i.i19 = phi i32 [ 1, %bb6.lr.ph ], [ %_0.sroa.3.0.i.i, %bb9 ]
  %iter.sroa.7.118 = phi i8 [ %iter.sroa.7.115, %bb6.lr.ph ], [ %iter.sroa.7.1, %bb9 ]
  %iter.sroa.0.117 = phi i32 [ %iter.sroa.0.114, %bb6.lr.ph ], [ %iter.sroa.0.1, %bb9 ]
  %sum.sroa.0.016 = phi i32 [ 0, %bb6.lr.ph ], [ %1, %bb9 ]
  %0 = srem i32 %n, %_0.sroa.3.0.i.i19
  %_9 = add i32 %sum.sroa.0.016, %n
  %1 = sub i32 %_9, %0
  %_10.i.i = trunc nuw i8 %iter.sroa.7.118 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.117, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.117, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.117, %spec.select
  %2 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %2, i8 %iter.sroa.7.118, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.117
  br i1 %or.cond, label %bb7, label %bb9
}
