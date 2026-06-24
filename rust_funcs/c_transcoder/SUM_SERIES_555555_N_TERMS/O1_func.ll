define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_6 = sitofp i32 %n to float
  %0 = tail call noundef float @llvm.pow.f32(float 1.000000e+01, float %_6)
  %_4 = fadd float %0, -1.000000e+00
  %_3 = fmul float %_4, 0x3FE3C01A40000000
  %_7 = fmul float %_6, 0x3FE19999A0000000
  %_2 = fsub float %_3, %_7
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_2)
  ret i32 %_0
}
