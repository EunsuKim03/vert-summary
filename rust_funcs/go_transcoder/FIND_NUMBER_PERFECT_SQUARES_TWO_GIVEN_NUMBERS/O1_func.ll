define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #12 {
start:
  %_0.i.not.i.i27 = icmp sgt i32 %a, %b
  br i1 %_0.i.not.i.i27, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %.not = icmp eq i32 %a, %b
  %iter.sroa.7.133 = zext i1 %.not to i8
  %_0.i3.i.i28 = icmp slt i32 %a, %b
  %spec.select1831 = zext i1 %_0.i3.i.i28 to i32
  %iter.sroa.0.132 = add nsw i32 %a, %spec.select1831
  br label %bb6

bb3.loopexit:                                     ; preds = %bb13, %bb6
  %cnt.sroa.0.1.lcssa = phi i32 [ %cnt.sroa.0.034, %bb6 ], [ %spec.select, %bb13 ]
  %_10.i.i = trunc nuw i8 %iter.sroa.7.136 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.135, %b
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.135, %b
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select18 = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nsw i32 %iter.sroa.0.135, %spec.select18
  %0 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %0, i8 %iter.sroa.7.136, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.135
  br i1 %or.cond, label %bb7, label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb3.loopexit
  %_0.sroa.3.0.i.i37 = phi i32 [ %a, %bb6.lr.ph ], [ %_0.sroa.3.0.i.i, %bb3.loopexit ]
  %iter.sroa.7.136 = phi i8 [ %iter.sroa.7.133, %bb6.lr.ph ], [ %iter.sroa.7.1, %bb3.loopexit ]
  %iter.sroa.0.135 = phi i32 [ %iter.sroa.0.132, %bb6.lr.ph ], [ %iter.sroa.0.1, %bb3.loopexit ]
  %cnt.sroa.0.034 = phi i32 [ 0, %bb6.lr.ph ], [ %cnt.sroa.0.1.lcssa, %bb3.loopexit ]
  %_14 = sitofp i32 %_0.sroa.3.0.i.i37 to float
  %1 = tail call noundef float @llvm.sqrt.f32(float %_14)
  %_12 = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  %_0.i.not.i.i1023 = icmp slt i32 %_12, 1
  br i1 %_0.i.not.i.i1023, label %bb3.loopexit, label %bb13

bb7:                                              ; preds = %bb3.loopexit, %start
  %cnt.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %cnt.sroa.0.1.lcssa, %bb3.loopexit ]
  ret i32 %cnt.sroa.0.0.lcssa

bb13:                                             ; preds = %bb6, %bb13
  %cnt.sroa.0.126 = phi i32 [ %spec.select, %bb13 ], [ %cnt.sroa.0.034, %bb6 ]
  %iter1.sroa.7.025 = phi i8 [ %spec.select21, %bb13 ], [ 0, %bb6 ]
  %iter1.sroa.0.024 = phi i32 [ %spec.select20, %bb13 ], [ 1, %bb6 ]
  %_0.i3.i.i12 = icmp slt i32 %iter1.sroa.0.024, %_12
  %spec.select21 = select i1 %_0.i3.i.i12, i8 %iter1.sroa.7.025, i8 1
  %2 = zext i1 %_0.i3.i.i12 to i32
  %spec.select20 = add nuw nsw i32 %iter1.sroa.0.024, %2
  %_21 = mul i32 %iter1.sroa.0.024, %iter1.sroa.0.024
  %_20 = icmp eq i32 %_21, %_0.sroa.3.0.i.i37
  %3 = zext i1 %_20 to i32
  %spec.select = add i32 %cnt.sroa.0.126, %3
  %_10.i.i5 = trunc nuw i8 %spec.select21 to i1
  %_0.i.not.i.i10 = icmp sgt i32 %spec.select20, %_12
  %or.cond22 = select i1 %_10.i.i5, i1 true, i1 %_0.i.not.i.i10
  br i1 %or.cond22, label %bb3.loopexit, label %bb13
}
