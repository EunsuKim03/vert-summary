define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_5 = sitofp i32 %n to float
  %0 = tail call float @llvm.log.f32(float %_5)
  %_3 = fmul float %0, 0x40009FEC20000000
  %fibo = fadd float %_3, 0x3FFAC1A480000000
  %1 = tail call float @llvm.round.f32(float %fibo)
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  ret i32 %_0
}
