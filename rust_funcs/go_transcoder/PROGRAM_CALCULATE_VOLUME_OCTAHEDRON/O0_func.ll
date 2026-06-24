define float @f_gold(float %side) unnamed_addr #3 {
start:
  %_3 = fmul float %side, %side
  %side3 = fmul float %_3, %side
; call std::f32::<impl f32>::sqrt
  %_5 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h9c614c2c9e2ca320E"(float 2.000000e+00) #20
  %sqrt2_div_3 = fdiv float %_5, 3.000000e+00
  %_0 = fmul float %side3, %sqrt2_div_3
  ret float %_0
}
