define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_4 = sitofp i32 %n to float
  %_6 = add i32 %n, 1
  %_5 = sitofp i32 %_6 to float
  %_3 = fmul float %_4, %_5
  %0 = fmul float %_3, 5.000000e-01
  %_0.i.not.i10 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i10, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb2.i
  %multi_terms.sroa.0.013 = phi float [ %2, %bb2.i ], [ %0, %start ]
  %sum.sroa.0.012 = phi float [ %3, %bb2.i ], [ %0, %start ]
  %iter.sroa.0.011 = phi i32 [ %spec.select9, %bb2.i ], [ 2, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.011, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %1 = zext i1 %not._0.i3.i to i32
  %spec.select9 = add nuw nsw i32 %iter.sroa.0.011, %1
  %_16 = add nsw i32 %iter.sroa.0.011, -1
  %_15 = sitofp i32 %_16 to float
  %2 = fsub float %multi_terms.sroa.0.013, %_15
  %_20 = uitofp nneg i32 %iter.sroa.0.011 to float
  %_18 = fmul float %2, %_20
  %3 = fadd float %sum.sroa.0.012, %_18
  %_0.i.not.i = icmp sgt i32 %spec.select9, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb4:                                              ; preds = %bb2.i, %start
  %sum.sroa.0.0.lcssa = phi float [ %0, %start ], [ %3, %bb2.i ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %sum.sroa.0.0.lcssa)
  ret i32 %_0
}
