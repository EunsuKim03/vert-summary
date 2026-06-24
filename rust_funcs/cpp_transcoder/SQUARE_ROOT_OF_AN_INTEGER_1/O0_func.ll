define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %ans = alloca [4 x i8], align 4
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
  br label %bb18

bb3:                                              ; preds = %bb1
  store i32 1, ptr %start1, align 4
  store i32 %x, ptr %end, align 4
  store i32 0, ptr %ans, align 4
  br label %bb4

bb4:                                              ; preds = %bb14, %bb16, %bb3
  %_8 = load i32, ptr %start1, align 4
  %_9 = load i32, ptr %end, align 4
  %_7 = icmp sle i32 %_8, %_9
  br i1 %_7, label %bb5, label %bb17

bb17:                                             ; preds = %bb4
  %0 = load i32, ptr %ans, align 4
  store i32 %0, ptr %_0, align 4
  br label %bb18

bb5:                                              ; preds = %bb4
  %_12 = load i32, ptr %start1, align 4
  %_13 = load i32, ptr %end, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_12, i32 %_13)
  %_14.0 = extractvalue { i32, i1 } %1, 0
  %_14.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_14.1, label %panic, label %bb6

bb18:                                             ; preds = %bb2, %bb10, %bb17
  %2 = load i32, ptr %_0, align 4
  ret i32 %2

bb6:                                              ; preds = %bb5
  %_17 = icmp eq i32 %_14.0, -2147483648
  %_18 = and i1 false, %_17
  br i1 %_18, label %panic2, label %bb8

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_563657406638a8e1d13a3ebe6f464923) #22
  unreachable

bb8:                                              ; preds = %bb6
  %mid = sdiv i32 %_14.0, 2
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %mid, i32 %mid)
  %_21.0 = extractvalue { i32, i1 } %3, 0
  %_21.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_21.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_563657406638a8e1d13a3ebe6f464923) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_19 = icmp eq i32 %_21.0, %x
  br i1 %_19, label %bb10, label %bb11

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b078ab662fc9df69cca4f27d47ac153f) #22
  unreachable

bb11:                                             ; preds = %bb9
  %4 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %mid, i32 %mid)
  %_24.0 = extractvalue { i32, i1 } %4, 0
  %_24.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_24.1, label %panic4, label %bb12

bb10:                                             ; preds = %bb9
  store i32 %mid, ptr %_0, align 4
  br label %bb18

bb12:                                             ; preds = %bb11
  %_22 = icmp slt i32 %_24.0, %x
  br i1 %_22, label %bb13, label %bb15

panic4:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1ceade113d842dddbb5d07d19ab14bcb) #22
  unreachable

bb15:                                             ; preds = %bb12
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %mid, i32 1)
  %_26.0 = extractvalue { i32, i1 } %5, 0
  %_26.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_26.1, label %panic5, label %bb16

bb13:                                             ; preds = %bb12
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mid, i32 1)
  %_25.0 = extractvalue { i32, i1 } %6, 0
  %_25.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_25.1, label %panic6, label %bb14

bb16:                                             ; preds = %bb15
  store i32 %_26.0, ptr %end, align 4
  br label %bb4

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ddf142c6f3e912e47cc9e61f762cb91c) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_25.0, ptr %start1, align 4
  store i32 %mid, ptr %ans, align 4
  br label %bb4

panic6:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_62a4919514b4b8cb386999dec0b2fe1e) #22
  unreachable
}
