define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_2 = icmp eq i32 %n, 1
  br i1 %_2, label %bb10, label %bb5

bb5:                                              ; preds = %start, %bb5
  %iter.sroa.0.0 = phi i32 [ %iter.sroa.0.1, %bb5 ], [ 2, %start ]
  %iter.sroa.7.0 = phi i8 [ %iter.sroa.7.1, %bb5 ], [ 0, %start ]
  %count_s.sroa.0.0 = phi i32 [ %1, %bb5 ], [ 1, %start ]
  %count_b.sroa.0.0 = phi i32 [ %count_s.sroa.0.0, %bb5 ], [ 1, %start ]
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
  %1 = add i32 %count_b.sroa.0.0, %count_s.sroa.0.0
  br i1 %or.cond, label %bb9, label %bb5

bb9:                                              ; preds = %bb5
  %result = add i32 %count_b.sroa.0.0, %count_s.sroa.0.0
  %2 = mul i32 %result, %result
  br label %bb10

bb10:                                             ; preds = %start, %bb9
  %_0.sroa.0.0 = phi i32 [ %2, %bb9 ], [ 4, %start ]
  ret i32 %_0.sroa.0.0
}
