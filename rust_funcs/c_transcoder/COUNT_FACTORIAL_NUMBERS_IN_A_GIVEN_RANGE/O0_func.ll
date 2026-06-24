define i32 @f_gold(i32 %low, i32 %high) unnamed_addr #3 {
start:
  %res = alloca [4 x i8], align 4
  %x = alloca [4 x i8], align 4
  %fact = alloca [4 x i8], align 4
  store float 1.000000e+00, ptr %fact, align 4
  store i32 1, ptr %x, align 4
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %_6 = load float, ptr %fact, align 4
  %_7 = sitofp i32 %low to float
  %_5 = fcmp olt float %_6, %_7
  br i1 %_5, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  store i32 0, ptr %res, align 4
  br label %bb5

bb2:                                              ; preds = %bb1
  %_9 = load i32, ptr %x, align 4
  %_8 = sitofp i32 %_9 to float
  %0 = load float, ptr %fact, align 4
  %1 = fmul float %0, %_8
  store float %1, ptr %fact, align 4
  %2 = load i32, ptr %x, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %_10.0 = extractvalue { i32, i1 } %3, 0
  %_10.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_10.1, label %panic2, label %bb3

bb5:                                              ; preds = %bb8, %bb4
  %_13 = load float, ptr %fact, align 4
  %_14 = sitofp i32 %high to float
  %_12 = fcmp ole float %_13, %_14
  br i1 %_12, label %bb6, label %bb9

bb9:                                              ; preds = %bb5
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb6:                                              ; preds = %bb5
  %4 = load i32, ptr %res, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %_15.0 = extractvalue { i32, i1 } %5, 0
  %_15.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_15.1, label %panic, label %bb7

bb7:                                              ; preds = %bb6
  store i32 %_15.0, ptr %res, align 4
  %_17 = load i32, ptr %x, align 4
  %_16 = sitofp i32 %_17 to float
  %6 = load float, ptr %fact, align 4
  %7 = fmul float %6, %_16
  store float %7, ptr %fact, align 4
  %8 = load i32, ptr %x, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 1)
  %_18.0 = extractvalue { i32, i1 } %9, 0
  %_18.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_18.1, label %panic1, label %bb8

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ae21147f22863a67b06c5b6043c70b7e) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_18.0, ptr %x, align 4
  br label %bb5

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0701f8db01861a89223386fde892b0eb) #22
  unreachable

bb3:                                              ; preds = %bb2
  store i32 %_10.0, ptr %x, align 4
  br label %bb1

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_051572019a28133fc7f650f0bc52718e) #22
  unreachable
}
