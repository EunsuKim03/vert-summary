define i32 @f_gold(i32 %0, i32 %1, i32 %d) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %b = alloca [4 x i8], align 4
  %a = alloca [4 x i8], align 4
  store i32 %0, ptr %a, align 4
  store i32 %1, ptr %b, align 4
  %temp = load i32, ptr %a, align 4
  %_6 = load i32, ptr %a, align 4
  %_7 = load i32, ptr %b, align 4
; call core::cmp::Ord::min
  %_5 = call i32 @_ZN4core3cmp3Ord3min17h5a4a6d2c1f1ba9a4E(i32 %_6, i32 %_7) #20
  store i32 %_5, ptr %a, align 4
  %_9 = load i32, ptr %b, align 4
; call core::cmp::Ord::max
  %_8 = call i32 @_ZN4core3cmp3Ord3max17h381551898a9f6fbdE(i32 %temp, i32 %_9) #20
  store i32 %_8, ptr %b, align 4
  %_11 = load i32, ptr %b, align 4
  %_10 = icmp sge i32 %d, %_11
  br i1 %_10, label %bb3, label %bb8

bb8:                                              ; preds = %start
  %_22 = icmp eq i32 %d, 0
  br i1 %_22, label %bb9, label %bb10

bb3:                                              ; preds = %start
  %_14 = load i32, ptr %b, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %d, i32 %_14)
  %_15.0 = extractvalue { i32, i1 } %2, 0
  %_15.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_15.1, label %panic, label %bb4

bb10:                                             ; preds = %bb8
  %_24 = load i32, ptr %a, align 4
  %_23 = icmp eq i32 %d, %_24
  br i1 %_23, label %bb11, label %bb12

bb9:                                              ; preds = %bb8
  store i32 0, ptr %_0, align 4
  br label %bb13

bb12:                                             ; preds = %bb10
  store i32 2, ptr %_0, align 4
  br label %bb13

bb11:                                             ; preds = %bb10
  store i32 1, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb7, %bb9, %bb11, %bb12
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb4:                                              ; preds = %bb3
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_15.0, i32 1)
  %_16.0 = extractvalue { i32, i1 } %4, 0
  %_16.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_16.1, label %panic1, label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1038828316c02d956a45f5c0840a7b1e) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_17 = load i32, ptr %b, align 4
  %_18 = icmp eq i32 %_17, 0
  br i1 %_18, label %panic2, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_af8ee96c92e45108a716efef7c8ddede) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_19 = icmp eq i32 %_17, -1
  %_20 = icmp eq i32 %_16.0, -2147483648
  %_21 = and i1 %_19, %_20
  br i1 %_21, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_af8ee96c92e45108a716efef7c8ddede) #22
  unreachable

bb7:                                              ; preds = %bb6
  %5 = sdiv i32 %_16.0, %_17
  store i32 %5, ptr %_0, align 4
  br label %bb13

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_af8ee96c92e45108a716efef7c8ddede) #22
  unreachable
}
