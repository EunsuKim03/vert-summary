define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_4 = sitofp i32 %n to float
  %_6 = add i32 %n, 1
  %_5 = sitofp i32 %_6 to float
  %_3 = fmul float %_4, %_5
  %0 = fmul float %_3, 5.000000e-01
  %_0.i.not.i.i3 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i3, label %bb7, label %bb6

bb6:                                              ; preds = %start, %bb6
  %multi_terms.sroa.0.07 = phi float [ %2, %bb6 ], [ %0, %start ]
  %sum.sroa.0.06 = phi float [ %3, %bb6 ], [ %0, %start ]
  %iter.sroa.7.05 = phi i8 [ %spec.select2, %bb6 ], [ 0, %start ]
  %iter.sroa.0.04 = phi i32 [ %spec.select, %bb6 ], [ 2, %start ]
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.04, %n
  %spec.select2 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.05, i8 1
  %1 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.04, %1
  %_17 = add nsw i32 %iter.sroa.0.04, -1
  %_16 = sitofp i32 %_17 to float
  %2 = fsub float %multi_terms.sroa.0.07, %_16
  %_21 = uitofp nneg i32 %iter.sroa.0.04 to float
  %_19 = fmul float %2, %_21
  %3 = fadd float %sum.sroa.0.06, %_19
  %_10.i.i = trunc nuw i8 %spec.select2 to i1
  %_0.i.not.i.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %bb7, label %bb6

bb7:                                              ; preds = %bb6, %start
  %sum.sroa.0.0.lcssa = phi float [ %0, %start ], [ %3, %bb6 ]
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %sum.sroa.0.0.lcssa)
  ret i32 %_0
}
