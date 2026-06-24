define noundef range(i32 -9, 10) i32 @f_gold(i32 noundef %x, i32 noundef %0) unnamed_addr #4 {
start:
  %_4.not = icmp eq i32 %0, 0
  br i1 %_4.not, label %bb3, label %bb1

bb1:                                              ; preds = %start
  %_6 = srem i32 %0, 4
  %1 = add nsw i32 %_6, 4
  %2 = uitofp nneg i32 %1 to float
  br label %bb3

bb3:                                              ; preds = %start, %bb1
  %y.sroa.0.0 = phi float [ %2, %bb1 ], [ 0.000000e+00, %start ]
  %x1 = srem i32 %x, 10
  %_9 = sitofp i32 %x1 to float
  %3 = tail call float @llvm.pow.f32(float %_9, float %y.sroa.0.0)
  %_7 = tail call i32 @llvm.fptosi.sat.i32.f32(float %3)
  %res = srem i32 %_7, 10
  ret i32 %res
}
