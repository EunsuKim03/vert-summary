define i32 @f_gold(i32 %x, i32 %y, i32 %p) unnamed_addr #3 {
start:
  %y2 = alloca [4 x i8], align 4
  %x1 = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  store i32 1, ptr %res, align 4
  %_6 = icmp eq i32 %p, 0
  br i1 %_6, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp eq i32 %p, -1
  %_8 = icmp eq i32 %x, -2147483648
  %_9 = and i1 %_7, %_8
  br i1 %_9, label %panic3, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_238f211a4a200e9938862ae571c9313f) #22
  unreachable

bb2:                                              ; preds = %bb1
  %0 = srem i32 %x, %p
  store i32 %0, ptr %x1, align 4
  store i32 %y, ptr %y2, align 4
  br label %bb3

panic3:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_238f211a4a200e9938862ae571c9313f) #22
  unreachable

bb3:                                              ; preds = %bb13, %bb2
  %_12 = load i32, ptr %y2, align 4
  %_11 = icmp ugt i32 %_12, 0
  br i1 %_11, label %bb4, label %bb14

bb14:                                             ; preds = %bb3
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb4:                                              ; preds = %bb3
  %_15 = load i32, ptr %y2, align 4
  %_14 = and i32 %_15, 1
  %_13 = icmp eq i32 %_14, 1
  br i1 %_13, label %bb5, label %bb9

bb9:                                              ; preds = %bb8, %bb4
  %_24 = load i32, ptr %y2, align 4
  %1 = lshr i32 %_24, 1
  store i32 %1, ptr %y2, align 4
  %_28 = load i32, ptr %x1, align 4
  %_29 = load i32, ptr %x1, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_28, i32 %_29)
  %_30.0 = extractvalue { i32, i1 } %2, 0
  %_30.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_30.1, label %panic7, label %bb11

bb5:                                              ; preds = %bb4
  %_17 = load i32, ptr %res, align 4
  %_18 = load i32, ptr %x1, align 4
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_17, i32 %_18)
  %_19.0 = extractvalue { i32, i1 } %3, 0
  %_19.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_19.1, label %panic4, label %bb6

bb6:                                              ; preds = %bb5
  %_20 = icmp eq i32 %p, 0
  br i1 %_20, label %panic5, label %bb7

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5236121c38de5ef14a9d7c2aff1fb45c) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_21 = icmp eq i32 %p, -1
  %_22 = icmp eq i32 %_19.0, -2147483648
  %_23 = and i1 %_21, %_22
  br i1 %_23, label %panic6, label %bb8

panic5:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_5236121c38de5ef14a9d7c2aff1fb45c) #22
  unreachable

bb8:                                              ; preds = %bb7
  %4 = srem i32 %_19.0, %p
  store i32 %4, ptr %res, align 4
  br label %bb9

panic6:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_5236121c38de5ef14a9d7c2aff1fb45c) #22
  unreachable

bb11:                                             ; preds = %bb9
  %_31 = icmp eq i32 %p, 0
  br i1 %_31, label %panic8, label %bb12

panic7:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_de381d5c302409374630ca85b97854d1) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_32 = icmp eq i32 %p, -1
  %_33 = icmp eq i32 %_30.0, -2147483648
  %_34 = and i1 %_32, %_33
  br i1 %_34, label %panic9, label %bb13

panic8:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_de381d5c302409374630ca85b97854d1) #22
  unreachable

bb13:                                             ; preds = %bb12
  %5 = srem i32 %_30.0, %p
  store i32 %5, ptr %x1, align 4
  br label %bb3

panic9:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_de381d5c302409374630ca85b97854d1) #22
  unreachable
}
