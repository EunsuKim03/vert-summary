define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i12 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i12, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb2.i
  %count.sroa.0.014 = phi float [ %2, %bb2.i ], [ 1.000000e+00, %start ]
  %iter.sroa.0.013 = phi i32 [ %spec.select11, %bb2.i ], [ 1, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.013, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select11 = add nuw nsw i32 %iter.sroa.0.013, %0
  %_11 = add nsw i32 %iter.sroa.0.013, -1
  %_10 = sitofp i32 %_11 to float
  %_9 = fadd float %_10, 1.000000e+01
  %1 = fmul float %count.sroa.0.014, %_9
  %_12 = uitofp nneg i32 %iter.sroa.0.013 to float
  %2 = fdiv float %1, %_12
  %_0.i.not.i = icmp sgt i32 %spec.select11, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb4:                                              ; preds = %bb2.i, %start
  %count.sroa.0.0.lcssa = phi float [ 1.000000e+00, %start ], [ %2, %bb2.i ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %count.sroa.0.0.lcssa)
  ret i32 %_0
}
