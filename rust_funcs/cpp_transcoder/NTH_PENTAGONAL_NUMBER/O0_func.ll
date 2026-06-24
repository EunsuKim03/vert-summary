define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 3, i32 %n)
  %_5.0 = extractvalue { i32, i1 } %0, 0
  %_5.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_5.0, i32 %n)
  %_6.0 = extractvalue { i32, i1 } %1, 0
  %_6.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_6.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_309213e3e781e8ceb635a9001931cc1a) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_6.0, i32 %n)
  %_7.0 = extractvalue { i32, i1 } %2, 0
  %_7.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_7.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_309213e3e781e8ceb635a9001931cc1a) #22
  unreachable

bb3:                                              ; preds = %bb2
  %_10 = icmp eq i32 %_7.0, -2147483648
  %_11 = and i1 false, %_10
  br i1 %_11, label %panic3, label %bb5

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_07704c8a068836950b3f309d4de1d1a0) #22
  unreachable

bb5:                                              ; preds = %bb3
  %_0 = sdiv i32 %_7.0, 2
  ret i32 %_0

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_07704c8a068836950b3f309d4de1d1a0) #22
  unreachable
}
