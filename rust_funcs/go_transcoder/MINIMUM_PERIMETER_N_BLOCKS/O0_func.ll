define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %perimeter = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_4 = sitofp i32 %n to float
; call std::f32::<impl f32>::sqrt
  %_3 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h3ecdcc3c8106777aE"(float %_4) #20
  %l = call i32 @llvm.fptosi.sat.i32.f32(float %_3)
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %l, i32 %l)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_7 = icmp eq i32 %_6.0, %n
  br i1 %_7, label %bb3, label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_0196dfbf4bcec5b37a2ab0e6690b931f) #22
  unreachable

bb5:                                              ; preds = %bb2
  %_10 = icmp eq i32 %l, 0
  br i1 %_10, label %panic1, label %bb6

bb3:                                              ; preds = %bb2
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %l, i32 4)
  %_8.0 = extractvalue { i32, i1 } %1, 0
  %_8.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_8.1, label %panic8, label %bb4

bb6:                                              ; preds = %bb5
  %_11 = icmp eq i32 %l, -1
  %_12 = icmp eq i32 %n, -2147483648
  %_13 = and i1 %_11, %_12
  br i1 %_13, label %panic2, label %bb7

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_e8ce67db8f136b902631fd83bf7ac707) #22
  unreachable

bb7:                                              ; preds = %bb6
  %row = sdiv i32 %n, %l
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l, i32 %row)
  %_16.0 = extractvalue { i32, i1 } %2, 0
  %_16.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_16.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_e8ce67db8f136b902631fd83bf7ac707) #22
  unreachable

bb8:                                              ; preds = %bb7
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_16.0)
  %_17.0 = extractvalue { i32, i1 } %3, 0
  %_17.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_17.1, label %panic4, label %bb9

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c8930f3558701f8ca2248b35d8b19814) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_17.0, ptr %perimeter, align 4
  %_20 = icmp eq i32 %l, 0
  br i1 %_20, label %panic5, label %bb10

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_cfacbc98bdb2026966034a0827a2bf89) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_21 = icmp eq i32 %l, -1
  %_22 = icmp eq i32 %n, -2147483648
  %_23 = and i1 %_21, %_22
  br i1 %_23, label %panic6, label %bb11

panic5:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_08e5aa12405368d363d98b3732253997) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_19 = srem i32 %n, %l
  %_18 = icmp ne i32 %_19, 0
  br i1 %_18, label %bb12, label %bb14

panic6:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_08e5aa12405368d363d98b3732253997) #22
  unreachable

bb14:                                             ; preds = %bb13, %bb11
  %4 = load i32, ptr %perimeter, align 4
  store i32 %4, ptr %_0, align 4
  br label %bb15

bb12:                                             ; preds = %bb11
  %5 = load i32, ptr %perimeter, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 2)
  %_24.0 = extractvalue { i32, i1 } %6, 0
  %_24.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_24.1, label %panic7, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_24.0, ptr %perimeter, align 4
  br label %bb14

panic7:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2efb44286b61fa10785d4b9be1f37a92) #22
  unreachable

bb15:                                             ; preds = %bb4, %bb14
  %7 = load i32, ptr %_0, align 4
  ret i32 %7

bb4:                                              ; preds = %bb3
  store i32 %_8.0, ptr %_0, align 4
  br label %bb15

panic8:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5d88a355011ccecbf333e140328bbef9) #22
  unreachable
}
