define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %y = alloca [4 x i8], align 4
  %x = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
  store float 0.000000e+00, ptr %x, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_6 = load float, ptr %x, align 4
  %_7 = load float, ptr %x, align 4
  %_5 = fmul float %_6, %_7
  %_8 = sitofp i32 %n to float
  %_4 = fcmp olt float %_5, %_8
  br i1 %_4, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  store float 0.000000e+00, ptr %y, align 4
  br label %bb3

bb3:                                              ; preds = %bb5, %bb2
  %_13 = load float, ptr %x, align 4
  %_14 = load float, ptr %x, align 4
  %_12 = fmul float %_13, %_14
  %_16 = load float, ptr %y, align 4
  %_17 = load float, ptr %y, align 4
  %_15 = fmul float %_16, %_17
  %_11 = fadd float %_12, %_15
  %_18 = sitofp i32 %n to float
  %_10 = fcmp olt float %_11, %_18
  br i1 %_10, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %0 = load float, ptr %x, align 4
  %1 = fadd float %0, 1.000000e+00
  store float %1, ptr %x, align 4
  br label %bb1

bb4:                                              ; preds = %bb3
  %2 = load i32, ptr %res, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %_19.0 = extractvalue { i32, i1 } %3, 0
  %_19.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_19.1, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  store i32 %_19.0, ptr %res, align 4
  %4 = load float, ptr %y, align 4
  %5 = fadd float %4, 1.000000e+00
  store float %5, ptr %y, align 4
  br label %bb3

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_81adebb1259579755c76aeda00d2797f) #22
  unreachable
}
