define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_0.i.not.i17 = icmp sgt i32 %a, %b
  br i1 %_0.i.not.i17, label %bb4, label %bb2.i

bb1.loopexit:                                     ; preds = %bb6, %bb2.i
  %cnt.sroa.0.1.lcssa = phi i32 [ %cnt.sroa.0.019, %bb2.i ], [ %spec.select, %bb6 ]
  %_0.i.not.i = icmp sgt i32 %spec.select12, %b
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb1.loopexit
  %cnt.sroa.0.019 = phi i32 [ %cnt.sroa.0.1.lcssa, %bb1.loopexit ], [ 0, %start ]
  %iter.sroa.0.018 = phi i32 [ %spec.select12, %bb1.loopexit ], [ %a, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.018, %b
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select12 = add nsw i32 %iter.sroa.0.018, %0
  %_10.not13 = icmp slt i32 %iter.sroa.0.018, 1
  br i1 %_10.not13, label %bb1.loopexit, label %bb6

bb4:                                              ; preds = %bb1.loopexit, %start
  %cnt.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %cnt.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %cnt.sroa.0.0.lcssa

bb6:                                              ; preds = %bb2.i, %bb6
  %_1116 = phi i32 [ %_11, %bb6 ], [ 1, %bb2.i ]
  %cnt.sroa.0.115 = phi i32 [ %spec.select, %bb6 ], [ %cnt.sroa.0.019, %bb2.i ]
  %j.sroa.0.014 = phi i32 [ %2, %bb6 ], [ 1, %bb2.i ]
  %_14 = icmp eq i32 %_1116, %iter.sroa.0.018
  %1 = zext i1 %_14 to i32
  %spec.select = add i32 %cnt.sroa.0.115, %1
  %2 = add i32 %j.sroa.0.014, 1
  %_11 = mul i32 %2, %2
  %_10.not = icmp sgt i32 %_11, %iter.sroa.0.018
  br i1 %_10.not, label %bb1.loopexit, label %bb6
}
