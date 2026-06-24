define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i38 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i38, label %bb4, label %bb2.i

bb1.loopexit:                                     ; preds = %bb2.i11
  %_0.i3.i = icmp sge i32 %iter.sroa.0.039, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select32 = add nuw nsw i32 %iter.sroa.0.039, %0
  %_0.i.not.i = icmp sgt i32 %spec.select32, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb1.loopexit
  %sum.sroa.0.040 = phi i32 [ %2, %bb1.loopexit ], [ 0, %start ]
  %iter.sroa.0.039 = phi i32 [ %spec.select32, %bb1.loopexit ], [ 1, %start ]
  br label %bb2.i11

bb4:                                              ; preds = %bb1.loopexit, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb1.loopexit ]
  ret i32 %sum.sroa.0.0.lcssa

bb2.i11:                                          ; preds = %bb2.i, %bb2.i11
  %sum.sroa.0.137 = phi i32 [ %sum.sroa.0.040, %bb2.i ], [ %2, %bb2.i11 ]
  %iter1.sroa.0.036 = phi i32 [ %iter.sroa.0.039, %bb2.i ], [ %spec.select33, %bb2.i11 ]
  %_0.i3.i12 = icmp sge i32 %iter1.sroa.0.036, %n
  %not._0.i3.i12 = xor i1 %_0.i3.i12, true
  %1 = zext i1 %not._0.i3.i12 to i32
  %spec.select33 = add nuw nsw i32 %iter1.sroa.0.036, %1
  %_15 = mul i32 %iter1.sroa.0.036, %iter.sroa.0.039
  %2 = add i32 %sum.sroa.0.137, %_15
  %_0.i.not.i10 = icmp sgt i32 %spec.select33, %n
  %or.cond35 = select i1 %_0.i3.i12, i1 true, i1 %_0.i.not.i10
  br i1 %or.cond35, label %bb1.loopexit, label %bb2.i11
}
