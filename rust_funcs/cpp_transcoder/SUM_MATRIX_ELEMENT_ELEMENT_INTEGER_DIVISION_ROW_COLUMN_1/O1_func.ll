define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.not.i.i16 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i16, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.122 = zext i1 %.not to i8
  %_0.i3.i.i17.not = icmp eq i32 %n, 1
  %iter.sroa.0.121 = select i1 %_0.i3.i.i17.not, i32 1, i32 2
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb17
  %_0.sroa.3.0.i.i27 = phi i32 [ 1, %bb6.lr.ph ], [ %_0.sroa.3.0.i.i, %bb17 ]
  %iter.sroa.7.126 = phi i8 [ %iter.sroa.7.122, %bb6.lr.ph ], [ %iter.sroa.7.1, %bb17 ]
  %iter.sroa.0.125 = phi i32 [ %iter.sroa.0.121, %bb6.lr.ph ], [ %iter.sroa.0.1, %bb17 ]
  %ans.sroa.0.024 = phi i32 [ 0, %bb6.lr.ph ], [ %ans.sroa.0.1, %bb17 ]
  %temp.sroa.0.023 = phi i32 [ 0, %bb6.lr.ph ], [ %temp.sroa.0.1, %bb17 ]
  %_12 = icmp slt i32 %temp.sroa.0.023, %n
  br i1 %_12, label %bb9, label %bb17

bb7:                                              ; preds = %bb17, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %ans.sroa.0.1, %bb17 ]
  ret i32 %ans.sroa.0.0.lcssa

bb17:                                             ; preds = %bb11, %bb9, %bb6
  %temp.sroa.0.1 = phi i32 [ %temp.sroa.0.023, %bb6 ], [ %1, %bb9 ], [ %_17, %bb11 ]
  %ans.sroa.0.1 = phi i32 [ %ans.sroa.0.024, %bb6 ], [ %ans.sroa.0.024, %bb9 ], [ %ans.sroa.0.3, %bb11 ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.126 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.125, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.125, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.125, %spec.select
  %0 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %0, i8 %iter.sroa.7.126, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.125
  br i1 %or.cond, label %bb7, label %bb6

bb9:                                              ; preds = %bb6
  %1 = add i32 %_0.sroa.3.0.i.i27, -1
  %_1411 = icmp slt i32 %1, %n
  br i1 %_1411, label %bb11, label %bb17

bb11:                                             ; preds = %bb9, %bb11
  %ans.sroa.0.214 = phi i32 [ %ans.sroa.0.3, %bb11 ], [ %ans.sroa.0.024, %bb9 ]
  %temp.sroa.0.213 = phi i32 [ %_17, %bb11 ], [ %1, %bb9 ]
  %num.sroa.0.012 = phi i32 [ %2, %bb11 ], [ 1, %bb9 ]
  %_17 = add i32 %temp.sroa.0.213, %_0.sroa.3.0.i.i27
  %_16.not = icmp sgt i32 %_17, %n
  %_22 = sub i32 %n, %temp.sroa.0.213
  %.pn = select i1 %_16.not, i32 %_22, i32 %_0.sroa.3.0.i.i27
  %_19.pn = mul i32 %.pn, %num.sroa.0.012
  %ans.sroa.0.3 = add i32 %_19.pn, %ans.sroa.0.214
  %2 = add i32 %num.sroa.0.012, 1
  %_14 = icmp slt i32 %_17, %n
  br i1 %_14, label %bb11, label %bb17
}
