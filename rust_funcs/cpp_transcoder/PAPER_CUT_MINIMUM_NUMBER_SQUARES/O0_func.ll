define i32 @f_gold(i32 %0, i32 %1) unnamed_addr #3 {
start:
  %rem = alloca [4 x i8], align 4
  %result = alloca [4 x i8], align 4
  %b = alloca [4 x i8], align 4
  %a = alloca [4 x i8], align 4
  store i32 %0, ptr %a, align 4
  store i32 %1, ptr %b, align 4
  store i32 0, ptr %result, align 4
  store i32 0, ptr %rem, align 4
  %_6 = load i32, ptr %a, align 4
  %_7 = load i32, ptr %b, align 4
  %_5 = icmp slt i32 %_6, %_7
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %bb8, %bb1, %start
  %_12 = load i32, ptr %b, align 4
  %_11 = icmp sgt i32 %_12, 0
  br i1 %_11, label %bb3, label %bb9

bb1:                                              ; preds = %start
; call core::mem::swap
  call void @_ZN4core3mem4swap17h7e3e8adacc019a3cE(ptr align 4 %a, ptr align 4 %b) #20
  br label %bb2

bb9:                                              ; preds = %bb2
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb2
  %_14 = load i32, ptr %a, align 4
  %_15 = load i32, ptr %b, align 4
  %_16 = icmp eq i32 %_15, 0
  br i1 %_16, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  %_17 = icmp eq i32 %_15, -1
  %_18 = icmp eq i32 %_14, -2147483648
  %_19 = and i1 %_17, %_18
  br i1 %_19, label %panic1, label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_964736d171b2a038ef3b09fc985bde6a) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_13 = sdiv i32 %_14, %_15
  %2 = load i32, ptr %result, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %_13)
  %_20.0 = extractvalue { i32, i1 } %3, 0
  %_20.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_20.1, label %panic2, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_964736d171b2a038ef3b09fc985bde6a) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_20.0, ptr %result, align 4
  %_21 = load i32, ptr %a, align 4
  %_22 = load i32, ptr %b, align 4
  %_23 = icmp eq i32 %_22, 0
  br i1 %_23, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b6a8598bfb9f477afa04f0f4a7413716) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_24 = icmp eq i32 %_22, -1
  %_25 = icmp eq i32 %_21, -2147483648
  %_26 = and i1 %_24, %_25
  br i1 %_26, label %panic4, label %bb8

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_03dcbe234beaf67043f0f5056ee23866) #22
  unreachable

bb8:                                              ; preds = %bb7
  %4 = srem i32 %_21, %_22
  store i32 %4, ptr %rem, align 4
  %_27 = load i32, ptr %b, align 4
  store i32 %_27, ptr %a, align 4
  %_28 = load i32, ptr %rem, align 4
  store i32 %_28, ptr %b, align 4
  br label %bb2

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_03dcbe234beaf67043f0f5056ee23866) #22
  unreachable
}
