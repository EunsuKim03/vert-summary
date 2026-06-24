define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i69 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i69, label %bb4, label %bb2.i

bb1.loopexit:                                     ; preds = %bb5.loopexit, %bb2.i
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.071, %bb2.i ], [ %result.sroa.0.2.lcssa, %bb5.loopexit ]
  %_0.i.not.i = icmp sgt i32 %spec.select55, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb1.loopexit
  %result.sroa.0.071 = phi i32 [ %result.sroa.0.1.lcssa, %bb1.loopexit ], [ 0, %start ]
  %iter.sroa.0.070 = phi i32 [ %spec.select55, %bb1.loopexit ], [ 0, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.070, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select55 = add nuw nsw i32 %iter.sroa.0.070, %0
  %_9 = sub nsw i32 %n, %iter.sroa.0.070
  %_0.i.not.i1265 = icmp slt i32 %_9, 0
  br i1 %_0.i.not.i1265, label %bb1.loopexit, label %bb2.i13

bb4:                                              ; preds = %bb1.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %result.sroa.0.0.lcssa

bb5.loopexit:                                     ; preds = %bb2.i26, %bb2.i13
  %result.sroa.0.2.lcssa = phi i32 [ %result.sroa.0.167, %bb2.i13 ], [ %spec.select, %bb2.i26 ]
  %_0.i.not.i12 = icmp sgt i32 %spec.select57, %_9
  %or.cond60 = select i1 %_0.i3.i14, i1 true, i1 %_0.i.not.i12
  br i1 %or.cond60, label %bb1.loopexit, label %bb2.i13

bb2.i13:                                          ; preds = %bb2.i, %bb5.loopexit
  %result.sroa.0.167 = phi i32 [ %result.sroa.0.2.lcssa, %bb5.loopexit ], [ %result.sroa.0.071, %bb2.i ]
  %iter1.sroa.0.066 = phi i32 [ %spec.select57, %bb5.loopexit ], [ 0, %bb2.i ]
  %_0.i3.i14 = icmp sge i32 %iter1.sroa.0.066, %_9
  %not._0.i3.i14 = xor i1 %_0.i3.i14, true
  %1 = zext i1 %not._0.i3.i14 to i32
  %spec.select57 = add nuw nsw i32 %iter1.sroa.0.066, %1
  %_16 = sub nsw i32 %_9, %iter1.sroa.0.066
  %_0.i.not.i2562 = icmp slt i32 %_16, 0
  br i1 %_0.i.not.i2562, label %bb5.loopexit, label %bb2.i26.lr.ph

bb2.i26.lr.ph:                                    ; preds = %bb2.i13
  %_24 = add nuw i32 %iter1.sroa.0.066, %iter.sroa.0.070
  br label %bb2.i26

bb2.i26:                                          ; preds = %bb2.i26.lr.ph, %bb2.i26
  %result.sroa.0.264 = phi i32 [ %result.sroa.0.167, %bb2.i26.lr.ph ], [ %spec.select, %bb2.i26 ]
  %iter2.sroa.0.063 = phi i32 [ 0, %bb2.i26.lr.ph ], [ %spec.select58, %bb2.i26 ]
  %_0.i3.i27 = icmp sge i32 %iter2.sroa.0.063, %_16
  %not._0.i3.i27 = xor i1 %_0.i3.i27, true
  %2 = zext i1 %not._0.i3.i27 to i32
  %spec.select58 = add nuw nsw i32 %iter2.sroa.0.063, %2
  %_23 = add i32 %_24, %iter2.sroa.0.063
  %_22 = icmp eq i32 %_23, %n
  %3 = zext i1 %_22 to i32
  %spec.select = add i32 %result.sroa.0.264, %3
  %_0.i.not.i25 = icmp sgt i32 %spec.select58, %_16
  %or.cond61 = select i1 %_0.i3.i27, i1 true, i1 %_0.i.not.i25
  br i1 %or.cond61, label %bb5.loopexit, label %bb2.i26
}
