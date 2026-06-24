define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %n1 = sitofp i32 %n to float
  %_3 = fmul float %n1, 2.000000e+00
  %0 = fadd float %_3, 1.000000e+00
  %_6 = mul i32 %n, %n
  %n2 = sitofp i32 %_6 to float
  %_9 = fadd float %n1, -1.000000e+00
  %_8 = fmul float %_9, %n2
  %_7 = fmul float %_8, 5.000000e-01
  %1 = fadd float %0, %_7
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  ret i32 %_0
}
