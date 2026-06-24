define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %n1 = sitofp i32 %n to float
  %_4 = frem float %n1, 2.000000e+00
  %_3 = fcmp oeq float %_4, 1.000000e+00
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}
