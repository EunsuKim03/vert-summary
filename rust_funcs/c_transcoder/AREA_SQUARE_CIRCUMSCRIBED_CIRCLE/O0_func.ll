define i32 @f_gold(i32 %r) unnamed_addr #3 {
start:
  %r1 = sitofp i32 %r to float
  %_4 = fmul float 2.000000e+00, %r1
  %_3 = fmul float %_4, %r1
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_3)
  ret i32 %_0
}
