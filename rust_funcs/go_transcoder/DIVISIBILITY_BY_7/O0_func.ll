define i32 @f_gold(i32 %num) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp slt i32 %num, 0
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %_5 = icmp eq i32 %num, 0
  br i1 %_5, label %bb6, label %bb4

bb1:                                              ; preds = %start
  %_4 = icmp eq i32 %num, -2147483648
  br i1 %_4, label %panic6, label %bb2

bb4:                                              ; preds = %bb3
  %_6 = icmp eq i32 %num, 7
  br i1 %_6, label %bb6, label %bb5

bb6:                                              ; preds = %bb4, %bb3
  store i32 1, ptr %_0, align 4
  br label %bb17

bb5:                                              ; preds = %bb4
  %_7 = icmp slt i32 %num, 10
  br i1 %_7, label %bb7, label %bb8

bb8:                                              ; preds = %bb5
  %_12 = icmp eq i32 %num, -2147483648
  %_13 = and i1 false, %_12
  br i1 %_13, label %panic, label %bb10

bb7:                                              ; preds = %bb5
  store i32 0, ptr %_0, align 4
  br label %bb17

bb10:                                             ; preds = %bb8
  %_9 = sdiv i32 %num, 10
  %_20 = icmp eq i32 %num, -2147483648
  %_21 = and i1 false, %_20
  br i1 %_21, label %panic1, label %bb12

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_3debe6cd32c3acbb3989ddaae93526e3) #22
  unreachable

bb12:                                             ; preds = %bb10
  %_17 = sdiv i32 %num, 10
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_17, i32 10)
  %_22.0 = extractvalue { i32, i1 } %0, 0
  %_22.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_22.1, label %panic2, label %bb13

panic1:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_8a8f3086066802cdf9f578ac5e9fa284) #22
  unreachable

bb13:                                             ; preds = %bb12
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %num, i32 %_22.0)
  %_23.0 = extractvalue { i32, i1 } %1, 0
  %_23.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_23.1, label %panic3, label %bb14

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8a8f3086066802cdf9f578ac5e9fa284) #22
  unreachable

bb14:                                             ; preds = %bb13
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_23.0)
  %_24.0 = extractvalue { i32, i1 } %2, 0
  %_24.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_24.1, label %panic4, label %bb15

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ea6043c915427184cd5844aee3f4b6eb) #22
  unreachable

bb15:                                             ; preds = %bb14
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_9, i32 %_24.0)
  %_25.0 = extractvalue { i32, i1 } %3, 0
  %_25.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_25.1, label %panic5, label %bb16

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d504fe51d24113c40c85fc12a9fad040) #22
  unreachable

bb16:                                             ; preds = %bb15
  %4 = call i32 @f_gold(i32 %_25.0)
  store i32 %4, ptr %_0, align 4
  br label %bb17

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3debe6cd32c3acbb3989ddaae93526e3) #22
  unreachable

bb17:                                             ; preds = %bb2, %bb6, %bb7, %bb16
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

bb2:                                              ; preds = %bb1
  %_3 = sub i32 0, %num
  %6 = call i32 @f_gold(i32 %_3)
  store i32 %6, ptr %_0, align 4
  br label %bb17

panic6:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_neg_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_neg_overflow17hf7841d7385a517f1E(ptr align 8 @alloc_32d1d6f7c1d7dc22e22c86584ad2442e) #22
  unreachable
}
