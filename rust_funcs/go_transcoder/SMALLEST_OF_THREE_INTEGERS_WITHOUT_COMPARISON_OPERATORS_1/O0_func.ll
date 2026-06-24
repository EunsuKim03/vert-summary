define i32 @f_gold(i32 %x, i32 %y, i32 %z) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_6 = icmp eq i32 %x, 0
  br i1 %_6, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp eq i32 %x, -1
  %_8 = icmp eq i32 %y, -2147483648
  %_9 = and i1 %_7, %_8
  br i1 %_9, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_cd0a3dca0aba54f87b27f2a2c49dbfa2) #22
  unreachable

bb2:                                              ; preds = %bb1
  %_5 = sdiv i32 %y, %x
  %_4 = icmp eq i32 %_5, 0
  br i1 %_4, label %bb3, label %bb8

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_cd0a3dca0aba54f87b27f2a2c49dbfa2) #22
  unreachable

bb8:                                              ; preds = %bb2
  %_18 = icmp eq i32 %z, 0
  br i1 %_18, label %panic2, label %bb9

bb3:                                              ; preds = %bb2
  %_12 = icmp eq i32 %z, 0
  br i1 %_12, label %panic4, label %bb4

bb9:                                              ; preds = %bb8
  %_19 = icmp eq i32 %z, -1
  %_20 = icmp eq i32 %x, -2147483648
  %_21 = and i1 %_19, %_20
  br i1 %_21, label %panic3, label %bb10

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_94bf695b6a2d65239b23861f31d15b48) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_17 = sdiv i32 %x, %z
  %_16 = icmp eq i32 %_17, 0
  br i1 %_16, label %bb11, label %bb12

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_94bf695b6a2d65239b23861f31d15b48) #22
  unreachable

bb12:                                             ; preds = %bb10
  store i32 %z, ptr %_0, align 4
  br label %bb13

bb11:                                             ; preds = %bb10
  store i32 %x, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb6, %bb7, %bb11, %bb12
  %0 = load i32, ptr %_0, align 4
  ret i32 %0

bb4:                                              ; preds = %bb3
  %_13 = icmp eq i32 %z, -1
  %_14 = icmp eq i32 %y, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic5, label %bb5

panic4:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_0fa5c36261a1cf5a9acc6e0c33144696) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_11 = sdiv i32 %y, %z
  %_10 = icmp eq i32 %_11, 0
  br i1 %_10, label %bb6, label %bb7

panic5:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_0fa5c36261a1cf5a9acc6e0c33144696) #22
  unreachable

bb7:                                              ; preds = %bb5
  store i32 %z, ptr %_0, align 4
  br label %bb13

bb6:                                              ; preds = %bb5
  store i32 %y, ptr %_0, align 4
  br label %bb13
}
