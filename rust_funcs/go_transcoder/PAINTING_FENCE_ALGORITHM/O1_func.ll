define noundef i32 @f_gold(i32 noundef %n, i32 noundef %k) unnamed_addr #12 {
start:
  %_0.i.not.i.i6 = icmp sgt i32 %n, 1
  br i1 %_0.i.not.i.i6, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %start
  %_0.i3.i.i7 = icmp eq i32 %n, 2
  %iter.sroa.7.111 = zext i1 %_0.i3.i.i7 to i8
  %iter.sroa.0.110 = select i1 %_0.i3.i.i7, i32 2, i32 3
  %_12 = add i32 %k, -1
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb6
  %iter.sroa.7.116 = phi i8 [ %iter.sroa.7.111, %bb6.lr.ph ], [ %iter.sroa.7.1, %bb6 ]
  %iter.sroa.0.115 = phi i32 [ %iter.sroa.0.110, %bb6.lr.ph ], [ %iter.sroa.0.1, %bb6 ]
  %total.sroa.0.014 = phi i32 [ %k, %bb6.lr.ph ], [ %2, %bb6 ]
  %diff.sroa.0.013 = phi i32 [ %k, %bb6.lr.ph ], [ %1, %bb6 ]
  %0 = mul i32 %total.sroa.0.014, %_12
  %1 = srem i32 %0, 1000000007
  %_14 = add i32 %1, %diff.sroa.0.013
  %2 = srem i32 %_14, 1000000007
  %_10.i.i = trunc nuw i8 %iter.sroa.7.116 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.115, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.115, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.115, %spec.select
  %3 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %3, i8 %iter.sroa.7.116, i8 1
  br i1 %or.cond, label %bb7, label %bb6

bb7:                                              ; preds = %bb6, %start
  %total.sroa.0.0.lcssa = phi i32 [ %k, %start ], [ %2, %bb6 ]
  ret i32 %total.sroa.0.0.lcssa
}
