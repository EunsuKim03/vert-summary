define i32 @f_gold(i32 %num, i32 %divisor) unnamed_addr #3 {
start:
  %rem = alloca [4 x i8], align 4
  %0 = sitofp i32 %num to float
  store float %0, ptr %rem, align 4
  %div = sitofp i32 %divisor to float
  %_6 = load float, ptr %rem, align 4
  %quot = fdiv float %_6, %div
  %_7 = load float, ptr %rem, align 4
  %_8 = fmul float %quot, %div
  %1 = fsub float %_7, %_8
  store float %1, ptr %rem, align 4
  %_9 = load float, ptr %rem, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_9)
  ret i32 %_0
}
