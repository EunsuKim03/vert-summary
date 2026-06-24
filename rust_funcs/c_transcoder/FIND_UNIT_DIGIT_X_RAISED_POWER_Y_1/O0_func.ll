define i32 @f_gold(i32 %x, i32 %y) unnamed_addr #3 {
start:
  %y1 = alloca [4 x i8], align 4
  %_6 = icmp eq i32 %x, -2147483648
  %_7 = and i1 false, %_6
  br i1 %_7, label %panic, label %bb2

bb2:                                              ; preds = %start
  %x2 = srem i32 %x, 10
  store i32 %y, ptr %y1, align 4
  %_10 = load i32, ptr %y1, align 4
  %_9 = icmp ne i32 %_10, 0
  br i1 %_9, label %bb3, label %bb7

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c10d5184044fc9fd1d493062a7283388) #22
  unreachable

bb7:                                              ; preds = %bb6, %bb2
  %_20 = sitofp i32 %x2 to float
  %_22 = load i32, ptr %y1, align 4
  %_21 = sitofp i32 %_22 to float
; call std::f32::<impl f32>::powf
  %_19 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4powf17h1d72fde791487fa1E"(float %_20, float %_21) #20
  %_18 = call i32 @llvm.fptosi.sat.i32.f32(float %_19)
  %_25 = icmp eq i32 %_18, -2147483648
  %_26 = and i1 false, %_25
  br i1 %_26, label %panic5, label %bb10

bb3:                                              ; preds = %bb2
  %_12 = load i32, ptr %y1, align 4
  %_15 = icmp eq i32 %_12, -2147483648
  %_16 = and i1 false, %_15
  br i1 %_16, label %panic3, label %bb5

bb5:                                              ; preds = %bb3
  %_11 = srem i32 %_12, 4
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_11, i32 4)
  %_17.0 = extractvalue { i32, i1 } %0, 0
  %_17.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_17.1, label %panic4, label %bb6

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_a0a1176bdbd4e0a59a09737355afaf5d) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_17.0, ptr %y1, align 4
  br label %bb7

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a0a1176bdbd4e0a59a09737355afaf5d) #22
  unreachable

bb10:                                             ; preds = %bb7
  %res = srem i32 %_18, 10
  ret i32 %res

panic5:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_e14d9ac135247872dfa0deb57e4c51cd) #22
  unreachable
}
