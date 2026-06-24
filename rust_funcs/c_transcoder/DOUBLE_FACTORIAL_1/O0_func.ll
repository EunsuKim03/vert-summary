define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 1, ptr %res, align 4
  %0 = uitofp i32 %n to float
  store float %0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_5 = load float, ptr %i, align 4
  %_4 = fcmp oge float %_5, 0.000000e+00
  br i1 %_4, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  %1 = load i32, ptr %res, align 4
  store i32 %1, ptr %_0, align 4
  br label %bb8

bb2:                                              ; preds = %bb1
  %_7 = load float, ptr %i, align 4
  %_6 = fcmp oeq float %_7, 0.000000e+00
  br i1 %_6, label %bb4, label %bb3

bb8:                                              ; preds = %bb4, %bb7
  %2 = load i32, ptr %_0, align 4
  ret i32 %2

bb3:                                              ; preds = %bb2
  %_9 = load float, ptr %i, align 4
  %_8 = fcmp oeq float %_9, 1.000000e+00
  br i1 %_8, label %bb4, label %bb5

bb4:                                              ; preds = %bb3, %bb2
  %3 = load i32, ptr %res, align 4
  store i32 %3, ptr %_0, align 4
  br label %bb8

bb5:                                              ; preds = %bb3
  %_11 = load float, ptr %i, align 4
  %_10 = call i32 @llvm.fptoui.sat.i32.f32(float %_11)
  %4 = load i32, ptr %res, align 4
  %5 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 %_10)
  %_12.0 = extractvalue { i32, i1 } %5, 0
  %_12.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_12.1, label %panic, label %bb6

bb6:                                              ; preds = %bb5
  store i32 %_12.0, ptr %res, align 4
  %6 = load float, ptr %i, align 4
  %7 = fsub float %6, 2.000000e+00
  store float %7, ptr %i, align 4
  br label %bb1

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_609fa5b7b1b621b50f1fc27d327c2eb1) #22
  unreachable
}
