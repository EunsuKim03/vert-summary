define noundef range(i32 -1, -2) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %_3 = sitofp i32 %n to float
  %0 = tail call float @llvm.pow.f32(float 3.000000e+00, float %_3)
  %_5 = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %_4 = shl i32 %_5, 1
  %ans = add i32 %_4, -1
  ret i32 %ans
}
