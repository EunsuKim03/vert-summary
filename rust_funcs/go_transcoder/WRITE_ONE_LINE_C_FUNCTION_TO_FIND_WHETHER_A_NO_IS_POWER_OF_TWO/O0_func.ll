define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %n1 = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = sitofp i32 %n to float
  store float %0, ptr %n1, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb8

bb3:                                              ; preds = %bb6, %bb2
  %_5 = load float, ptr %n1, align 4
  %_4 = fcmp une float %_5, 1.000000e+00
  br i1 %_4, label %bb4, label %bb7

bb7:                                              ; preds = %bb3
  store i32 1, ptr %_0, align 4
  br label %bb8

bb4:                                              ; preds = %bb3
  %_8 = load float, ptr %n1, align 4
  %_7 = frem float %_8, 2.000000e+00
  %_6 = fcmp une float %_7, 0.000000e+00
  br i1 %_6, label %bb5, label %bb6

bb8:                                              ; preds = %bb1, %bb5, %bb7
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb6:                                              ; preds = %bb4
  %_9 = load float, ptr %n1, align 4
  %2 = fdiv float %_9, 2.000000e+00
  store float %2, ptr %n1, align 4
  br label %bb3

bb5:                                              ; preds = %bb4
  store i32 0, ptr %_0, align 4
  br label %bb8
}
