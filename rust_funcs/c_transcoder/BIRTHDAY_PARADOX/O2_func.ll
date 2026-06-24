define noundef i32 @f_gold(float noundef %p) unnamed_addr #4 {
start:
  %_6 = fsub float 1.000000e+00, %p
  %_4 = fdiv float 0x3FEFFFFFE0000000, %_6
  %_3 = fmul float %_4, 0x40802180E0000000
  %0 = tail call float @llvm.ceil.f32(float %_3)
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  ret i32 %_0
}
