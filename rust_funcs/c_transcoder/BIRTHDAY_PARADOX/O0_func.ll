define i32 @f_gold(float %p) unnamed_addr #3 {
start:
; call std::f32::<impl f32>::ln
  %_6 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$2ln17h6a755f55b4dac860E"(float 0x4005BF0A80000000) #20
  %_7 = fsub float 1.000000e+00, %p
  %_5 = fdiv float %_6, %_7
  %_3 = fmul float 0x40802180E0000000, %_5
; call std::f32::<impl f32>::ceil
  %_2 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4ceil17hb96cc12e49fe7446E"(float %_3) #20
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_2)
  ret i32 %_0
}
