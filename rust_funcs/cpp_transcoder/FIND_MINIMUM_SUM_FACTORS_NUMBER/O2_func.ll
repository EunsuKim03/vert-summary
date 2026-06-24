define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  %_5 = sitofp i32 %0 to float
  %1 = tail call float @llvm.sqrt.f32(float %_5)
  %_3 = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  %_0.i.not.i21 = icmp slt i32 %_3, 2
  br i1 %_0.i.not.i21, label %bb4, label %bb2.i

bb1.loopexit:                                     ; preds = %bb8, %bb2.i
  %sum.sroa.0.1.lcssa = phi i32 [ %sum.sroa.0.023, %bb2.i ], [ %4, %bb8 ]
  %num.sroa.0.1.lcssa = phi i32 [ %num.sroa.0.024, %bb2.i ], [ %5, %bb8 ]
  %_0.i.not.i = icmp sgt i32 %spec.select15, %_3
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb1.loopexit
  %num.sroa.0.024 = phi i32 [ %num.sroa.0.1.lcssa, %bb1.loopexit ], [ %0, %start ]
  %sum.sroa.0.023 = phi i32 [ %sum.sroa.0.1.lcssa, %bb1.loopexit ], [ 0, %start ]
  %iter.sroa.0.022 = phi i32 [ %spec.select15, %bb1.loopexit ], [ 2, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.022, %_3
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select15 = add nuw nsw i32 %iter.sroa.0.022, %2
  %_1316 = srem i32 %num.sroa.0.024, %iter.sroa.0.022
  %_1217 = icmp eq i32 %_1316, 0
  br i1 %_1217, label %bb8, label %bb1.loopexit

bb4:                                              ; preds = %bb1.loopexit, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %sum.sroa.0.1.lcssa, %bb1.loopexit ]
  %num.sroa.0.0.lcssa = phi i32 [ %0, %start ], [ %num.sroa.0.1.lcssa, %bb1.loopexit ]
  %3 = add i32 %num.sroa.0.0.lcssa, %sum.sroa.0.0.lcssa
  ret i32 %3

bb8:                                              ; preds = %bb2.i, %bb8
  %num.sroa.0.119 = phi i32 [ %5, %bb8 ], [ %num.sroa.0.024, %bb2.i ]
  %sum.sroa.0.118 = phi i32 [ %4, %bb8 ], [ %sum.sroa.0.023, %bb2.i ]
  %4 = add i32 %sum.sroa.0.118, %iter.sroa.0.022
  %5 = sdiv i32 %num.sroa.0.119, %iter.sroa.0.022
  %_13 = srem i32 %5, %iter.sroa.0.022
  %_12 = icmp eq i32 %_13, 0
  br i1 %_12, label %bb8, label %bb1.loopexit
}
