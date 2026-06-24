define float @f_gold(float %side) unnamed_addr #3 {
start:
; call std::f32::<impl f32>::sqrt
  %_3 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17hf35b8aa35ac53a1fE"(float 3.000000e+00) #20
  %_2 = fmul float 2.000000e+00, %_3
  %_4 = fmul float %side, %side
  %_0 = fmul float %_2, %_4
  ret float %_0
}
