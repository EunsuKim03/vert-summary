define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_3 = sitofp i32 %n to float
  %_5 = add i32 %n, -1
  %_4 = sitofp i32 %_5 to float
  %result = fmul float %_3, %_4
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %result)
  ret i32 %_0
}
