define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_6 = sitofp i32 %a to float
  %_5 = fdiv float %_6, 2.000000e+00
  %_4 = call i32 @llvm.fptosi.sat.i32.f32(float %_5)
  %_9 = sitofp i32 %b to float
  %_8 = fdiv float %_9, 2.000000e+00
  %_7 = call i32 @llvm.fptosi.sat.i32.f32(float %_8)
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_4, i32 %_7)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_10.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_18 = icmp eq i32 %a, -2147483648
  %_19 = and i1 false, %_18
  br i1 %_19, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4c6f00df81be25c1067a382430ef5795) #22
  unreachable

bb3:                                              ; preds = %bb1
  %_15 = srem i32 %a, 2
  %_23 = icmp eq i32 %b, -2147483648
  %_24 = and i1 false, %_23
  br i1 %_24, label %panic2, label %bb5

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_a63b7fac64fea6804c22a620404756ec) #22
  unreachable

bb5:                                              ; preds = %bb3
  %_20 = srem i32 %b, 2
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_15, i32 %_20)
  %_25.0 = extractvalue { i32, i1 } %1, 0
  %_25.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_25.1, label %panic3, label %bb6

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_3a14e84954670e4b25547c57ad37d079) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_13 = sitofp i32 %_25.0 to float
  %_12 = fdiv float %_13, 2.000000e+00
  %_11 = call i32 @llvm.fptosi.sat.i32.f32(float %_12)
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_10.0, i32 %_11)
  %_26.0 = extractvalue { i32, i1 } %2, 0
  %_26.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_26.1, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d67cfe66d860108d10d26e3e21e026d0) #22
  unreachable

bb7:                                              ; preds = %bb6
  ret i32 %_26.0

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4c6f00df81be25c1067a382430ef5795) #22
  unreachable
}
