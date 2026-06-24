define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #12 {
start:
  %_6 = sitofp i32 %0 to float
  %1 = tail call noundef float @llvm.sqrt.f32(float %_6)
  %_4 = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  %_0.i.not.i.i33 = icmp slt i32 %_4, 2
  br i1 %_0.i.not.i.i33, label %bb8, label %bb9.preheader.lr.ph

bb9.preheader.lr.ph:                              ; preds = %start
  %.not = icmp eq i32 %_4, 2
  %iter.sroa.7.139 = zext i1 %.not to i8
  %_0.i3.i.i34.not = icmp eq i32 %_4, 2
  %iter.sroa.0.138 = select i1 %_0.i3.i.i34.not, i32 2, i32 3
  br label %bb10.lr.ph

bb4.loopexit:                                     ; preds = %bb11
  %_10.i.i = trunc nuw i8 %iter.sroa.7.143 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.142, %_4
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.142, %_4
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.142, %spec.select
  %2 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %2, i8 %iter.sroa.7.143, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.142
  br i1 %or.cond, label %bb8, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %bb4.loopexit, %bb9.preheader.lr.ph
  %_0.sroa.3.0.i.i44 = phi i32 [ 2, %bb9.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb4.loopexit ]
  %iter.sroa.7.143 = phi i8 [ %iter.sroa.7.139, %bb9.preheader.lr.ph ], [ %iter.sroa.7.1, %bb4.loopexit ]
  %iter.sroa.0.142 = phi i32 [ %iter.sroa.0.138, %bb9.preheader.lr.ph ], [ %iter.sroa.0.1, %bb4.loopexit ]
  %num.sroa.0.041 = phi i32 [ %0, %bb9.preheader.lr.ph ], [ %num.sroa.0.121, %bb4.loopexit ]
  %sum.sroa.0.040 = phi i32 [ 0, %bb9.preheader.lr.ph ], [ %sum.sroa.0.120, %bb4.loopexit ]
  br label %bb11

bb8:                                              ; preds = %bb4.loopexit, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %sum.sroa.0.120, %bb4.loopexit ]
  %num.sroa.0.0.lcssa = phi i32 [ %0, %start ], [ %num.sroa.0.121, %bb4.loopexit ]
  %3 = add i32 %num.sroa.0.0.lcssa, %sum.sroa.0.0.lcssa
  ret i32 %3

bb11:                                             ; preds = %bb10.lr.ph, %bb12
  %num.sroa.0.121 = phi i32 [ %num.sroa.0.041, %bb10.lr.ph ], [ %4, %bb12 ]
  %sum.sroa.0.120 = phi i32 [ %sum.sroa.0.040, %bb10.lr.ph ], [ %5, %bb12 ]
  %_14 = srem i32 %num.sroa.0.121, %_0.sroa.3.0.i.i44
  %4 = sdiv i32 %num.sroa.0.121, %_0.sroa.3.0.i.i44
  %_13 = icmp eq i32 %_14, 0
  br i1 %_13, label %bb12, label %bb4.loopexit

bb12:                                             ; preds = %bb11
  %5 = add i32 %sum.sroa.0.120, %_0.sroa.3.0.i.i44
  br label %bb11
}
