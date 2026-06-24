define i32 @f_gold(float %a, float %b, float %c, float %d) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_7 = fmul float %a, %a
  %_8 = fmul float %b, %b
  %_6 = fadd float %_7, %_8
  %_9 = fmul float %c, %c
  %sum = fadd float %_6, %_9
  %_11 = fmul float %d, %d
  %_10 = fcmp oeq float %_11, %sum
  br i1 %_10, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}
