define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %z = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store float 0.000000e+00, ptr %z, align 4
  %_7 = sitofp i32 %n to float
  %_5 = fmul float 0x40191EB860000000, %_7
; call std::f32::<impl f32>::sqrt
  %_4 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h2fc38860f17336acE"(float %_5) #20
  %_10 = sitofp i32 %n to float
  %_9 = fdiv float %_10, 0x4005AE1480000000
  %_12 = sitofp i32 %n to float
; call std::f32::<impl f32>::powf
  %_8 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4powf17h9f6888f59943ae84E"(float %_9, float %_12) #20
  %0 = fmul float %_4, %_8
  store float %0, ptr %z, align 4
  %_13 = load float, ptr %z, align 4
  %1 = call i32 @llvm.fptosi.sat.i32.f32(float %_13)
  store i32 %1, ptr %_0, align 4
  br label %bb5

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb5

bb5:                                              ; preds = %bb1, %bb2
  %2 = load i32, ptr %_0, align 4
  ret i32 %2
}
