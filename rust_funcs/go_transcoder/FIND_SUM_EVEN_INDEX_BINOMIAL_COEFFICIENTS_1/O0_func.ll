define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_3.0 = extractvalue { i32, i1 } %0, 0
  %_3.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_3.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_5 = icmp ult i32 %_3.0, 32
  br i1 %_5, label %bb2, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f707fb0faef4686d423e9a4c846c2f4e) #22
  unreachable

bb2:                                              ; preds = %bb1
  %1 = and i32 %_3.0, 31
  %_0 = shl i32 1, %1
  ret i32 %_0

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_9e782b4446797fea035de974e831a1a3) #22
  unreachable
}
