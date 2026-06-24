define float @f_gold(float %s) unnamed_addr #3 {
start:
; call std::f32::<impl f32>::sqrt
  %_5 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h0001cee8c235dd39E"(float 3.000000e+00) #20
  %_4 = fmul float 3.000000e+00, %_5
  %_3 = fmul float %_4, %s
  %_2 = fmul float %_3, %s
  %_0 = fdiv float %_2, 2.000000e+00
  ret float %_0
}
