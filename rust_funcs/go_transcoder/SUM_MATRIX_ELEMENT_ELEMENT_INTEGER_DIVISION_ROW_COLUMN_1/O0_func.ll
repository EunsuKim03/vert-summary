define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %num = alloca [4 x i8], align 4
  %temp = alloca [4 x i8], align 4
  %ans = alloca [4 x i8], align 4
  store i32 0, ptr %ans, align 4
  store i32 0, ptr %temp, align 4
  store i32 1, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb19, %start
  %_7 = load i32, ptr %i, align 4
  %_6 = icmp sle i32 %_7, %n
  br i1 %_6, label %bb2, label %bb20

bb20:                                             ; preds = %bb2, %bb1
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_9 = load i32, ptr %temp, align 4
  %_8 = icmp slt i32 %_9, %n
  br i1 %_8, label %bb3, label %bb20

bb3:                                              ; preds = %bb2
  %_10 = load i32, ptr %i, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_10, i32 1)
  %_11.0 = extractvalue { i32, i1 } %0, 0
  %_11.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_11.1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_11.0, ptr %temp, align 4
  store i32 1, ptr %num, align 4
  br label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1d3ef002f330c46ce7109de523ef60cf) #22
  unreachable

bb5:                                              ; preds = %bb17, %bb4
  %_13 = load i32, ptr %temp, align 4
  %_12 = icmp slt i32 %_13, %n
  br i1 %_12, label %bb6, label %bb18

bb18:                                             ; preds = %bb5
  %1 = load i32, ptr %i, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %_34.0 = extractvalue { i32, i1 } %2, 0
  %_34.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_34.1, label %panic1, label %bb19

bb6:                                              ; preds = %bb5
  %_16 = load i32, ptr %temp, align 4
  %_17 = load i32, ptr %i, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_16, i32 %_17)
  %_18.0 = extractvalue { i32, i1 } %3, 0
  %_18.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_18.1, label %panic2, label %bb7

bb19:                                             ; preds = %bb18
  store i32 %_34.0, ptr %i, align 4
  br label %bb1

panic1:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bf730295b9e49de47b6b884d14592d11) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_14 = icmp sle i32 %_18.0, %n
  br i1 %_14, label %bb8, label %bb11

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_90689364a93eca2a5494b28d272249b2) #22
  unreachable

bb11:                                             ; preds = %bb7
  %_26 = load i32, ptr %temp, align 4
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %_26)
  %_27.0 = extractvalue { i32, i1 } %4, 0
  %_27.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_27.1, label %panic3, label %bb12

bb8:                                              ; preds = %bb7
  %_20 = load i32, ptr %i, align 4
  %_21 = load i32, ptr %num, align 4
  %5 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_20, i32 %_21)
  %_22.0 = extractvalue { i32, i1 } %5, 0
  %_22.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_22.1, label %panic6, label %bb9

bb12:                                             ; preds = %bb11
  %_28 = load i32, ptr %num, align 4
  %6 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_27.0, i32 %_28)
  %_29.0 = extractvalue { i32, i1 } %6, 0
  %_29.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_29.1, label %panic4, label %bb13

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_30da75ab0131813238aab426735873d8) #22
  unreachable

bb13:                                             ; preds = %bb12
  %7 = load i32, ptr %ans, align 4
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %_29.0)
  %_30.0 = extractvalue { i32, i1 } %8, 0
  %_30.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_30.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_30da75ab0131813238aab426735873d8) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_30.0, ptr %ans, align 4
  br label %bb15

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_566cd2c40fa4dbe8b0a6855f5033d559) #22
  unreachable

bb15:                                             ; preds = %bb10, %bb14
  %_31 = load i32, ptr %i, align 4
  %9 = load i32, ptr %temp, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 %_31)
  %_32.0 = extractvalue { i32, i1 } %10, 0
  %_32.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_32.1, label %panic8, label %bb16

bb9:                                              ; preds = %bb8
  %11 = load i32, ptr %ans, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 %_22.0)
  %_23.0 = extractvalue { i32, i1 } %12, 0
  %_23.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_23.1, label %panic7, label %bb10

panic6:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_20219e55f7f8ebad102fa1b5f568cb86) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_23.0, ptr %ans, align 4
  br label %bb15

panic7:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_79694f027a3185fb4f8c20af1ca3bd5d) #22
  unreachable

bb16:                                             ; preds = %bb15
  store i32 %_32.0, ptr %temp, align 4
  %13 = load i32, ptr %num, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 1)
  %_33.0 = extractvalue { i32, i1 } %14, 0
  %_33.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_33.1, label %panic9, label %bb17

panic8:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_827be811d8c59583694dd5681af9fe1e) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_33.0, ptr %num, align 4
  br label %bb5

panic9:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8d8a79d6bfcf8a6eef6fecf899e62178) #22
  unreachable
}
