define i32 @f_gold(i32 %n, i32 %m) unnamed_addr #3 {
start:
  %n1 = sitofp i32 %n to float
  %m2 = sitofp i32 %m to float
  %_7 = fadd float %n1, 1.000000e+00
  %_6 = fmul float %n1, %_7
  %temp1 = fmul float %_6, 5.000000e-01
  %_10 = fadd float %m2, 1.000000e+00
  %_9 = fmul float %m2, %_10
  %temp2 = fmul float %_9, 5.000000e-01
  %_11 = fmul float %temp1, %temp2
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_11)
  ret i32 %_0
}
