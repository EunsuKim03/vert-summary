define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_3 = sitofp i32 %n to float
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_4 = sitofp i32 %_6.0 to float
  %result = fmul float %_3, %_4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %result)
  ret i32 %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1a109baf128dec9c476a4d4799ce1a2c) #22
  unreachable
}
