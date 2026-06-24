define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %0 = sitofp i32 %n to float
  %_4 = fmul float %0, 2.000000e+00
  %_3 = fadd float %_4, -1.000000e+00
  %1 = fmul float %_3, %0
  %_6 = fadd float %_4, 1.000000e+00
  %2 = fmul float %_6, %1
  %3 = fdiv float %2, 3.000000e+00
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %3)
  ret i32 %_0
}
