define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_5 = add i32 %n, -1
  %_4 = sitofp i32 %_5 to float
  %_3 = fmul float %_4, 9.000000e+00
  %0 = fadd float %_3, 1.900000e+01
  %1 = tail call noundef float @llvm.log10.f32(float %0)
  %_7 = fadd float %1, -1.000000e+00
  %outliers_count = tail call i32 @llvm.fptosi.sat.i32.f32(float %_7)
  %_11 = sitofp i32 %outliers_count to float
  %_10 = fmul float %_11, 9.000000e+00
  %2 = fadd float %0, %_10
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %2)
  ret i32 %_0
}
