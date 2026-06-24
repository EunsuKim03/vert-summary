define float @f_gold(float %a, float %b) unnamed_addr #3 {
start:
  %b1 = alloca [4 x i8], align 4
  %mod_a = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_4 = fcmp olt float %a, 0.000000e+00
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store float %a, ptr %mod_a, align 4
  br label %bb3

bb1:                                              ; preds = %start
  %0 = fneg float %a
  store float %0, ptr %mod_a, align 4
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  store float %b, ptr %b1, align 4
  %_7 = load float, ptr %b1, align 4
  %_6 = fcmp olt float %_7, 0.000000e+00
  br i1 %_6, label %bb4, label %bb5

bb5:                                              ; preds = %bb6, %bb4, %bb3
  %_10 = load float, ptr %mod_a, align 4
  %_11 = load float, ptr %b1, align 4
  %_9 = fcmp oge float %_10, %_11
  br i1 %_9, label %bb6, label %bb7

bb4:                                              ; preds = %bb3
  %_8 = load float, ptr %b1, align 4
  %1 = fneg float %_8
  store float %1, ptr %b1, align 4
  br label %bb5

bb7:                                              ; preds = %bb5
  %_13 = fcmp olt float %a, 0.000000e+00
  br i1 %_13, label %bb8, label %bb9

bb6:                                              ; preds = %bb5
  %_12 = load float, ptr %b1, align 4
  %2 = load float, ptr %mod_a, align 4
  %3 = fsub float %2, %_12
  store float %3, ptr %mod_a, align 4
  br label %bb5

bb9:                                              ; preds = %bb7
  %4 = load float, ptr %mod_a, align 4
  store float %4, ptr %_0, align 4
  br label %bb10

bb8:                                              ; preds = %bb7
  %_14 = load float, ptr %mod_a, align 4
  %5 = fneg float %_14
  store float %5, ptr %_0, align 4
  br label %bb10

bb10:                                             ; preds = %bb8, %bb9
  %6 = load float, ptr %_0, align 4
  ret float %6
}
