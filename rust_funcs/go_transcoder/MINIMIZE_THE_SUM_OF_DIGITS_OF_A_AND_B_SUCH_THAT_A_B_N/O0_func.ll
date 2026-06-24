define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %n1 = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
  %0 = sitofp i32 %n to float
  store float %0, ptr %n1, align 4
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %_5 = load float, ptr %n1, align 4
  %_4 = fcmp ogt float %_5, 0.000000e+00
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_11 = load i32, ptr %sum, align 4
  %_10 = icmp eq i32 %_11, 1
  br i1 %_10, label %bb5, label %bb6

bb2:                                              ; preds = %bb1
  %_8 = load float, ptr %n1, align 4
  %_7 = frem float %_8, 1.000000e+01
  %_6 = call i32 @llvm.fptosi.sat.i32.f32(float %_7)
  %1 = load i32, ptr %sum, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 %_6)
  %_9.0 = extractvalue { i32, i1 } %2, 0
  %_9.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_9.1, label %panic, label %bb3

bb6:                                              ; preds = %bb4
  %3 = load i32, ptr %sum, align 4
  store i32 %3, ptr %_0, align 4
  br label %bb7

bb5:                                              ; preds = %bb4
  store i32 10, ptr %_0, align 4
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb3:                                              ; preds = %bb2
  store i32 %_9.0, ptr %sum, align 4
  %5 = load float, ptr %n1, align 4
  %6 = fdiv float %5, 1.000000e+01
  store float %6, ptr %n1, align 4
  br label %bb1

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6d282df450de6f8c8bee3c30e0ee1e5b) #22
  unreachable
}
