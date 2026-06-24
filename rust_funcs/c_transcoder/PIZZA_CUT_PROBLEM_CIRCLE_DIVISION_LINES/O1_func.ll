define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  br label %bb3

bb3:                                              ; preds = %bb3, %start
  %iter.sroa.0.0 = phi i32 [ 1, %start ], [ %iter.sroa.0.1, %bb3 ]
  %iter.sroa.7.0 = phi i8 [ 0, %start ], [ %iter.sroa.7.1, %bb3 ]
  %sum.sroa.0.0 = phi i32 [ 0, %start ], [ %1, %bb3 ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.0, %spec.select
  %0 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %0, i8 %iter.sroa.7.0, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.0
  %1 = add i32 %_0.sroa.3.0.i.i, %sum.sroa.0.0
  br i1 %or.cond, label %bb7, label %bb3

bb7:                                              ; preds = %bb3
  ret i32 %sum.sroa.0.0
}
