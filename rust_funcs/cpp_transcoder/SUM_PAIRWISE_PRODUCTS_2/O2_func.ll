define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_0.i.not.i11 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i11, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb2.i
  %sum.sroa.0.013 = phi float [ %1, %bb2.i ], [ 0.000000e+00, %start ]
  %iter.sroa.0.012 = phi i32 [ %spec.select10, %bb2.i ], [ 1, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.012, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select10 = add nuw nsw i32 %iter.sroa.0.012, %0
  %_12 = uitofp nneg i32 %iter.sroa.0.012 to float
  %_14 = add nuw i32 %iter.sroa.0.012, 1
  %_13 = sitofp i32 %_14 to float
  %_11 = fmul float %_12, %_13
  %_16 = add nuw i32 %iter.sroa.0.012, 2
  %_15 = sitofp i32 %_16 to float
  %_10 = fmul float %_11, %_15
  %_19 = mul i32 %iter.sroa.0.012, 3
  %_18 = add i32 %_19, 1
  %_17 = sitofp i32 %_18 to float
  %_9 = fmul float %_10, %_17
  %1 = fadd float %sum.sroa.0.013, %_9
  %_0.i.not.i = icmp sgt i32 %spec.select10, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb4:                                              ; preds = %bb2.i, %start
  %sum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %1, %bb2.i ]
  %_20 = fdiv float %sum.sroa.0.0.lcssa, 2.400000e+01
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_20)
  ret i32 %_0
}
