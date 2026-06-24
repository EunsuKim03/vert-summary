define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %curr = alloca [4 x i8], align 4
  %prev = alloca [4 x i8], align 4
  %prev_prev = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  store float 1.000000e+00, ptr %prev_prev, align 4
  store float 2.000000e+00, ptr %prev, align 4
  store float 3.000000e+00, ptr %curr, align 4
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %_6 = load i32, ptr %n, align 4
  %_5 = icmp sgt i32 %_6, 0
  br i1 %_5, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_18 = load i32, ptr %n, align 4
  %_22 = load float, ptr %curr, align 4
  %_23 = load float, ptr %prev, align 4
  %_21 = fsub float %_22, %_23
  %_20 = fsub float %_21, 1.000000e+00
  %_19 = call i32 @llvm.fptosi.sat.i32.f32(float %_20)
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_18, i32 %_19)
  %_24.0 = extractvalue { i32, i1 } %1, 0
  %_24.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_24.1, label %panic, label %bb5

bb2:                                              ; preds = %bb1
  %_7 = load float, ptr %prev, align 4
  store float %_7, ptr %prev_prev, align 4
  %_8 = load float, ptr %curr, align 4
  store float %_8, ptr %prev, align 4
  %_9 = load float, ptr %prev_prev, align 4
  %_10 = load float, ptr %prev, align 4
  %2 = fadd float %_9, %_10
  store float %2, ptr %curr, align 4
  %_11 = load i32, ptr %n, align 4
  %_15 = load float, ptr %curr, align 4
  %_16 = load float, ptr %prev, align 4
  %_14 = fsub float %_15, %_16
  %_13 = fsub float %_14, 1.000000e+00
  %_12 = call i32 @llvm.fptosi.sat.i32.f32(float %_13)
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_11, i32 %_12)
  %_17.0 = extractvalue { i32, i1 } %3, 0
  %_17.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_17.1, label %panic1, label %bb3

bb5:                                              ; preds = %bb4
  store i32 %_24.0, ptr %n, align 4
  %_26 = load float, ptr %prev, align 4
  %_28 = load i32, ptr %n, align 4
  %_27 = sitofp i32 %_28 to float
  %_25 = fadd float %_26, %_27
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  ret i32 %_0

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_86a66c87ab48888d36055287355f92a6) #22
  unreachable

bb3:                                              ; preds = %bb2
  store i32 %_17.0, ptr %n, align 4
  br label %bb1

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_70ca223ac7b443f96efea76bc10816ad) #22
  unreachable
}
