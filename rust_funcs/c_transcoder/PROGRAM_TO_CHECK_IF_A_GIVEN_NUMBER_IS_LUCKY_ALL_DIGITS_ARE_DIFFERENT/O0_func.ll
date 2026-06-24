define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %n1 = alloca [4 x i8], align 4
  %arr = alloca [40 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  call void @llvm.memset.p0.i64(ptr align 4 %arr, i8 0, i64 40, i1 false)
  %0 = sitofp i32 %n to float
  store float %0, ptr %n1, align 4
  br label %bb1

bb1:                                              ; preds = %bb7, %start
  %_5 = load float, ptr %n1, align 4
  %_4 = fcmp ogt float %_5, 0.000000e+00
  br i1 %_4, label %bb2, label %bb8

bb8:                                              ; preds = %bb1
  store i32 1, ptr %_0, align 4
  br label %bb9

bb2:                                              ; preds = %bb1
  %_8 = load float, ptr %n1, align 4
  %_7 = frem float %_8, 1.000000e+01
  %digit = call i64 @llvm.fptoui.sat.i64.f32(float %_7)
  %_11 = icmp ult i64 %digit, 10
  br i1 %_11, label %bb3, label %panic

bb9:                                              ; preds = %bb4, %bb8
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb3:                                              ; preds = %bb2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %digit
  %_10 = load i32, ptr %2, align 4
  %_9 = icmp sgt i32 %_10, 0
  br i1 %_9, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %digit, i64 10, ptr align 8 @alloc_006ede1deb6f58bff687c655ab2532ac) #22
  unreachable

bb5:                                              ; preds = %bb3
  %_12 = icmp ult i64 %digit, 10
  br i1 %_12, label %bb6, label %panic2

bb4:                                              ; preds = %bb3
  store i32 0, ptr %_0, align 4
  br label %bb9

bb6:                                              ; preds = %bb5
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %digit
  %4 = load i32, ptr %3, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %_13.0 = extractvalue { i32, i1 } %5, 0
  %_13.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_13.1, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %digit, i64 10, ptr align 8 @alloc_efd1d5e7296dd6c2539fde89d5e685b6) #22
  unreachable

bb7:                                              ; preds = %bb6
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %digit
  store i32 %_13.0, ptr %6, align 4
  %7 = load float, ptr %n1, align 4
  %8 = fdiv float %7, 1.000000e+01
  store float %8, ptr %n1, align 4
  br label %bb1

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_efd1d5e7296dd6c2539fde89d5e685b6) #22
  unreachable
}
