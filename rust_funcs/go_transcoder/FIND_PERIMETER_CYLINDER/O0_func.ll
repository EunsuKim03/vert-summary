define i32 @f_gold(i32 %diameter, i32 %height) unnamed_addr #3 {
start:
  %diameter1 = sitofp i32 %diameter to float
  %height2 = sitofp i32 %height to float
  %_6 = fadd float %diameter1, %height2
  %_5 = call i32 @llvm.fptosi.sat.i32.f32(float %_6)
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_5)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  ret i32 %_7.0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5e43ba5afa4f7879ccbf5ec95e15dfc4) #22
  unreachable
}
