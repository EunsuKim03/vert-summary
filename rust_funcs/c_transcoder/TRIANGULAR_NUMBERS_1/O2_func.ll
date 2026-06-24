define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %num) unnamed_addr #4 {
start:
  %_2 = icmp slt i32 %num, 0
  br i1 %_2, label %bb14, label %bb2

bb2:                                              ; preds = %start
  %_4 = mul i32 %num, -2
  %c = sitofp i32 %_4 to float
  %_6 = fmul float %c, 4.000000e+00
  %d = fsub float 1.000000e+00, %_6
  %_7 = fcmp olt float %d, 0.000000e+00
  br i1 %_7, label %bb14, label %bb4

bb4:                                              ; preds = %bb2
  %0 = tail call float @llvm.sqrt.f32(float %d)
  %_9 = fadd float %0, -1.000000e+00
  %root1 = fmul float %_9, 5.000000e-01
  %_14 = fcmp ogt float %root1, 0.000000e+00
  %1 = tail call float @llvm.floor.f32(float %root1)
  %_15 = fcmp oeq float %1, %root1
  %or.cond = and i1 %_14, %_15
  br i1 %or.cond, label %bb14, label %bb8

bb8:                                              ; preds = %bb4
  %_12 = fsub float -1.000000e+00, %0
  %root2 = fmul float %_12, 5.000000e-01
  %_17 = fcmp ogt float %root2, 0.000000e+00
  %2 = tail call float @llvm.floor.f32(float %root2)
  %_18 = fcmp oeq float %2, %root2
  %or.cond4 = and i1 %_17, %_18
  %spec.select = zext i1 %or.cond4 to i32
  br label %bb14

bb14:                                             ; preds = %bb8, %bb4, %bb2, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 0, %bb2 ], [ 1, %bb4 ], [ %spec.select, %bb8 ]
  ret i32 %_0.sroa.0.0
}
