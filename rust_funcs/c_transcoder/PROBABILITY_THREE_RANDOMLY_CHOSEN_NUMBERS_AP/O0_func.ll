define float @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_3 = sitofp i32 %n to float
  %_2 = fmul float 3.000000e+00, %_3
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %n)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_6 = sitofp i32 %_8.0 to float
  %_5 = fmul float 4.000000e+00, %_6
  %_4 = fsub float %_5, 1.000000e+00
  %_0 = fdiv float %_2, %_4
  ret float %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d04b6f44112fa16a9eb193289753edf9) #22
  unreachable
}
