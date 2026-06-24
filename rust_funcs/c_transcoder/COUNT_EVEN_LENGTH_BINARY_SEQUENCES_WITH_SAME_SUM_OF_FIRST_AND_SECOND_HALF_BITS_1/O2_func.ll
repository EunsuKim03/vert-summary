define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i11 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i11, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %start
  %_12 = add nuw i32 %n, 1
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb2.i
  %res.sroa.0.014 = phi i32 [ 1, %bb2.i.lr.ph ], [ %2, %bb2.i ]
  %n_cr.sroa.0.013 = phi float [ 1.000000e+00, %bb2.i.lr.ph ], [ %1, %bb2.i ]
  %iter.sroa.0.012 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select10, %bb2.i ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.012, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select10 = add nuw nsw i32 %iter.sroa.0.012, %0
  %_11 = sub i32 %_12, %iter.sroa.0.012
  %_10 = sitofp i32 %_11 to float
  %_9 = fmul float %n_cr.sroa.0.013, %_10
  %_13 = uitofp nneg i32 %iter.sroa.0.012 to float
  %1 = fdiv float %_9, %_13
  %_15 = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  %_14 = mul i32 %_15, %_15
  %2 = add i32 %_14, %res.sroa.0.014
  %_0.i.not.i = icmp sgt i32 %spec.select10, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb4:                                              ; preds = %bb2.i, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %2, %bb2.i ]
  ret i32 %res.sroa.0.0.lcssa
}
