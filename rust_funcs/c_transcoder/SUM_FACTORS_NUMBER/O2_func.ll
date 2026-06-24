define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_5 = sitofp i32 %n to float
  %0 = tail call float @llvm.sqrt.f32(float %_5)
  %sqrt_n = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %_0.i.not.i17 = icmp slt i32 %sqrt_n, 2
  br i1 %_0.i.not.i17, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb2.i
  %result.sroa.0.019 = phi i32 [ %result.sroa.0.1, %bb2.i ], [ 0, %start ]
  %iter.sroa.0.018 = phi i32 [ %spec.select16, %bb2.i ], [ 2, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.018, %sqrt_n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %1 = zext i1 %not._0.i3.i to i32
  %spec.select16 = add nuw nsw i32 %iter.sroa.0.018, %1
  %_13 = srem i32 %n, %iter.sroa.0.018
  %_19 = sdiv i32 %n, %iter.sroa.0.018
  %_12 = icmp eq i32 %_13, 0
  %_18 = icmp eq i32 %iter.sroa.0.018, %_19
  %2 = add i32 %result.sroa.0.019, %iter.sroa.0.018
  %3 = select i1 %_18, i32 0, i32 %_19
  %spec.select = add i32 %2, %3
  %result.sroa.0.1 = select i1 %_12, i32 %spec.select, i32 %result.sroa.0.019
  %_0.i.not.i = icmp sgt i32 %spec.select16, %sqrt_n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb4:                                              ; preds = %bb2.i, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1, %bb2.i ]
  %_21 = add i32 %n, 1
  %_0 = add i32 %_21, %result.sroa.0.0.lcssa
  ret i32 %_0
}
