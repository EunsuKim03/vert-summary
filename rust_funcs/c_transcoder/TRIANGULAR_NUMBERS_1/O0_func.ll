define i32 @f_gold(i32 %num) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp slt i32 %num, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 -2, i32 %num)
  %_5.0 = extractvalue { i32, i1 } %0, 0
  %_5.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_5.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb16

bb3:                                              ; preds = %bb2
  %c = sitofp i32 %_5.0 to float
  %_10 = fmul float 4.000000e+00, %c
  %d = fsub float 1.000000e+00, %_10
  %_12 = fcmp olt float %d, 0.000000e+00
  br i1 %_12, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2840a4e72ef46ff27868902e88577023) #22
  unreachable

bb5:                                              ; preds = %bb3
; call std::f32::<impl f32>::sqrt
  %_16 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h5f75ea219f2b83cdE"(float %d) #20
  %_14 = fadd float -1.000000e+00, %_16
  %root1 = fdiv float %_14, 2.000000e+00
; call std::f32::<impl f32>::sqrt
  %_21 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h5f75ea219f2b83cdE"(float %d) #20
  %_19 = fsub float -1.000000e+00, %_21
  %root2 = fdiv float %_19, 2.000000e+00
  %_23 = fcmp ogt float %root1, 0.000000e+00
  br i1 %_23, label %bb8, label %bb11

bb4:                                              ; preds = %bb3
  store i32 0, ptr %_0, align 4
  br label %bb16

bb11:                                             ; preds = %bb8, %bb5
  %_26 = fcmp ogt float %root2, 0.000000e+00
  br i1 %_26, label %bb12, label %bb15

bb8:                                              ; preds = %bb5
; call std::f32::<impl f32>::floor
  %_25 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5floor17h53606f35c34ceeecE"(float %root1) #20
  %_24 = fcmp oeq float %_25, %root1
  br i1 %_24, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  store i32 1, ptr %_0, align 4
  br label %bb16

bb15:                                             ; preds = %bb12, %bb11
  store i32 0, ptr %_0, align 4
  br label %bb16

bb12:                                             ; preds = %bb11
; call std::f32::<impl f32>::floor
  %_28 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5floor17h53606f35c34ceeecE"(float %root2) #20
  %_27 = fcmp oeq float %_28, %root2
  br i1 %_27, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  store i32 1, ptr %_0, align 4
  br label %bb16

bb16:                                             ; preds = %bb1, %bb4, %bb10, %bb14, %bb15
  %1 = load i32, ptr %_0, align 4
  ret i32 %1
}
