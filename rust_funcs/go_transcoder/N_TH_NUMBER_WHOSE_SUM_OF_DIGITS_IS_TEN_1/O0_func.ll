define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %x = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %curr = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
  store i32 19, ptr %curr, align 4
  br label %bb1

bb1:                                              ; preds = %bb12, %start
  store i32 0, ptr %sum, align 4
  %_6 = load i32, ptr %curr, align 4
  %0 = sitofp i32 %_6 to float
  store float %0, ptr %x, align 4
  br label %bb2

bb2:                                              ; preds = %bb5, %bb1
  %_8 = load float, ptr %x, align 4
  %_7 = fcmp ogt float %_8, 0.000000e+00
  br i1 %_7, label %bb3, label %bb6

bb6:                                              ; preds = %bb2
  %_14 = load i32, ptr %sum, align 4
  %_13 = icmp eq i32 %_14, 10
  br i1 %_13, label %bb7, label %bb9

bb3:                                              ; preds = %bb2
  %_11 = load float, ptr %x, align 4
; call std::f32::<impl f32>::rem_euclid
  %_10 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$10rem_euclid17h64e7cc7abe9f47fdE"(float %_11, float 1.000000e+01) #20
  %_9 = call i32 @llvm.fptosi.sat.i32.f32(float %_10)
  %1 = load i32, ptr %sum, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 %_9)
  %_12.0 = extractvalue { i32, i1 } %2, 0
  %_12.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_12.1, label %panic2, label %bb5

bb9:                                              ; preds = %bb8, %bb6
  %_17 = load i32, ptr %count, align 4
  %_16 = icmp eq i32 %_17, %n
  br i1 %_16, label %bb10, label %bb11

bb7:                                              ; preds = %bb6
  %3 = load i32, ptr %count, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %_15.0 = extractvalue { i32, i1 } %4, 0
  %_15.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_15.1, label %panic, label %bb8

bb8:                                              ; preds = %bb7
  store i32 %_15.0, ptr %count, align 4
  br label %bb9

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_35454dba539cc13ec7b692e0be231acc) #22
  unreachable

bb11:                                             ; preds = %bb9
  %5 = load i32, ptr %curr, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 9)
  %_18.0 = extractvalue { i32, i1 } %6, 0
  %_18.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_18.1, label %panic1, label %bb12

bb10:                                             ; preds = %bb9
  %_0 = load i32, ptr %curr, align 4
  ret i32 %_0

bb12:                                             ; preds = %bb11
  store i32 %_18.0, ptr %curr, align 4
  br label %bb1

panic1:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e1a6cad4f849b759abc81fe98e83a5c1) #22
  unreachable

bb5:                                              ; preds = %bb3
  store i32 %_12.0, ptr %sum, align 4
  %7 = load float, ptr %x, align 4
  %8 = fdiv float %7, 1.000000e+01
  store float %8, ptr %x, align 4
  br label %bb2

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c500a8a000411b04bfc03f91cd5578df) #22
  unreachable
}
