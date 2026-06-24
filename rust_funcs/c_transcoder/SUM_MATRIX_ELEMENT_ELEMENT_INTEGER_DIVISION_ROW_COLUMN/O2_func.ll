define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i43 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i43, label %bb4, label %bb2.i15.preheader

bb1.loopexit:                                     ; preds = %bb2.i15
  %_0.i.not.i = icmp sgt i32 %spec.select36, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i15.preheader

bb2.i15.preheader:                                ; preds = %start, %bb1.loopexit
  %ans.sroa.0.045 = phi i32 [ %2, %bb1.loopexit ], [ 0, %start ]
  %iter.sroa.0.044 = phi i32 [ %spec.select36, %bb1.loopexit ], [ 1, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.044, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select36 = add nuw nsw i32 %iter.sroa.0.044, %0
  br label %bb2.i15

bb4:                                              ; preds = %bb1.loopexit, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb1.loopexit ]
  ret i32 %ans.sroa.0.0.lcssa

bb2.i15:                                          ; preds = %bb2.i15.preheader, %bb2.i15
  %ans.sroa.0.142 = phi i32 [ %2, %bb2.i15 ], [ %ans.sroa.0.045, %bb2.i15.preheader ]
  %iter1.sroa.0.041 = phi i32 [ %spec.select37, %bb2.i15 ], [ 1, %bb2.i15.preheader ]
  %_0.i3.i16 = icmp sge i32 %iter1.sroa.0.041, %n
  %not._0.i3.i16 = xor i1 %_0.i3.i16, true
  %1 = zext i1 %not._0.i3.i16 to i32
  %spec.select37 = add nuw nsw i32 %iter1.sroa.0.041, %1
  %_13 = udiv i32 %iter.sroa.0.044, %iter1.sroa.0.041
  %2 = add i32 %_13, %ans.sroa.0.142
  %_0.i.not.i14 = icmp sgt i32 %spec.select37, %n
  %or.cond39 = select i1 %_0.i3.i16, i1 true, i1 %_0.i.not.i14
  br i1 %or.cond39, label %bb1.loopexit, label %bb2.i15
}
