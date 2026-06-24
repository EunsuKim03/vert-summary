define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_12 = sitofp i32 %n to float
  %_0.i.not.i.i4 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i4, label %bb7, label %bb6

bb6:                                              ; preds = %start, %bb6
  %sum.sroa.0.07 = phi i32 [ %1, %bb6 ], [ 0, %start ]
  %iter.sroa.7.06 = phi i8 [ %spec.select3, %bb6 ], [ 0, %start ]
  %iter.sroa.0.05 = phi i32 [ %spec.select, %bb6 ], [ 1, %start ]
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.05, %n
  %spec.select3 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.06, i8 1
  %0 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.05, %0
  %_13 = uitofp nneg i32 %iter.sroa.0.05 to float
  %_11 = fdiv float %_12, %_13
  %_10 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_11)
  %_9 = mul i32 %_10, %iter.sroa.0.05
  %1 = add i32 %_9, %sum.sroa.0.07
  %_10.i.i = trunc nuw i8 %spec.select3 to i1
  %_0.i.not.i.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %bb7, label %bb6

bb7:                                              ; preds = %bb6, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb6 ]
  ret i32 %sum.sroa.0.0.lcssa
}
