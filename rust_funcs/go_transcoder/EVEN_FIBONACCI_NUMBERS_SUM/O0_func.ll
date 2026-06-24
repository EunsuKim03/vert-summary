define i32 @f_gold(i32 %limit) unnamed_addr #3 {
start:
  %sum = alloca [4 x i8], align 4
  %ef2 = alloca [4 x i8], align 4
  %ef1 = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp slt i32 %limit, 2
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store float 0.000000e+00, ptr %ef1, align 4
  store float 2.000000e+00, ptr %ef2, align 4
  %_6 = load float, ptr %ef1, align 4
  %_7 = load float, ptr %ef2, align 4
  %0 = fadd float %_6, %_7
  store float %0, ptr %sum, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb7

bb3:                                              ; preds = %bb5, %bb2
  %_9 = load float, ptr %ef2, align 4
  %_10 = sitofp i32 %limit to float
  %_8 = fcmp ole float %_9, %_10
  br i1 %_8, label %bb4, label %bb6

bb6:                                              ; preds = %bb4, %bb3
  %_19 = load float, ptr %sum, align 4
  %1 = call i32 @llvm.fptosi.sat.i32.f32(float %_19)
  store i32 %1, ptr %_0, align 4
  br label %bb7

bb4:                                              ; preds = %bb3
  %_13 = load float, ptr %ef2, align 4
  %_12 = fmul float 4.000000e+00, %_13
  %_14 = load float, ptr %ef1, align 4
  %ef3 = fadd float %_12, %_14
  %_16 = sitofp i32 %limit to float
  %_15 = fcmp ogt float %ef3, %_16
  br i1 %_15, label %bb6, label %bb5

bb5:                                              ; preds = %bb4
  %_17 = load float, ptr %ef2, align 4
  store float %_17, ptr %ef1, align 4
  store float %ef3, ptr %ef2, align 4
  %_18 = load float, ptr %ef2, align 4
  %2 = load float, ptr %sum, align 4
  %3 = fadd float %2, %_18
  store float %3, ptr %sum, align 4
  br label %bb3

bb7:                                              ; preds = %bb1, %bb6
  %4 = load i32, ptr %_0, align 4
  ret i32 %4
}
