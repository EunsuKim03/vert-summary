define noundef i32 @f_gold(i32 noundef %n, i32 noundef %k) unnamed_addr #4 {
start:
  %0 = and i32 %k, 1
  %_4.not = icmp eq i32 %0, 0
  %spec.store.select = select i1 %_4.not, i32 1, i32 -1
  %n1 = sitofp i32 %n to float
  %k2 = sitofp i32 %k to float
  %_10 = fadd float %n1, -1.000000e+00
  %1 = tail call float @llvm.pow.f32(float %_10, float %k2)
  %_12 = sitofp i32 %spec.store.select to float
  %_11 = fmul float %_10, %_12
  %calc = fadd float %1, %_11
  %_13 = fdiv float %calc, %n1
  %res = tail call i32 @llvm.fptosi.sat.i32.f32(float %_13)
  ret i32 %res
}
