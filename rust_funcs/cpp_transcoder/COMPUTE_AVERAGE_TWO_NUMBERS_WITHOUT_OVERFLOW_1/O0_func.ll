define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_7 = icmp eq i32 %a, -2147483648
  %_8 = and i1 false, %_7
  br i1 %_8, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_4 = sdiv i32 %a, 2
  %_12 = icmp eq i32 %b, -2147483648
  %_13 = and i1 false, %_12
  br i1 %_13, label %panic1, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_e05e91561658a56bf4febb920d6c23a6) #22
  unreachable

bb4:                                              ; preds = %bb2
  %_9 = sdiv i32 %b, 2
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_4, i32 %_9)
  %_14.0 = extractvalue { i32, i1 } %0, 0
  %_14.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_14.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_2647fa130cf8710fd936ce4ec4b75672) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_20 = icmp eq i32 %a, -2147483648
  %_21 = and i1 false, %_20
  br i1 %_21, label %panic3, label %bb7

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e05e91561658a56bf4febb920d6c23a6) #22
  unreachable

bb7:                                              ; preds = %bb5
  %_17 = srem i32 %a, 2
  %_25 = icmp eq i32 %b, -2147483648
  %_26 = and i1 false, %_25
  br i1 %_26, label %panic4, label %bb9

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c048e710967080b7f8b69d414354741b) #22
  unreachable

bb9:                                              ; preds = %bb7
  %_22 = srem i32 %b, 2
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_17, i32 %_22)
  %_27.0 = extractvalue { i32, i1 } %1, 0
  %_27.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_27.1, label %panic5, label %bb10

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b3932cdcdc7603961cacf8fb807b98f0) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_30 = icmp eq i32 %_27.0, -2147483648
  %_31 = and i1 false, %_30
  br i1 %_31, label %panic6, label %bb12

panic5:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c17c4aa80f5eb8de32bbcae39cd9ea1d) #22
  unreachable

bb12:                                             ; preds = %bb10
  %_15 = sdiv i32 %_27.0, 2
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_14.0, i32 %_15)
  %_32.0 = extractvalue { i32, i1 } %2, 0
  %_32.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_32.1, label %panic7, label %bb13

panic6:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_e829bad810bb66e9c3aa65e80a3a71a2) #22
  unreachable

bb13:                                             ; preds = %bb12
  ret i32 %_32.0

panic7:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e05e91561658a56bf4febb920d6c23a6) #22
  unreachable
}
