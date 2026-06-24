define i32 @f_gold(ptr align 4 %ar.0, i64 %ar.1, i32 %n) unnamed_addr #3 {
start:
  %count = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %res = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h8cf3f2205074f340E"(ptr align 4 %ar.0, i64 %ar.1) #20
  store i32 0, ptr %res, align 4
  store i64 0, ptr %i, align 8
  br label %bb2

bb2:                                              ; preds = %bb16, %start
  %_7 = load i64, ptr %i, align 8
  %_9 = sext i32 %n to i64
  %_10.0 = sub i64 %_9, 1
  %_10.1 = icmp ult i64 %_9, 1
  br i1 %_10.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %_6 = icmp ult i64 %_7, %_10.0
  br i1 %_6, label %bb4, label %bb17

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_36c670256fa4f31b80124ee1233d3fab) #22
  unreachable

bb17:                                             ; preds = %bb3
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb4:                                              ; preds = %bb3
  store i32 1, ptr %count, align 4
  br label %bb5

bb5:                                              ; preds = %bb13, %bb4
  %_13 = load i64, ptr %i, align 8
  %_15 = sext i32 %n to i64
  %_16.0 = sub i64 %_15, 1
  %_16.1 = icmp ult i64 %_15, 1
  br i1 %_16.1, label %panic1, label %bb6

bb6:                                              ; preds = %bb5
  %_12 = icmp ult i64 %_13, %_16.0
  br i1 %_12, label %bb7, label %bb14

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_14be7b10c859854e55d3daa636e39940) #22
  unreachable

bb14:                                             ; preds = %bb10, %bb6
  %_33 = load i32, ptr %res, align 4
  %_34 = load i32, ptr %count, align 4
; call core::cmp::Ord::max
  %_32 = call i32 @_ZN4core3cmp3Ord3max17hf027ce91e1ae873cE(i32 %_33, i32 %_34) #20
  store i32 %_32, ptr %res, align 4
  %0 = load i64, ptr %i, align 8
  %_35.0 = add i64 %0, 1
  %_35.1 = icmp ult i64 %_35.0, %0
  br i1 %_35.1, label %panic5, label %bb16

bb7:                                              ; preds = %bb6
  %_19 = load i64, ptr %i, align 8
  %_22 = icmp ult i64 %_19, %ar.1
  br i1 %_22, label %bb8, label %panic2

bb8:                                              ; preds = %bb7
  %1 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %_19
  %_18 = load i32, ptr %1, align 4
  %_25 = load i64, ptr %i, align 8
  %_26.0 = add i64 %_25, 1
  %_26.1 = icmp ult i64 %_26.0, %_25
  br i1 %_26.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 %ar.1, ptr align 8 @alloc_f65fb40ebe18196b3c4b526d70fc48d3) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_29 = icmp ult i64 %_26.0, %ar.1
  br i1 %_29, label %bb10, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_45179c52f0fcc392deb26242db61ceef) #22
  unreachable

bb10:                                             ; preds = %bb9
  %2 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %_26.0
  %_23 = load i32, ptr %2, align 4
  %_17 = icmp eq i32 %_18, %_23
  br i1 %_17, label %bb11, label %bb14

panic4:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26.0, i64 %ar.1, ptr align 8 @alloc_5a4e2e2827c9baab404b2aa355eebd22) #22
  unreachable

bb11:                                             ; preds = %bb10
  %3 = load i32, ptr %count, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %_30.0 = extractvalue { i32, i1 } %4, 0
  %_30.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_30.1, label %panic6, label %bb12

bb16:                                             ; preds = %bb14
  store i64 %_35.0, ptr %i, align 8
  br label %bb2

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_293727af17c06527e22fa291b8d0c6f5) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_30.0, ptr %count, align 4
  %5 = load i64, ptr %i, align 8
  %_31.0 = add i64 %5, 1
  %_31.1 = icmp ult i64 %_31.0, %5
  br i1 %_31.1, label %panic7, label %bb13

panic6:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_efbb3d9e4a07e6dba84e6b39cde42cb8) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i64 %_31.0, ptr %i, align 8
  br label %bb5

panic7:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ed338f003b6cef3f74bf3fe8ee1352b7) #22
  unreachable
}
