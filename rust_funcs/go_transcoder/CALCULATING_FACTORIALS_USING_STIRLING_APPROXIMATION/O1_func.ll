define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_2 = icmp eq i32 %n, 1
  br i1 %_2, label %bb5, label %bb2

bb2:                                              ; preds = %start
  %_6 = sitofp i32 %n to float
  %_5 = fmul float %_6, 0x40191EB860000000
  %0 = tail call noundef float @llvm.sqrt.f32(float %_5)
  %_8 = fdiv float %_6, 0x4005AE1480000000
  %1 = tail call noundef float @llvm.pow.f32(float %_8, float %_6)
  %2 = fmul float %0, %1
  %3 = tail call i32 @llvm.fptosi.sat.i32.f32(float %2)
  br label %bb5

bb5:                                              ; preds = %start, %bb2
  %_0.sroa.0.0 = phi i32 [ %3, %bb2 ], [ 1, %start ]
  ret i32 %_0.sroa.0.0
}
