define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_3 = sitofp i32 %n to float
; call std::f32::<impl f32>::powf
  %val = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4powf17hdd50b8d4f2d8a775E"(float 3.000000e+00, float %_3) #20
  %_5 = call i32 @llvm.fptosi.sat.i32.f32(float %val)
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_5)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_6.0, i32 1)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_9a1d91d747c49ed876ab481f3730a5c4) #22
  unreachable

bb3:                                              ; preds = %bb2
  ret i32 %_7.0

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9a1d91d747c49ed876ab481f3730a5c4) #22
  unreachable
}
