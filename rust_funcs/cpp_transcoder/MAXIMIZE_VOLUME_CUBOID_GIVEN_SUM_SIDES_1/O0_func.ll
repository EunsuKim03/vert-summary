define i32 @f_gold(i32 %s) unnamed_addr #3 {
start:
  %_5 = icmp eq i32 %s, -2147483648
  %_6 = and i1 false, %_5
  br i1 %_6, label %panic, label %bb2

bb2:                                              ; preds = %start
  %length = sdiv i32 %s, 3
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %s, i32 %length)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_b807ce9e966ed1c514ad2fc07b659f1a) #22
  unreachable

bb3:                                              ; preds = %bb2
  %_12 = icmp eq i32 %_8.0, -2147483648
  %_13 = and i1 false, %_12
  br i1 %_13, label %panic2, label %bb5

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_19f759e2abbc220adee4af200ce955ef) #22
  unreachable

bb5:                                              ; preds = %bb3
  %breadth = sdiv i32 %_8.0, 2
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_8.0, i32 %breadth)
  %_15.0 = extractvalue { i32, i1 } %1, 0
  %_15.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_15.1, label %panic3, label %bb6

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_ff0bc01db4c34dbf958616de5aa344ea) #22
  unreachable

bb6:                                              ; preds = %bb5
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %length, i32 %breadth)
  %_17.0 = extractvalue { i32, i1 } %2, 0
  %_17.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_17.1, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_afc6a97cb6f60623d605722869476ff5) #22
  unreachable

bb7:                                              ; preds = %bb6
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_17.0, i32 %_15.0)
  %_18.0 = extractvalue { i32, i1 } %3, 0
  %_18.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_18.1, label %panic5, label %bb8

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c447b2d5066a18b03ba9923f5157bea1) #22
  unreachable

bb8:                                              ; preds = %bb7
  ret i32 %_18.0

panic5:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c447b2d5066a18b03ba9923f5157bea1) #22
  unreachable
}
