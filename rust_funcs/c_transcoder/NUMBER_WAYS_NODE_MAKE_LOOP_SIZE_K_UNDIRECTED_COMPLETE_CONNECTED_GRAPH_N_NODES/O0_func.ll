define i32 @f_gold(i32 %n, i32 %k) unnamed_addr #3 {
start:
  %p = alloca [4 x i8], align 4
  store i32 1, ptr %p, align 4
  %_8 = icmp eq i32 %k, -2147483648
  %_9 = and i1 false, %_8
  br i1 %_9, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_5 = srem i32 %k, 2
  %_4 = icmp ne i32 %_5, 0
  br i1 %_4, label %bb3, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_d1cfbfe0eb802b6f1c8b91b84fd2c6ca) #22
  unreachable

bb4:                                              ; preds = %bb3, %bb2
  %n1 = sitofp i32 %n to float
  %k2 = sitofp i32 %k to float
  %_14 = fsub float %n1, 1.000000e+00
; call std::f32::<impl f32>::powf
  %_13 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4powf17h40ef44178c6cf449E"(float %_14, float %k2) #20
  %_17 = load i32, ptr %p, align 4
  %_16 = sitofp i32 %_17 to float
  %_18 = fsub float %n1, 1.000000e+00
  %_15 = fmul float %_16, %_18
  %calc = fadd float %_13, %_15
  %_19 = fdiv float %calc, %n1
  %res = call i32 @llvm.fptosi.sat.i32.f32(float %_19)
  ret i32 %res

bb3:                                              ; preds = %bb2
  store i32 -1, ptr %p, align 4
  br label %bb4
}
