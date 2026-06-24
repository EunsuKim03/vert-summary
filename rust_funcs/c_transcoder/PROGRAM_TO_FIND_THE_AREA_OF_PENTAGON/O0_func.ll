define float @f_gold(float %a) unnamed_addr #3 {
start:
; call std::f32::<impl f32>::sqrt
  %_8 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17hd298cb17cb841082E"(float 5.000000e+00) #20
  %_7 = fmul float 2.000000e+00, %_8
  %_6 = fadd float 5.000000e+00, %_7
  %_5 = fmul float 5.000000e+00, %_6
; call std::f32::<impl f32>::sqrt
  %_4 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17hd298cb17cb841082E"(float %_5) #20
  %_3 = fmul float %_4, %a
  %_2 = fmul float %_3, %a
  %area = fdiv float %_2, 4.000000e+00
  ret float %area
}
