define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_2 = icmp slt i32 %n, 0
  br i1 %_2, label %bb9, label %bb2

bb2:                                              ; preds = %start
  %_3 = icmp samesign ult i32 %n, 2
  br i1 %_3, label %bb9, label %bb2.i

bb2.i:                                            ; preds = %bb2, %bb2.i
  %digits.sroa.0.013 = phi float [ %2, %bb2.i ], [ 0.000000e+00, %bb2 ]
  %iter.sroa.0.012 = phi i32 [ %spec.select11, %bb2.i ], [ 2, %bb2 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.012, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select11 = add nuw nsw i32 %iter.sroa.0.012, %0
  %_12 = uitofp nneg i32 %iter.sroa.0.012 to float
  %1 = tail call float @llvm.log10.f32(float %_12)
  %2 = fadd float %digits.sroa.0.013, %1
  %_0.i.not.i = icmp sgt i32 %spec.select11, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb8, label %bb2.i

bb8:                                              ; preds = %bb2.i
  %3 = tail call float @llvm.floor.f32(float %2)
  %_13 = tail call i32 @llvm.fptosi.sat.i32.f32(float %3)
  %4 = add i32 %_13, 1
  br label %bb9

bb9:                                              ; preds = %bb2, %start, %bb8
  %_0.sroa.0.0 = phi i32 [ %4, %bb8 ], [ 0, %start ], [ 1, %bb2 ]
  ret i32 %_0.sroa.0.0
}
