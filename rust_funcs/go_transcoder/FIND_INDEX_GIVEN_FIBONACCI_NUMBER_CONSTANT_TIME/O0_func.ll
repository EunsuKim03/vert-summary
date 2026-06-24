define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %res = alloca [4 x i8], align 4
  %c = alloca [4 x i8], align 4
  %b = alloca [4 x i8], align 4
  %a = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp sle i32 %n, 1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store float 0.000000e+00, ptr %a, align 4
  store float 1.000000e+00, ptr %b, align 4
  store float 1.000000e+00, ptr %c, align 4
  store i32 1, ptr %res, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 %n, ptr %_0, align 4
  br label %bb7

bb3:                                              ; preds = %bb5, %bb2
  %_8 = load float, ptr %c, align 4
  %_9 = sitofp i32 %n to float
  %_7 = fcmp olt float %_8, %_9
  br i1 %_7, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %0 = load i32, ptr %res, align 4
  store i32 %0, ptr %_0, align 4
  br label %bb7

bb4:                                              ; preds = %bb3
  %_10 = load float, ptr %a, align 4
  %_11 = load float, ptr %b, align 4
  %1 = fadd float %_10, %_11
  store float %1, ptr %c, align 4
  %2 = load i32, ptr %res, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %_12.0 = extractvalue { i32, i1 } %3, 0
  %_12.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_12.1, label %panic, label %bb5

bb7:                                              ; preds = %bb1, %bb6
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb5:                                              ; preds = %bb4
  store i32 %_12.0, ptr %res, align 4
  %_13 = load float, ptr %b, align 4
  store float %_13, ptr %a, align 4
  %_14 = load float, ptr %c, align 4
  store float %_14, ptr %b, align 4
  br label %bb3

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a81c3224d75126e1624582a7ba595843) #22
  unreachable
}
