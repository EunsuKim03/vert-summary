define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 2)
  %_4.0 = extractvalue { i32, i1 } %0, 0
  %_4.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_4.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_4.0)
  %_5.0 = extractvalue { i32, i1 } %1, 0
  %_5.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_5.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_bc036ab03ea7818352aaa9ec603a04a6) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %n)
  %_10.0 = extractvalue { i32, i1 } %2, 0
  %_10.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_10.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_549879a04c930353a5d3cf6f83d9ec8d) #22
  unreachable

bb3:                                              ; preds = %bb2
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_10.0, i32 1)
  %_11.0 = extractvalue { i32, i1 } %3, 0
  %_11.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_11.1, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d2fe1062c9cb64f1f5a0743c1a65c991) #22
  unreachable

bb4:                                              ; preds = %bb3
  %4 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %_11.0)
  %_12.0 = extractvalue { i32, i1 } %4, 0
  %_12.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_12.1, label %panic4, label %bb5

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3ec641d0a4ebe5dbfc65aeef73b6823b) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_15 = icmp eq i32 %_12.0, -2147483648
  %_16 = and i1 false, %_15
  br i1 %_16, label %panic5, label %bb7

panic4:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_7a31e8a60ada96e30d6daa0f0e5e9d4b) #22
  unreachable

bb7:                                              ; preds = %bb5
  %_6 = sdiv i32 %_12.0, 2
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_5.0, i32 %_6)
  %_17.0 = extractvalue { i32, i1 } %5, 0
  %_17.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_17.1, label %panic6, label %bb8

panic5:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_e9434c83f05267fc568a0688dc1b9ef0) #22
  unreachable

bb8:                                              ; preds = %bb7
  ret i32 %_17.0

panic6:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_549879a04c930353a5d3cf6f83d9ec8d) #22
  unreachable
}
