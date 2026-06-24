define float @f_gold(float %a, float %b) unnamed_addr #3 {
start:
  %mod_a = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call core::f32::<impl f32>::abs
  %0 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3abs17h86f904f61d3a480bE"(float %a) #20
  store float %0, ptr %mod_a, align 4
; call core::f32::<impl f32>::abs
  %b1 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3abs17h86f904f61d3a480bE"(float %b) #20
  br label %bb2

bb2:                                              ; preds = %bb3, %start
  %_6 = load float, ptr %mod_a, align 4
  %_5 = fcmp oge float %_6, %b1
  br i1 %_5, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %_7 = fcmp olt float %a, 0.000000e+00
  br i1 %_7, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  %1 = load float, ptr %mod_a, align 4
  %2 = fsub float %1, %b1
  store float %2, ptr %mod_a, align 4
  br label %bb2

bb6:                                              ; preds = %bb4
  %3 = load float, ptr %mod_a, align 4
  store float %3, ptr %_0, align 4
  br label %bb7

bb5:                                              ; preds = %bb4
  %_8 = load float, ptr %mod_a, align 4
  %4 = fneg float %_8
  store float %4, ptr %_0, align 4
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %5 = load float, ptr %_0, align 4
  ret float %5
}
