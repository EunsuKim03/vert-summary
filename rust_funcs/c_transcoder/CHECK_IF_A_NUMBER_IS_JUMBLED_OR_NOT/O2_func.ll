define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %0) unnamed_addr #4 {
start:
  %.off = add i32 %0, 9
  %_2 = icmp ult i32 %.off, 19
  br i1 %_2, label %bb8, label %bb3

bb3:                                              ; preds = %start, %bb4
  %num.sroa.0.0 = phi i32 [ %_10, %bb4 ], [ %0, %start ]
  %_5.not = icmp eq i32 %num.sroa.0.0, 0
  br i1 %_5.not, label %bb8, label %bb4

bb4:                                              ; preds = %bb3
  %digit1 = srem i32 %num.sroa.0.0, 10
  %_10 = sdiv i32 %num.sroa.0.0, 10
  %digit2 = srem i32 %_10, 10
  %1 = sub nsw i32 %digit2, %digit1
  %_14 = sitofp i32 %1 to float
  %2 = tail call float @llvm.fabs.f32(float %_14)
  %_12 = fcmp ogt float %2, 1.000000e+00
  br i1 %_12, label %bb8, label %bb3

bb8:                                              ; preds = %bb4, %bb3, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb4 ], [ 1, %bb3 ]
  ret i32 %_0.sroa.0.0
}
