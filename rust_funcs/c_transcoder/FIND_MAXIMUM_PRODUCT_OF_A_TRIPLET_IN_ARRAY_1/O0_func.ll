define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha496d94d7e9d9cd2E"(ptr align 4 %arr.0, i64 %arr.1) #19
  %_11 = icmp ult i64 0, %arr.1
  br i1 %_11, label %bb4, label %panic

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb18

bb4:                                              ; preds = %bb2
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 0
  %_7 = load i32, ptr %0, align 4
  %_16 = icmp ult i64 1, %arr.1
  br i1 %_16, label %bb5, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %arr.1, ptr align 8 @alloc_3521aa7f5478fcf32067ded2d99bb6f1) #22
  unreachable

bb5:                                              ; preds = %bb4
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 1
  %_12 = load i32, ptr %1, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_7, i32 %_12)
  %_17.0 = extractvalue { i32, i1 } %2, 0
  %_17.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_17.1, label %panic2, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 1, i64 %arr.1, ptr align 8 @alloc_868a185cf299b700f382c085076181de) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_20 = sext i32 %n to i64
  %_21.0 = sub i64 %_20, 1
  %_21.1 = icmp ult i64 %_20, 1
  br i1 %_21.1, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3521aa7f5478fcf32067ded2d99bb6f1) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_24 = icmp ult i64 %_21.0, %arr.1
  br i1 %_24, label %bb8, label %panic4

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_000cbcbff9323975af9286afd6e5a365) #22
  unreachable

bb8:                                              ; preds = %bb7
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_21.0
  %_18 = load i32, ptr %3, align 4
  %4 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_17.0, i32 %_18)
  %_25.0 = extractvalue { i32, i1 } %4, 0
  %_25.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_25.1, label %panic5, label %bb9

panic4:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21.0, i64 %arr.1, ptr align 8 @alloc_d60ca30a257a7fa26d826080aaa27cf0) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_30 = sext i32 %n to i64
  %_31.0 = sub i64 %_30, 1
  %_31.1 = icmp ult i64 %_30, 1
  br i1 %_31.1, label %panic6, label %bb10

panic5:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3521aa7f5478fcf32067ded2d99bb6f1) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_34 = icmp ult i64 %_31.0, %arr.1
  br i1 %_34, label %bb11, label %panic7

panic6:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f15e8abe068cb4b535b7114a75ba8293) #22
  unreachable

bb11:                                             ; preds = %bb10
  %5 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_31.0
  %_28 = load i32, ptr %5, align 4
  %_37 = sext i32 %n to i64
  %_38.0 = sub i64 %_37, 2
  %_38.1 = icmp ult i64 %_37, 2
  br i1 %_38.1, label %panic8, label %bb12

panic7:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31.0, i64 %arr.1, ptr align 8 @alloc_c3dbc142ec7fba974ae576aa5b295caa) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_41 = icmp ult i64 %_38.0, %arr.1
  br i1 %_41, label %bb13, label %panic9

panic8:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_756f807cdf34f142a8a57eaa607b2bd4) #22
  unreachable

bb13:                                             ; preds = %bb12
  %6 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_38.0
  %_35 = load i32, ptr %6, align 4
  %7 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_28, i32 %_35)
  %_42.0 = extractvalue { i32, i1 } %7, 0
  %_42.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_42.1, label %panic10, label %bb14

panic9:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_38.0, i64 %arr.1, ptr align 8 @alloc_36f0489c3c5a4d4bc3ebf869687918e7) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_45 = sext i32 %n to i64
  %_46.0 = sub i64 %_45, 3
  %_46.1 = icmp ult i64 %_45, 3
  br i1 %_46.1, label %panic11, label %bb15

panic10:                                          ; preds = %bb13
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c3dbc142ec7fba974ae576aa5b295caa) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_49 = icmp ult i64 %_46.0, %arr.1
  br i1 %_49, label %bb16, label %panic12

panic11:                                          ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0294eadfa1cf4874cbbcae2bc315b117) #22
  unreachable

bb16:                                             ; preds = %bb15
  %8 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_46.0
  %_43 = load i32, ptr %8, align 4
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_42.0, i32 %_43)
  %_50.0 = extractvalue { i32, i1 } %9, 0
  %_50.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_50.1, label %panic13, label %bb17

panic12:                                          ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_46.0, i64 %arr.1, ptr align 8 @alloc_8185af6250b77bc8858b10571ba86212) #22
  unreachable

bb17:                                             ; preds = %bb16
; call core::cmp::max
  %10 = call i32 @_ZN4core3cmp3max17he6c2125b25e1f552E(i32 %_25.0, i32 %_50.0) #19
  store i32 %10, ptr %_0, align 4
  br label %bb18

panic13:                                          ; preds = %bb16
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c3dbc142ec7fba974ae576aa5b295caa) #22
  unreachable

bb18:                                             ; preds = %bb1, %bb17
  %11 = load i32, ptr %_0, align 4
  ret i32 %11
}
