define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #4 {
start:
  %_9 = sitofp i32 %n to float
  %_8 = fmul float %_9, 8.000000e+00
  %_7 = fadd float %_8, 1.000000e+00
  %1 = tail call float @llvm.sqrt.f32(float %_7)
  %_5 = fadd float %1, -1.000000e+00
  %2 = tail call float @llvm.floor.f32(float %_5)
  %_3 = fmul float %2, 5.000000e-01
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_3)
  ret i32 %_0
}
