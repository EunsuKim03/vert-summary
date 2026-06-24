define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.not.i.i43 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i43, label %bb7, label %bb10.preheader.lr.ph

bb10.preheader.lr.ph:                             ; preds = %start
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.149 = zext i1 %.not to i8
  %_0.i3.i.i44.not = icmp eq i32 %n, 1
  %iter.sroa.0.148 = select i1 %_0.i3.i.i44.not, i32 1, i32 2
  %_0.i3.i.i1333.not = icmp eq i32 %n, 1
  %iter1.sroa.7.138 = zext i1 %_0.i3.i.i1333.not to i8
  %iter1.sroa.0.137 = select i1 %_0.i3.i.i1333.not, i32 1, i32 2
  br label %bb12.lr.ph

bb3.loopexit:                                     ; preds = %bb15
  %_10.i.i = trunc nuw i8 %iter.sroa.7.152 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.151, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.151, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.151, %spec.select
  %0 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %0, i8 %iter.sroa.7.152, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.151
  br i1 %or.cond, label %bb7, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %bb3.loopexit, %bb10.preheader.lr.ph
  %_0.sroa.3.0.i.i53 = phi i32 [ 1, %bb10.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb3.loopexit ]
  %iter.sroa.7.152 = phi i8 [ %iter.sroa.7.149, %bb10.preheader.lr.ph ], [ %iter.sroa.7.1, %bb3.loopexit ]
  %iter.sroa.0.151 = phi i32 [ %iter.sroa.0.148, %bb10.preheader.lr.ph ], [ %iter.sroa.0.1, %bb3.loopexit ]
  %ans.sroa.0.050 = phi i32 [ 0, %bb10.preheader.lr.ph ], [ %1, %bb3.loopexit ]
  br label %bb15

bb7:                                              ; preds = %bb3.loopexit, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb3.loopexit ]
  ret i32 %ans.sroa.0.0.lcssa

bb15:                                             ; preds = %bb12.lr.ph, %bb15
  %_0.sroa.3.0.i.i1542 = phi i32 [ 1, %bb12.lr.ph ], [ %_0.sroa.3.0.i.i15, %bb15 ]
  %iter1.sroa.7.141 = phi i8 [ %iter1.sroa.7.138, %bb12.lr.ph ], [ %iter1.sroa.7.1, %bb15 ]
  %iter1.sroa.0.140 = phi i32 [ %iter1.sroa.0.137, %bb12.lr.ph ], [ %iter1.sroa.0.1, %bb15 ]
  %ans.sroa.0.139 = phi i32 [ %ans.sroa.0.050, %bb12.lr.ph ], [ %1, %bb15 ]
  %_16 = sdiv i32 %_0.sroa.3.0.i.i53, %_0.sroa.3.0.i.i1542
  %1 = add i32 %_16, %ans.sroa.0.139
  %_10.i.i6 = trunc nuw i8 %iter1.sroa.7.141 to i1
  %_0.i.not.i.i11 = icmp sgt i32 %iter1.sroa.0.140, %n
  %or.cond22 = select i1 %_10.i.i6, i1 true, i1 %_0.i.not.i.i11
  %_0.i3.i.i13 = icmp slt i32 %iter1.sroa.0.140, %n
  %not.or.cond22 = xor i1 %or.cond22, true
  %narrow31 = select i1 %not.or.cond22, i1 %_0.i3.i.i13, i1 false
  %spec.select20 = zext i1 %narrow31 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.140, %spec.select20
  %2 = select i1 %or.cond22, i1 true, i1 %_0.i3.i.i13
  %iter1.sroa.7.1 = select i1 %2, i8 %iter1.sroa.7.141, i8 1
  %_0.sroa.3.0.i.i15 = select i1 %_10.i.i6, i32 undef, i32 %iter1.sroa.0.140
  br i1 %or.cond22, label %bb3.loopexit, label %bb15
}
