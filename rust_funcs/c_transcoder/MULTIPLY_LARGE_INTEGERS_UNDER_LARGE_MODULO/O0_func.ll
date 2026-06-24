define i32 @f_gold(i32 %a, i32 %b, i32 %mod_) unnamed_addr #3 {
start:
  %b2 = alloca [4 x i8], align 4
  %a1 = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
  %_6 = icmp eq i32 %mod_, 0
  br i1 %_6, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp eq i32 %mod_, -1
  %_8 = icmp eq i32 %a, -2147483648
  %_9 = and i1 %_7, %_8
  br i1 %_9, label %panic3, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_94598b3c2b81db58ae5c70654e278115) #22
  unreachable

bb2:                                              ; preds = %bb1
  %0 = srem i32 %a, %mod_
  store i32 %0, ptr %a1, align 4
  store i32 %b, ptr %b2, align 4
  br label %bb3

panic3:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_94598b3c2b81db58ae5c70654e278115) #22
  unreachable

bb3:                                              ; preds = %bb12, %bb2
  %_12 = load i32, ptr %b2, align 4
  %_11 = icmp sgt i32 %_12, 0
  br i1 %_11, label %bb4, label %bb14

bb14:                                             ; preds = %bb3
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb4:                                              ; preds = %bb3
  %_15 = load i32, ptr %b2, align 4
  %_14 = and i32 %_15, 1
  %_13 = icmp eq i32 %_14, 1
  br i1 %_13, label %bb5, label %bb9

bb9:                                              ; preds = %bb8, %bb4
  %_25 = load i32, ptr %a1, align 4
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_25)
  %_26.0 = extractvalue { i32, i1 } %1, 0
  %_26.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_26.1, label %panic7, label %bb10

bb5:                                              ; preds = %bb4
  %_17 = load i32, ptr %res, align 4
  %_18 = load i32, ptr %a1, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_17, i32 %_18)
  %_19.0 = extractvalue { i32, i1 } %2, 0
  %_19.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_19.1, label %panic4, label %bb6

bb6:                                              ; preds = %bb5
  %_20 = icmp eq i32 %mod_, 0
  br i1 %_20, label %panic5, label %bb7

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_794df87ba7ac11c5f252fa6d96281bcc) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_21 = icmp eq i32 %mod_, -1
  %_22 = icmp eq i32 %_19.0, -2147483648
  %_23 = and i1 %_21, %_22
  br i1 %_23, label %panic6, label %bb8

panic5:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_794df87ba7ac11c5f252fa6d96281bcc) #22
  unreachable

bb8:                                              ; preds = %bb7
  %3 = srem i32 %_19.0, %mod_
  store i32 %3, ptr %res, align 4
  br label %bb9

panic6:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_794df87ba7ac11c5f252fa6d96281bcc) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_27 = icmp eq i32 %mod_, 0
  br i1 %_27, label %panic8, label %bb11

panic7:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1d65aeafd0d9ae054ac7598e81a528b9) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_28 = icmp eq i32 %mod_, -1
  %_29 = icmp eq i32 %_26.0, -2147483648
  %_30 = and i1 %_28, %_29
  br i1 %_30, label %panic9, label %bb12

panic8:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_1d65aeafd0d9ae054ac7598e81a528b9) #22
  unreachable

bb12:                                             ; preds = %bb11
  %4 = srem i32 %_26.0, %mod_
  store i32 %4, ptr %a1, align 4
  %5 = load i32, ptr %b2, align 4
  %6 = ashr i32 %5, 1
  store i32 %6, ptr %b2, align 4
  br label %bb3

panic9:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_1d65aeafd0d9ae054ac7598e81a528b9) #22
  unreachable
}
