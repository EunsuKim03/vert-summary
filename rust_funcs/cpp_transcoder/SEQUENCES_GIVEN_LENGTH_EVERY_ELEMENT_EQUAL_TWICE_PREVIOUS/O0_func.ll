define i32 @f_gold(i32 %m, i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp slt i32 %m, %n
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_4 = icmp eq i32 %n, 0
  br i1 %_4, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb12

bb4:                                              ; preds = %bb2
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %m, i32 1)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb5

bb3:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb12

bb5:                                              ; preds = %bb4
  %_5 = call i32 @f_gold(i32 %_7.0, i32 %n)
  %_12 = icmp eq i32 %m, -2147483648
  %_13 = and i1 false, %_12
  br i1 %_13, label %panic1, label %bb8

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b23ead9321ac4048304fd297d0106e7a) #22
  unreachable

bb8:                                              ; preds = %bb5
  %_9 = sdiv i32 %m, 2
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_15.0 = extractvalue { i32, i1 } %1, 0
  %_15.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_15.1, label %panic2, label %bb9

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_51f153ba73c736bb7dff97a7ce43b342) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_8 = call i32 @f_gold(i32 %_9, i32 %_15.0)
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_5, i32 %_8)
  %_16.0 = extractvalue { i32, i1 } %2, 0
  %_16.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_16.1, label %panic3, label %bb11

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7f363e022adf26ec349aa31f52ea0013) #22
  unreachable

bb11:                                             ; preds = %bb9
  store i32 %_16.0, ptr %_0, align 4
  br label %bb12

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1eee0526bf2b978d5253b6908935fea4) #22
  unreachable

bb12:                                             ; preds = %bb1, %bb3, %bb11
  %3 = load i32, ptr %_0, align 4
  ret i32 %3
}
