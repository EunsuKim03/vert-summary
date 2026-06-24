define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %x = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %curr = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
  store i32 1, ptr %curr, align 4
  br label %bb1

bb1:                                              ; preds = %bb15, %start
  store i32 0, ptr %sum, align 4
  %0 = load i32, ptr %curr, align 4
  store i32 %0, ptr %x, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %bb1
  %_7 = load i32, ptr %x, align 4
  %_6 = icmp sgt i32 %_7, 0
  br i1 %_6, label %bb3, label %bb9

bb9:                                              ; preds = %bb2
  %_20 = load i32, ptr %sum, align 4
  %_19 = icmp eq i32 %_20, 10
  br i1 %_19, label %bb10, label %bb12

bb3:                                              ; preds = %bb2
  %_9 = load i32, ptr %x, align 4
  %_12 = icmp eq i32 %_9, -2147483648
  %_13 = and i1 false, %_12
  br i1 %_13, label %panic2, label %bb5

bb12:                                             ; preds = %bb11, %bb9
  %_23 = load i32, ptr %count, align 4
  %_22 = icmp eq i32 %_23, %n
  br i1 %_22, label %bb13, label %bb14

bb10:                                             ; preds = %bb9
  %1 = load i32, ptr %count, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %_21.0 = extractvalue { i32, i1 } %2, 0
  %_21.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_21.1, label %panic, label %bb11

bb11:                                             ; preds = %bb10
  store i32 %_21.0, ptr %count, align 4
  br label %bb12

panic:                                            ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a9034cb91014a962b2d98f8c90ff6cf6) #22
  unreachable

bb14:                                             ; preds = %bb12
  %3 = load i32, ptr %curr, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %_24.0 = extractvalue { i32, i1 } %4, 0
  %_24.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_24.1, label %panic1, label %bb15

bb13:                                             ; preds = %bb12
  %_0 = load i32, ptr %curr, align 4
  ret i32 %_0

bb15:                                             ; preds = %bb14
  store i32 %_24.0, ptr %curr, align 4
  br label %bb1

panic1:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a6d58da0cfe50a3e3a76cb49684f44ff) #22
  unreachable

bb5:                                              ; preds = %bb3
  %_8 = srem i32 %_9, 10
  %5 = load i32, ptr %sum, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 %_8)
  %_14.0 = extractvalue { i32, i1 } %6, 0
  %_14.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_14.1, label %panic3, label %bb6

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b0bcfb44d24ec0395805d73cdc0b4667) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_14.0, ptr %sum, align 4
  %7 = load i32, ptr %x, align 4
  %_17 = icmp eq i32 %7, -2147483648
  %_18 = and i1 false, %_17
  br i1 %_18, label %panic4, label %bb8

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1266d5ef7dcbb6e83a3d21f5c4eeb88f) #22
  unreachable

bb8:                                              ; preds = %bb6
  %8 = load i32, ptr %x, align 4
  %9 = sdiv i32 %8, 10
  store i32 %9, ptr %x, align 4
  br label %bb2

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_e0de0b24d813324f61ed21a6b25f8d8d) #22
  unreachable
}
