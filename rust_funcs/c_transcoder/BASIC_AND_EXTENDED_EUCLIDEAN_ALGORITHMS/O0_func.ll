define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp eq i32 %a, 0
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = icmp eq i32 %a, 0
  br i1 %_5, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 %b, ptr %_0, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  %_6 = icmp eq i32 %a, -1
  %_7 = icmp eq i32 %b, -2147483648
  %_8 = and i1 %_6, %_7
  br i1 %_8, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_002095e2b953e07166c5757e0e79199d) #22
  unreachable

bb4:                                              ; preds = %bb3
  %_4 = srem i32 %b, %a
  %0 = call i32 @f_gold(i32 %_4, i32 %a)
  store i32 %0, ptr %_0, align 4
  br label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_002095e2b953e07166c5757e0e79199d) #22
  unreachable

bb5:                                              ; preds = %bb1, %bb4
  %1 = load i32, ptr %_0, align 4
  ret i32 %1
}
