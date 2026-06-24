define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %a, i32 %b)
  %_4.0 = extractvalue { i32, i1 } %0, 0
  %_4.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_4.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_8 = icmp eq i32 %_4.0, -2147483648
  %_9 = and i1 false, %_8
  br i1 %_9, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5fae9cea815900510438f092b33b4a5c) #22
  unreachable

bb3:                                              ; preds = %bb1
  %result = sdiv i32 %_4.0, 2
  ret i32 %result

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_359d259d00bae9abb9ec2570d3776c62) #22
  unreachable
}
