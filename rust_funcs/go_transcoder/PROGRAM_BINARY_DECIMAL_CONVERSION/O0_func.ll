define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %temp = alloca [4 x i8], align 4
  %base = alloca [4 x i8], align 4
  %dec_value = alloca [4 x i8], align 4
  %num = sitofp i32 %n to float
  store i32 0, ptr %dec_value, align 4
  store i32 1, ptr %base, align 4
  store float %num, ptr %temp, align 4
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  %_7 = load float, ptr %temp, align 4
  %_6 = fcmp une float %_7, 0.000000e+00
  br i1 %_6, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %_0 = load i32, ptr %dec_value, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_10 = load float, ptr %temp, align 4
  %_9 = frem float %_10, 1.000000e+01
  %last_digit = call i32 @llvm.fptosi.sat.i32.f32(float %_9)
  %_11 = load float, ptr %temp, align 4
  %0 = fdiv float %_11, 1.000000e+01
  store float %0, ptr %temp, align 4
  %_13 = load i32, ptr %base, align 4
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %last_digit, i32 %_13)
  %_14.0 = extractvalue { i32, i1 } %1, 0
  %_14.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_14.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %2 = load i32, ptr %dec_value, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %_14.0)
  %_15.0 = extractvalue { i32, i1 } %3, 0
  %_15.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_15.1, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_624a81b3d0d74742997bd9f945619bed) #22
  unreachable

bb4:                                              ; preds = %bb3
  store i32 %_15.0, ptr %dec_value, align 4
  %4 = load i32, ptr %base, align 4
  %5 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %4, i32 2)
  %_16.0 = extractvalue { i32, i1 } %5, 0
  %_16.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_16.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f9b17a7c9de7da9be812e12568b5f6d0) #22
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %_16.0, ptr %base, align 4
  br label %bb1

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2dbcfe9550dbf7ae17e1c3c759682a30) #22
  unreachable
}
