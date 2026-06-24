define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %end = alloca [4 x i8], align 4
  %start1 = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %x, 0
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp eq i32 %x, 1
  br i1 %_3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 %x, ptr %_0, align 4
  br label %bb16

bb3:                                              ; preds = %bb1
  store i32 1, ptr %start1, align 4
  store i32 %x, ptr %end, align 4
  br label %bb4

bb4:                                              ; preds = %bb13, %bb15, %bb3
  %_8 = load i32, ptr %start1, align 4
  %_9 = load i32, ptr %end, align 4
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_8, i32 %_9)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_10.1, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  %_13 = icmp eq i32 %_10.0, -2147483648
  %_14 = and i1 false, %_13
  br i1 %_14, label %panic2, label %bb7

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a584a00828ee1b846e1f3e407f6f8c2a) #22
  unreachable

bb7:                                              ; preds = %bb5
  %ans = sdiv i32 %_10.0, 2
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %ans, i32 %ans)
  %_17.0 = extractvalue { i32, i1 } %1, 0
  %_17.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_17.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_a584a00828ee1b846e1f3e407f6f8c2a) #22
  unreachable

bb8:                                              ; preds = %bb7
  %_15 = icmp eq i32 %_17.0, %x
  br i1 %_15, label %bb9, label %bb10

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a63e83b9f78a70f02644076121d5ef5f) #22
  unreachable

bb10:                                             ; preds = %bb8
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %ans, i32 %ans)
  %_20.0 = extractvalue { i32, i1 } %2, 0
  %_20.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_20.1, label %panic4, label %bb11

bb9:                                              ; preds = %bb8
  store i32 %ans, ptr %_0, align 4
  br label %bb16

bb11:                                             ; preds = %bb10
  %_18 = icmp slt i32 %_20.0, %x
  br i1 %_18, label %bb12, label %bb14

panic4:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3654e033fda26d03e483bac654ce5eba) #22
  unreachable

bb14:                                             ; preds = %bb11
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ans, i32 1)
  %_22.0 = extractvalue { i32, i1 } %3, 0
  %_22.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_22.1, label %panic5, label %bb15

bb12:                                             ; preds = %bb11
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ans, i32 1)
  %_21.0 = extractvalue { i32, i1 } %4, 0
  %_21.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_21.1, label %panic6, label %bb13

bb15:                                             ; preds = %bb14
  store i32 %_22.0, ptr %end, align 4
  br label %bb4

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0420dc5b30911aad93be9c3df6da0523) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %_21.0, ptr %start1, align 4
  br label %bb4

panic6:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a19f97d48ff9cdd906a6ee8247027963) #22
  unreachable

bb16:                                             ; preds = %bb2, %bb9
  %5 = load i32, ptr %_0, align 4
  ret i32 %5
}
