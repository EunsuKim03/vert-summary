define noundef float @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %0 = tail call float @llvm.powi.f32.i32(float 1.000000e+01, i32 %n)
  %_3 = fdiv float 1.000000e+00, %0
  %_2 = fsub float 1.000000e+00, %_3
  %_0 = fmul float %_2, 0x3FE54FDF40000000
  ret float %_0
}
