define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_6 = sitofp i32 %a to float
  %_5 = fmul float %_6, 5.000000e-01
  %_4 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_5)
  %_9 = sitofp i32 %b to float
  %_8 = fmul float %_9, 5.000000e-01
  %_7 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_8)
  %_3 = add i32 %_7, %_4
  %_14 = srem i32 %a, 2
  %_15 = srem i32 %b, 2
  %_13 = add nsw i32 %_15, %_14
  %_12 = sitofp i32 %_13 to float
  %_11 = fmul float %_12, 5.000000e-01
  %_10 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_11)
  %_0 = add i32 %_3, %_10
  ret i32 %_0
}
