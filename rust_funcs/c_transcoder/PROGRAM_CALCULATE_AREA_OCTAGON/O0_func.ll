define float @f_gold(float %side) unnamed_addr #3 {
start:
; call std::f32::<impl f32>::sqrt
  %root_two = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17he1a2add2c568652eE"(float 2.000000e+00) #20
  %_6 = fadd float 1.000000e+00, %root_two
  %_4 = fmul float 2.000000e+00, %_6
  %_3 = fmul float %_4, %side
  %area = fmul float %_3, %side
  ret float %area
}
