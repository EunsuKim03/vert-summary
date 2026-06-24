define noundef float @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_5 = sitofp i32 %a to float
  %_6 = sitofp i32 %b to float
  %_4 = fadd float %_5, %_6
  %am = fmul float %_4, 5.000000e-01
  %_8 = fmul float %_5, %_6
  %0 = tail call float @llvm.sqrt.f32(float %_8)
  %_9 = fmul float %0, %0
  %hm = fdiv float %_9, %am
  ret float %hm
}
