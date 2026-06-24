define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_13 = add i32 %n, 1
  %_0.i.not.i.i4 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i4, label %bb7, label %bb6

bb6:                                              ; preds = %start, %bb6
  %res.sroa.0.08 = phi i32 [ %2, %bb6 ], [ 1, %start ]
  %n_cr.sroa.0.07 = phi float [ %1, %bb6 ], [ 1.000000e+00, %start ]
  %iter.sroa.7.06 = phi i8 [ %spec.select3, %bb6 ], [ 0, %start ]
  %iter.sroa.0.05 = phi i32 [ %spec.select, %bb6 ], [ 1, %start ]
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.05, %n
  %spec.select3 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.06, i8 1
  %0 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.05, %0
  %_12 = sub i32 %_13, %iter.sroa.0.05
  %_11 = sitofp i32 %_12 to float
  %_10 = fmul float %n_cr.sroa.0.07, %_11
  %_14 = uitofp nneg i32 %iter.sroa.0.05 to float
  %1 = fdiv float %_10, %_14
  %_16 = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  %_15 = mul i32 %_16, %_16
  %2 = add i32 %_15, %res.sroa.0.08
  %_10.i.i = trunc nuw i8 %spec.select3 to i1
  %_0.i.not.i.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %bb7, label %bb6

bb7:                                              ; preds = %bb6, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %2, %bb6 ]
  ret i32 %res.sroa.0.0.lcssa
}
