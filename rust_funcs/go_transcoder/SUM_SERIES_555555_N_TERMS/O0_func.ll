define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = sitofp i32 %n to float
; call std::f32::<impl f32>::powf
  %_5 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4powf17hc7029e4060efa742E"(float 1.000000e+01, float %_6) #20
  %_4 = fsub float %_5, 1.000000e+00
  %_3 = fmul float 0x3FE3C01A40000000, %_4
  %_8 = sitofp i32 %n to float
  %_7 = fmul float 0x3FE19999A0000000, %_8
  %_2 = fsub float %_3, %_7
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_2)
  ret i32 %_0
}
