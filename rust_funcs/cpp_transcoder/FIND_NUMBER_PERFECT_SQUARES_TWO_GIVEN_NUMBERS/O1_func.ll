define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #12 {
start:
  %_0.i.not.i.i13 = icmp sgt i32 %a, %b
  br i1 %_0.i.not.i.i13, label %bb7, label %bb8.preheader.lr.ph

bb8.preheader.lr.ph:                              ; preds = %start
  %.not = icmp eq i32 %a, %b
  %iter.sroa.7.119 = zext i1 %.not to i8
  %_0.i3.i.i14 = icmp slt i32 %a, %b
  %spec.select717 = zext i1 %_0.i3.i.i14 to i32
  %iter.sroa.0.118 = add nsw i32 %a, %spec.select717
  br label %bb8.preheader

bb3.loopexit:                                     ; preds = %bb9, %bb8.preheader
  %cnt.sroa.0.1.lcssa = phi i32 [ %cnt.sroa.0.020, %bb8.preheader ], [ %spec.select, %bb9 ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.122 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.121, %b
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.121, %b
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select7 = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nsw i32 %iter.sroa.0.121, %spec.select7
  %0 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %0, i8 %iter.sroa.7.122, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.121
  br i1 %or.cond, label %bb7, label %bb8.preheader

bb8.preheader:                                    ; preds = %bb8.preheader.lr.ph, %bb3.loopexit
  %_0.sroa.3.0.i.i23 = phi i32 [ %a, %bb8.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb3.loopexit ]
  %iter.sroa.7.122 = phi i8 [ %iter.sroa.7.119, %bb8.preheader.lr.ph ], [ %iter.sroa.7.1, %bb3.loopexit ]
  %iter.sroa.0.121 = phi i32 [ %iter.sroa.0.118, %bb8.preheader.lr.ph ], [ %iter.sroa.0.1, %bb3.loopexit ]
  %cnt.sroa.0.020 = phi i32 [ 0, %bb8.preheader.lr.ph ], [ %cnt.sroa.0.1.lcssa, %bb3.loopexit ]
  %_11.not9 = icmp slt i32 %_0.sroa.3.0.i.i23, 1
  br i1 %_11.not9, label %bb3.loopexit, label %bb9

bb7:                                              ; preds = %bb3.loopexit, %start
  %cnt.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %cnt.sroa.0.1.lcssa, %bb3.loopexit ]
  ret i32 %cnt.sroa.0.0.lcssa

bb9:                                              ; preds = %bb8.preheader, %bb9
  %_1212 = phi i32 [ %_12, %bb9 ], [ 1, %bb8.preheader ]
  %cnt.sroa.0.111 = phi i32 [ %spec.select, %bb9 ], [ %cnt.sroa.0.020, %bb8.preheader ]
  %j.sroa.0.010 = phi i32 [ %2, %bb9 ], [ 1, %bb8.preheader ]
  %_15 = icmp eq i32 %_1212, %_0.sroa.3.0.i.i23
  %1 = zext i1 %_15 to i32
  %spec.select = add i32 %cnt.sroa.0.111, %1
  %2 = add i32 %j.sroa.0.010, 1
  %_12 = mul i32 %2, %2
  %_11.not = icmp sgt i32 %_12, %_0.sroa.3.0.i.i23
  br i1 %_11.not, label %bb3.loopexit, label %bb9
}
