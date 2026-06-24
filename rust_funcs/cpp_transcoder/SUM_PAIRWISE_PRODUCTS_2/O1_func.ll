define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.not.i.i4 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i4, label %bb7, label %bb6

bb6:                                              ; preds = %start, %bb6
  %sum.sroa.0.07 = phi float [ %1, %bb6 ], [ 0.000000e+00, %start ]
  %iter.sroa.7.06 = phi i8 [ %spec.select3, %bb6 ], [ 0, %start ]
  %iter.sroa.0.05 = phi i32 [ %spec.select, %bb6 ], [ 1, %start ]
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.05, %n
  %spec.select3 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.06, i8 1
  %0 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.05, %0
  %_13 = uitofp nneg i32 %iter.sroa.0.05 to float
  %_15 = add nuw i32 %iter.sroa.0.05, 1
  %_14 = sitofp i32 %_15 to float
  %_12 = fmul float %_13, %_14
  %_17 = add nuw i32 %iter.sroa.0.05, 2
  %_16 = sitofp i32 %_17 to float
  %_11 = fmul float %_12, %_16
  %_20 = mul i32 %iter.sroa.0.05, 3
  %_19 = add i32 %_20, 1
  %_18 = sitofp i32 %_19 to float
  %_10 = fmul float %_11, %_18
  %1 = fadd float %sum.sroa.0.07, %_10
  %_10.i.i = trunc nuw i8 %spec.select3 to i1
  %_0.i.not.i.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %bb7, label %bb6

bb7:                                              ; preds = %bb6, %start
  %sum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %1, %bb6 ]
  %_21 = fdiv float %sum.sroa.0.0.lcssa, 2.400000e+01
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_21)
  ret i32 %_0
}
