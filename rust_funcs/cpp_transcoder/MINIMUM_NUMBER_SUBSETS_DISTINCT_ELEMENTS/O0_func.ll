define i32 @f_gold(ptr align 4 %ar.0, i64 %ar.1, i32 %n) unnamed_addr #3 {
start:
  %count = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb15, %start
  %_6 = load i64, ptr %i, align 8
  %_8 = sext i32 %n to i64
  %_9.0 = sub i64 %_8, 1
  %_9.1 = icmp ult i64 %_8, 1
  br i1 %_9.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = icmp ult i64 %_6, %_9.0
  br i1 %_5, label %bb3, label %bb16

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5fdfe5196d607477c75719037a77fb47) #22
  unreachable

bb16:                                             ; preds = %bb2
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb2
  store i32 1, ptr %count, align 4
  br label %bb4

bb4:                                              ; preds = %bb12, %bb3
  %_12 = load i64, ptr %i, align 8
  %_14 = sext i32 %n to i64
  %_15.0 = sub i64 %_14, 1
  %_15.1 = icmp ult i64 %_14, 1
  br i1 %_15.1, label %panic1, label %bb5

bb5:                                              ; preds = %bb4
  %_11 = icmp ult i64 %_12, %_15.0
  br i1 %_11, label %bb6, label %bb13

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_befc17dbc98ce879cce831209b5727f2) #22
  unreachable

bb13:                                             ; preds = %bb9, %bb5
  %_32 = load i32, ptr %res, align 4
  %_33 = load i32, ptr %count, align 4
; call core::cmp::Ord::max
  %_31 = call i32 @_ZN4core3cmp3Ord3max17hf027ce91e1ae873cE(i32 %_32, i32 %_33) #20
  store i32 %_31, ptr %res, align 4
  %0 = load i64, ptr %i, align 8
  %_34.0 = add i64 %0, 1
  %_34.1 = icmp ult i64 %_34.0, %0
  br i1 %_34.1, label %panic5, label %bb15

bb6:                                              ; preds = %bb5
  %_18 = load i64, ptr %i, align 8
  %_21 = icmp ult i64 %_18, %ar.1
  br i1 %_21, label %bb7, label %panic2

bb7:                                              ; preds = %bb6
  %1 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %_18
  %_17 = load i32, ptr %1, align 4
  %_24 = load i64, ptr %i, align 8
  %_25.0 = add i64 %_24, 1
  %_25.1 = icmp ult i64 %_25.0, %_24
  br i1 %_25.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 %ar.1, ptr align 8 @alloc_93246e8284e297d48b1a90a2910f1d78) #22
  unreachable

bb8:                                              ; preds = %bb7
  %_28 = icmp ult i64 %_25.0, %ar.1
  br i1 %_28, label %bb9, label %panic4

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_468fbda52e70fe6bbc75edb083ebb055) #22
  unreachable

bb9:                                              ; preds = %bb8
  %2 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %_25.0
  %_22 = load i32, ptr %2, align 4
  %_16 = icmp eq i32 %_17, %_22
  br i1 %_16, label %bb10, label %bb13

panic4:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25.0, i64 %ar.1, ptr align 8 @alloc_fba2c703b594f75a2efc437bd70a2d30) #22
  unreachable

bb10:                                             ; preds = %bb9
  %3 = load i32, ptr %count, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %_29.0 = extractvalue { i32, i1 } %4, 0
  %_29.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_29.1, label %panic6, label %bb11

bb15:                                             ; preds = %bb13
  store i64 %_34.0, ptr %i, align 8
  br label %bb1

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_958e39e0e0f353a285be7cae3802bfad) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_29.0, ptr %count, align 4
  %5 = load i64, ptr %i, align 8
  %_30.0 = add i64 %5, 1
  %_30.1 = icmp ult i64 %_30.0, %5
  br i1 %_30.1, label %panic7, label %bb12

panic6:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e7bb8fceaf0d6982e203d83d69f1f925) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i64 %_30.0, ptr %i, align 8
  br label %bb4

panic7:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_93ce3579675b046252be113e9e0b803c) #22
  unreachable
}
