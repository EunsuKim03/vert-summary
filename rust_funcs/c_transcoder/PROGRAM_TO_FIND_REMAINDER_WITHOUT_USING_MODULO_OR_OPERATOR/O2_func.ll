define noundef i32 @f_gold(i32 noundef %num, i32 noundef %divisor) unnamed_addr #4 {
start:
  %0 = sitofp i32 %num to float
  %div = sitofp i32 %divisor to float
  %quot = fdiv float %0, %div
  %_8 = fmul float %quot, %div
  %1 = fsub float %0, %_8
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  ret i32 %_0
}
