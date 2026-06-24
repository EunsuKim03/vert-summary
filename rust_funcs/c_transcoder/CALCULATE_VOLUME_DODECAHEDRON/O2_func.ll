define noundef float @f_gold(i32 noundef %side) unnamed_addr #4 {
start:
  %side_f32 = sitofp i32 %side to float
  %0 = tail call float @llvm.powi.f32.i32(float %side_f32, i32 3)
  %_0 = fmul float %0, 0x401EA708C0000000
  ret float %_0
}
