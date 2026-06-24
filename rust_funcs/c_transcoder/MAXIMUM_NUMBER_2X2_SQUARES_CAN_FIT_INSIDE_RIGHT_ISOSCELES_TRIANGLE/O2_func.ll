define noundef i32 @f_gold(i32 noundef %base) unnamed_addr #4 {
start:
  %_3 = add i32 %base, -2
  %0 = sitofp i32 %_3 to float
  %1 = fmul float %0, 5.000000e-01
  %_8 = fadd float %1, 1.000000e+00
  %_6 = fmul float %1, %_8
  %_5 = fmul float %_6, 5.000000e-01
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_5)
  ret i32 %_0
}
