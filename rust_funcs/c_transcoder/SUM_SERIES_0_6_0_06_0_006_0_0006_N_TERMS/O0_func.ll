define float @f_gold(i32 %n) unnamed_addr #3 {
start:
; call std::f32::<impl f32>::powi
  %_4 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4powi17h7ef4c56ee482db42E"(float 1.000000e+01, i32 %n) #20
  %_3 = fdiv float 1.000000e+00, %_4
  %_2 = fsub float 1.000000e+00, %_3
  %_0 = fmul float 0x3FE54FDF40000000, %_2
  ret float %_0
}
