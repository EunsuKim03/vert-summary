define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_5 = sitofp i32 %n to float
; call std::f32::<impl f32>::ln
  %_4 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$2ln17h4c0b19d2e0c0931dE"(float %_5) #20
  %_3 = fmul float 0x40009FEC20000000, %_4
  %fibo = fadd float %_3, 0x3FFAC1A480000000
; call std::f32::<impl f32>::round
  %_6 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5round17h007db6b46e79188eE"(float %fibo) #20
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_6)
  ret i32 %_0
}
