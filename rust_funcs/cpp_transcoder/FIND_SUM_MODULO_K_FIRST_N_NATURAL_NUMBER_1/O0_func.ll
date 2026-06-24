define i32 @f_gold(i32 %N, i32 %K) unnamed_addr #3 {
start:
  %ans = alloca [4 x i8], align 4
  store i32 0, ptr %ans, align 4
  %_5 = icmp eq i32 %K, 0
  br i1 %_5, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_6 = icmp eq i32 %K, -1
  %_7 = icmp eq i32 %N, -2147483648
  %_8 = and i1 %_6, %_7
  br i1 %_8, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_f000e70548292003d3eb1b3819b3206c) #22
  unreachable

bb2:                                              ; preds = %bb1
  %y = sdiv i32 %N, %K
  %_10 = icmp eq i32 %K, 0
  br i1 %_10, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_f000e70548292003d3eb1b3819b3206c) #22
  unreachable

bb3:                                              ; preds = %bb2
  %_11 = icmp eq i32 %K, -1
  %_12 = icmp eq i32 %N, -2147483648
  %_13 = and i1 %_11, %_12
  br i1 %_13, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_cbdb8971d6db5ca7f353838cbf97f0f8) #22
  unreachable

bb4:                                              ; preds = %bb3
  %x = srem i32 %N, %K
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %K, i32 1)
  %_18.0 = extractvalue { i32, i1 } %0, 0
  %_18.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_18.1, label %panic4, label %bb5

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_cbdb8971d6db5ca7f353838cbf97f0f8) #22
  unreachable

bb5:                                              ; preds = %bb4
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %K, i32 %_18.0)
  %_19.0 = extractvalue { i32, i1 } %1, 0
  %_19.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_19.1, label %panic5, label %bb6

panic4:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bb28e9537ad4062972189bba13a357e6) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_22 = icmp eq i32 %_19.0, -2147483648
  %_23 = and i1 false, %_22
  br i1 %_23, label %panic6, label %bb8

panic5:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_06a98f2bb745a0b2f99e6356c7220d06) #22
  unreachable

bb8:                                              ; preds = %bb6
  %_15 = sdiv i32 %_19.0, 2
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15, i32 %y)
  %_24.0 = extractvalue { i32, i1 } %2, 0
  %_24.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_24.1, label %panic7, label %bb9

panic6:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_b8dcf5f49a37818d4dea2f88c8838bbc) #22
  unreachable

bb9:                                              ; preds = %bb8
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %x, i32 1)
  %_28.0 = extractvalue { i32, i1 } %3, 0
  %_28.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_28.1, label %panic8, label %bb10

panic7:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b8dcf5f49a37818d4dea2f88c8838bbc) #22
  unreachable

bb10:                                             ; preds = %bb9
  %4 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %x, i32 %_28.0)
  %_29.0 = extractvalue { i32, i1 } %4, 0
  %_29.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_29.1, label %panic9, label %bb11

panic8:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_da3a992d979615ef7206ae2e1d174dca) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_32 = icmp eq i32 %_29.0, -2147483648
  %_33 = and i1 false, %_32
  br i1 %_33, label %panic10, label %bb13

panic9:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a83eae77ac0032c1d65f1291028f2a67) #22
  unreachable

bb13:                                             ; preds = %bb11
  %_25 = sdiv i32 %_29.0, 2
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_24.0, i32 %_25)
  %_34.0 = extractvalue { i32, i1 } %5, 0
  %_34.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_34.1, label %panic11, label %bb14

panic10:                                          ; preds = %bb11
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_81f9a62de668acbc169cd77de2541e01) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_34.0, ptr %ans, align 4
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

panic11:                                          ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b8dcf5f49a37818d4dea2f88c8838bbc) #22
  unreachable
}
