define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i10 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i10, label %bb6, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %start
  %_14 = uitofp nneg i32 %n to float
  %_1314.not = icmp eq i32 %n, 1
  br i1 %_1314.not, label %bb6, label %bb1

bb1:                                              ; preds = %bb2.i.lr.ph, %bb2.i
  %iter.sroa.0.01115 = phi i32 [ %spec.select9, %bb2.i ], [ 1, %bb2.i.lr.ph ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.01115, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %1 = zext i1 %not._0.i3.i to i32
  %spec.select9 = add nuw nsw i32 %iter.sroa.0.01115, %1
  %_0.i.not.i = icmp sgt i32 %spec.select9, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb6, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_12 = add nuw i32 %spec.select9, 1
  %_11 = mul i32 %_12, %spec.select9
  %_10 = sitofp i32 %_11 to float
  %y = fmul float %_10, 5.000000e-01
  %_13 = fcmp olt float %y, %_14
  br i1 %_13, label %bb1, label %bb6

bb6:                                              ; preds = %bb1, %bb2.i, %bb2.i.lr.ph, %start
  %result.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ 1, %bb2.i.lr.ph ], [ %iter.sroa.0.01115, %bb2.i ], [ %iter.sroa.0.01115, %bb1 ]
  ret i32 %result.sroa.0.0.lcssa
}
