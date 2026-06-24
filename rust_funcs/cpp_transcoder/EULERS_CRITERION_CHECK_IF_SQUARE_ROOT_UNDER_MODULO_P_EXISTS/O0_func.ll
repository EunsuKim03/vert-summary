define i32 @f_gold(i32 %n, i32 %p) unnamed_addr #3 {
start:
  %x = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_4 = icmp eq i32 %p, 0
  br i1 %_4, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_5 = icmp eq i32 %p, -1
  %_6 = icmp eq i32 %n, -2147483648
  %_7 = and i1 %_5, %_6
  br i1 %_7, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_a625c87dd85f7ec96303ce2a847d09c1) #22
  unreachable

bb2:                                              ; preds = %bb1
  %n2 = srem i32 %n, %p
  store i32 2, ptr %x, align 4
  br label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_a625c87dd85f7ec96303ce2a847d09c1) #22
  unreachable

bb3:                                              ; preds = %bb10, %bb2
  %_10 = load i32, ptr %x, align 4
  %_9 = icmp slt i32 %_10, %p
  br i1 %_9, label %bb4, label %bb11

bb11:                                             ; preds = %bb3
  store i32 0, ptr %_0, align 4
  br label %bb12

bb4:                                              ; preds = %bb3
  %_14 = load i32, ptr %x, align 4
  %_15 = load i32, ptr %x, align 4
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_14, i32 %_15)
  %_16.0 = extractvalue { i32, i1 } %0, 0
  %_16.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_16.1, label %panic3, label %bb5

bb12:                                             ; preds = %bb8, %bb11
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb5:                                              ; preds = %bb4
  %_17 = icmp eq i32 %p, 0
  br i1 %_17, label %panic4, label %bb6

panic3:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_0047d44056258bc59f375ad7ebb7227f) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_18 = icmp eq i32 %p, -1
  %_19 = icmp eq i32 %_16.0, -2147483648
  %_20 = and i1 %_18, %_19
  br i1 %_20, label %panic5, label %bb7

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_0047d44056258bc59f375ad7ebb7227f) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_12 = srem i32 %_16.0, %p
  %_11 = icmp eq i32 %_12, %n2
  br i1 %_11, label %bb8, label %bb9

panic5:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_0047d44056258bc59f375ad7ebb7227f) #22
  unreachable

bb9:                                              ; preds = %bb7
  %2 = load i32, ptr %x, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %_21.0 = extractvalue { i32, i1 } %3, 0
  %_21.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_21.1, label %panic6, label %bb10

bb8:                                              ; preds = %bb7
  store i32 1, ptr %_0, align 4
  br label %bb12

bb10:                                             ; preds = %bb9
  store i32 %_21.0, ptr %x, align 4
  br label %bb3

panic6:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2ea7641bd3413df5f81a2e01429e217c) #22
  unreachable
}
