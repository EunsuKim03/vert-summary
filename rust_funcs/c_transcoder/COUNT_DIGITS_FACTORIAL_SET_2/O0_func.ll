define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %x = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp slt i32 %n, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_3 = icmp sle i32 %n, 1
  br i1 %_3, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb8

bb4:                                              ; preds = %bb2
  %_7 = sitofp i32 %n to float
  %_10 = sitofp i32 %n to float
  %_9 = fdiv float %_10, 0x4005BF0A80000000
; call std::f32::<impl f32>::ln
  %_8 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$2ln17hc7b12d72335149bcE"(float %_9) #20
  %_6 = fmul float %_7, %_8
  %_15 = sitofp i32 %n to float
  %_13 = fmul float 0x401921FB60000000, %_15
; call std::f32::<impl f32>::ln
  %_12 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$2ln17hc7b12d72335149bcE"(float %_13) #20
  %_11 = fdiv float %_12, 2.000000e+00
  %_5 = fadd float %_6, %_11
  %0 = call i32 @llvm.fptosi.sat.i32.f32(float %_5)
  store i32 %0, ptr %x, align 4
  %1 = load i32, ptr %x, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %_16.0 = extractvalue { i32, i1 } %2, 0
  %_16.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_16.1, label %panic, label %bb7

bb3:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb8

bb7:                                              ; preds = %bb4
  store i32 %_16.0, ptr %x, align 4
  %3 = load i32, ptr %x, align 4
  store i32 %3, ptr %_0, align 4
  br label %bb8

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5300e7d77488be0a4a3c70f0a1023e51) #22
  unreachable

bb8:                                              ; preds = %bb1, %bb3, %bb7
  %4 = load i32, ptr %_0, align 4
  ret i32 %4
}
