define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #6 {
start:
  %_3 = icmp eq i32 %a, 0
  %_4 = icmp eq i32 %b, 0
  %or.cond = or i1 %_3, %_4
  br i1 %or.cond, label %bb9, label %bb3

bb3:                                              ; preds = %start
  %a1 = sitofp i32 %a to float
  %b2 = sitofp i32 %b to float
  %0 = tail call noundef float @llvm.fabs.f32(float %a1)
  %1 = tail call noundef float @llvm.fabs.f32(float %b2)
  %2 = tail call noundef float @llvm.log10.f32(float %0)
  %3 = tail call noundef float @llvm.log10.f32(float %1)
  %sum = fadd float %2, %3
  %4 = tail call noundef float @llvm.floor.f32(float %sum)
  %_12 = tail call i32 @llvm.fptosi.sat.i32.f32(float %4)
  %5 = add i32 %_12, 1
  br label %bb9

bb9:                                              ; preds = %start, %bb3
  %ans.sroa.0.0 = phi i32 [ %5, %bb3 ], [ 1, %start ]
  ret i32 %ans.sroa.0.0
}
