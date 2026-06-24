define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.not.i.i5 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i5, label %bb7, label %bb6

bb6:                                              ; preds = %start, %bb6
  %count.sroa.0.08 = phi float [ %2, %bb6 ], [ 1.000000e+00, %start ]
  %iter.sroa.7.07 = phi i8 [ %spec.select4, %bb6 ], [ 0, %start ]
  %iter.sroa.0.06 = phi i32 [ %spec.select, %bb6 ], [ 1, %start ]
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.06, %n
  %spec.select4 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.07, i8 1
  %0 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.06, %0
  %_12 = add nsw i32 %iter.sroa.0.06, -1
  %_11 = sitofp i32 %_12 to float
  %_10 = fadd float %_11, 1.000000e+01
  %1 = fmul float %count.sroa.0.08, %_10
  %_13 = uitofp nneg i32 %iter.sroa.0.06 to float
  %2 = fdiv float %1, %_13
  %_10.i.i = trunc nuw i8 %spec.select4 to i1
  %_0.i.not.i.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %bb7, label %bb6

bb7:                                              ; preds = %bb6, %start
  %count.sroa.0.0.lcssa = phi float [ 1.000000e+00, %start ], [ %2, %bb6 ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %count.sroa.0.0.lcssa)
  ret i32 %_0
}
