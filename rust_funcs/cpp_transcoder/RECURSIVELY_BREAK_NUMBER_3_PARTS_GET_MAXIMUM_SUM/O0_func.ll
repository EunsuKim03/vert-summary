define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 0
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 %n, ptr %_0, align 4
  br label %bb15

bb3:                                              ; preds = %bb1
  %_10 = icmp eq i32 %n, -2147483648
  %_11 = and i1 false, %_10
  br i1 %_11, label %panic, label %bb5

bb5:                                              ; preds = %bb3
  %_7 = sdiv i32 %n, 2
  %_6 = call i32 @f_gold(i32 %_7)
  %_16 = icmp eq i32 %n, -2147483648
  %_17 = and i1 false, %_16
  br i1 %_17, label %panic1, label %bb8

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_f0c193be248acef88a23a60853e65c09) #22
  unreachable

bb8:                                              ; preds = %bb5
  %_13 = sdiv i32 %n, 3
  %_12 = call i32 @f_gold(i32 %_13)
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_6, i32 %_12)
  %_18.0 = extractvalue { i32, i1 } %0, 0
  %_18.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_18.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_4027b8ccfdb3e1ef82fbc2b4800c0e6b) #22
  unreachable

bb10:                                             ; preds = %bb8
  %_23 = icmp eq i32 %n, -2147483648
  %_24 = and i1 false, %_23
  br i1 %_24, label %panic3, label %bb12

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_29d3fbd772b8fb131a4ae99380c09412) #22
  unreachable

bb12:                                             ; preds = %bb10
  %_20 = sdiv i32 %n, 4
  %_19 = call i32 @f_gold(i32 %_20)
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_18.0, i32 %_19)
  %_25.0 = extractvalue { i32, i1 } %1, 0
  %_25.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_25.1, label %panic4, label %bb14

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_67c99c2f0f3295a4c8b5f37b76b715a9) #22
  unreachable

bb14:                                             ; preds = %bb12
  %2 = call i32 @max(i32 %_25.0, i32 %n)
  store i32 %2, ptr %_0, align 4
  br label %bb15

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_29d3fbd772b8fb131a4ae99380c09412) #22
  unreachable

bb15:                                             ; preds = %bb2, %bb14
  %3 = load i32, ptr %_0, align 4
  ret i32 %3
}
