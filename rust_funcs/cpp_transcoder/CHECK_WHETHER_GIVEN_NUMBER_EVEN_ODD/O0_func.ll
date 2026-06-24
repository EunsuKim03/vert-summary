define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_6 = icmp eq i32 %n, -2147483648
  %_7 = and i1 false, %_6
  br i1 %_7, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_3 = srem i32 %n, 2
  %_2 = icmp eq i32 %_3, 0
  br i1 %_2, label %bb3, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_cc2000d02da11e0b7ba39c17a2f74851) #22
  unreachable

bb4:                                              ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}
