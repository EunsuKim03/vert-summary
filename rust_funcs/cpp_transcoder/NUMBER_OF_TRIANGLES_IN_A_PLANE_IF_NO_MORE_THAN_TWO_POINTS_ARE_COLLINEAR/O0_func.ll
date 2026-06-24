define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_5.0 = extractvalue { i32, i1 } %0, 0
  %_5.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %_5.0)
  %_6.0 = extractvalue { i32, i1 } %1, 0
  %_6.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_6.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5b51b91c9da3704236aeb52b78557ff2) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 2)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5dfb947e3bcf3bedb49191d998709a84) #22
  unreachable

bb3:                                              ; preds = %bb2
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_6.0, i32 %_8.0)
  %_9.0 = extractvalue { i32, i1 } %3, 0
  %_9.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_9.1, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_74b4d9ac7cf3f85160622f4a975e06b5) #22
  unreachable

bb4:                                              ; preds = %bb3
  %_12 = icmp eq i32 %_9.0, -2147483648
  %_13 = and i1 false, %_12
  br i1 %_13, label %panic4, label %bb6

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5dfb947e3bcf3bedb49191d998709a84) #22
  unreachable

bb6:                                              ; preds = %bb4
  %_0 = sdiv i32 %_9.0, 6
  ret i32 %_0

panic4:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_5dfb947e3bcf3bedb49191d998709a84) #22
  unreachable
}
