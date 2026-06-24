define float @f_gold(i32 %side) unnamed_addr #3 {
start:
; call std::f32::<impl f32>::sqrt
  %root_5 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17hc16df2bba6050428E"(float 5.000000e+00) #20
  %_5 = fmul float 7.000000e+00, %root_5
  %_4 = fadd float 1.500000e+01, %_5
  %constant = fdiv float %_4, 4.000000e+00
  %side_f32 = sitofp i32 %side to float
; call std::f32::<impl f32>::powi
  %side_cubed = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4powi17h1d902ce68560532fE"(float %side_f32, i32 3) #20
  %_0 = fmul float %constant, %side_cubed
  ret float %_0
}
