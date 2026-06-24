define float @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_5 = sitofp i32 %a to float
  %_6 = sitofp i32 %b to float
  %_4 = fadd float %_5, %_6
  %am = fdiv float %_4, 2.000000e+00
  %_9 = sitofp i32 %a to float
  %_10 = sitofp i32 %b to float
  %_8 = fmul float %_9, %_10
; call std::f32::<impl f32>::sqrt
  %gm = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h67f0485816bd91ccE"(float %_8) #20
  %_11 = fmul float %gm, %gm
  %hm = fdiv float %_11, %am
  ret float %hm
}
