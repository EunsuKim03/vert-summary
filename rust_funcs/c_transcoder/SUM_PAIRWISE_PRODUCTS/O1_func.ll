define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.not.i.i25 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i25, label %bb7, label %bb10.preheader.lr.ph

bb10.preheader.lr.ph:                             ; preds = %start
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.131 = zext i1 %.not to i8
  %_0.i3.i.i26.not = icmp eq i32 %n, 1
  %iter.sroa.0.130 = select i1 %_0.i3.i.i26.not, i32 1, i32 2
  br label %bb10.preheader

bb3.loopexit:                                     ; preds = %bb12
  %_10.i.i = trunc nuw i8 %iter.sroa.7.134 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.133, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.133, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.133, %spec.select
  %0 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %0, i8 %iter.sroa.7.134, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.133
  br i1 %or.cond, label %bb7, label %bb10.preheader

bb10.preheader:                                   ; preds = %bb10.preheader.lr.ph, %bb3.loopexit
  %_0.sroa.3.0.i.i35 = phi i32 [ 1, %bb10.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb3.loopexit ]
  %iter.sroa.7.134 = phi i8 [ %iter.sroa.7.131, %bb10.preheader.lr.ph ], [ %iter.sroa.7.1, %bb3.loopexit ]
  %iter.sroa.0.133 = phi i32 [ %iter.sroa.0.130, %bb10.preheader.lr.ph ], [ %iter.sroa.0.1, %bb3.loopexit ]
  %sum.sroa.0.032 = phi i32 [ 0, %bb10.preheader.lr.ph ], [ %2, %bb3.loopexit ]
  br label %bb12

bb7:                                              ; preds = %bb3.loopexit, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb3.loopexit ]
  ret i32 %sum.sroa.0.0.lcssa

bb12:                                             ; preds = %bb10.preheader, %bb12
  %sum.sroa.0.124 = phi i32 [ %sum.sroa.0.032, %bb10.preheader ], [ %2, %bb12 ]
  %iter1.sroa.7.023 = phi i8 [ 0, %bb10.preheader ], [ %spec.select20, %bb12 ]
  %iter1.sroa.0.022 = phi i32 [ %_0.sroa.3.0.i.i35, %bb10.preheader ], [ %spec.select19, %bb12 ]
  %_0.i3.i.i12 = icmp slt i32 %iter1.sroa.0.022, %n
  %spec.select20 = select i1 %_0.i3.i.i12, i8 %iter1.sroa.7.023, i8 1
  %1 = zext i1 %_0.i3.i.i12 to i32
  %spec.select19 = add nsw i32 %iter1.sroa.0.022, %1
  %_17 = mul i32 %iter1.sroa.0.022, %_0.sroa.3.0.i.i35
  %2 = add i32 %_17, %sum.sroa.0.124
  %_10.i.i5 = trunc nuw i8 %spec.select20 to i1
  %_0.i.not.i.i10 = icmp sgt i32 %spec.select19, %n
  %or.cond21 = select i1 %_10.i.i5, i1 true, i1 %_0.i.not.i.i10
  br i1 %or.cond21, label %bb3.loopexit, label %bb12
}
