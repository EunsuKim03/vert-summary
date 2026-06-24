define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %i = alloca [8 x i8], align 8
  %result = alloca [4 x i8], align 4
  store i32 0, ptr %result, align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hdabcd289a24b784aE"(ptr align 4 %arr.0, i64 %arr.1) #21
  store i64 0, ptr %i, align 8
  br label %bb2

bb2:                                              ; preds = %bb15, %start
  %_7 = load i64, ptr %i, align 8
  %_9 = sext i32 %n to i64
  %_10.0 = sub i64 %_9, 1
  %_10.1 = icmp ult i64 %_9, 1
  br i1 %_10.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %_6 = icmp ult i64 %_7, %_10.0
  br i1 %_6, label %bb4, label %bb16

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5d8113645b478bb6d4b3867cf3c2787e) #19
  unreachable

bb16:                                             ; preds = %bb3
  %_37 = sext i32 %n to i64
  %_38.0 = sub i64 %_37, 2
  %_38.1 = icmp ult i64 %_37, 2
  br i1 %_38.1, label %panic1, label %bb17

bb4:                                              ; preds = %bb3
  %_13 = load i64, ptr %i, align 8
  %_16 = icmp ult i64 %_13, %arr.1
  br i1 %_16, label %bb5, label %panic8

bb17:                                             ; preds = %bb16
  %_41 = icmp ult i64 %_38.0, %arr.1
  br i1 %_41, label %bb18, label %panic2

panic1:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f75ba5490a9443ca9860b58f6d72a8c0) #19
  unreachable

bb18:                                             ; preds = %bb17
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_38.0
  %_35 = load float, ptr %0, align 4
  %_44 = sext i32 %n to i64
  %_45.0 = sub i64 %_44, 1
  %_45.1 = icmp ult i64 %_44, 1
  br i1 %_45.1, label %panic3, label %bb19

panic2:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_38.0, i64 %arr.1, ptr align 8 @alloc_a888afa70f62cbbe941a5c2c83b11dec) #19
  unreachable

bb19:                                             ; preds = %bb18
  %_48 = icmp ult i64 %_45.0, %arr.1
  br i1 %_48, label %bb20, label %panic4

panic3:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_edf332329a01dba86b6a786e7108f1a9) #19
  unreachable

bb20:                                             ; preds = %bb19
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_45.0
  %_42 = load float, ptr %1, align 4
  %_34 = fcmp une float %_35, %_42
  br i1 %_34, label %bb21, label %bb26

panic4:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_45.0, i64 %arr.1, ptr align 8 @alloc_4e065a0e36838e60d799892552699aab) #19
  unreachable

bb26:                                             ; preds = %bb25, %bb20
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb21:                                             ; preds = %bb20
  %_53 = sext i32 %n to i64
  %_54.0 = sub i64 %_53, 1
  %_54.1 = icmp ult i64 %_53, 1
  br i1 %_54.1, label %panic5, label %bb22

bb22:                                             ; preds = %bb21
  %_57 = icmp ult i64 %_54.0, %arr.1
  br i1 %_57, label %bb23, label %panic6

panic5:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c64d510b00686e1709e2d0b9d9ba2f81) #19
  unreachable

bb23:                                             ; preds = %bb22
  %2 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_54.0
  %_51 = load float, ptr %2, align 4
  %_50 = call i32 @llvm.fptosi.sat.i32.f32(float %_51)
; call core::num::<impl i32>::abs
  %_49 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h4b08d306fb259906E"(i32 %_50) #21
  %3 = load i32, ptr %result, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 %_49)
  %_58.0 = extractvalue { i32, i1 } %4, 0
  %_58.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_58.1, label %panic7, label %bb25

panic6:                                           ; preds = %bb22
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_54.0, i64 %arr.1, ptr align 8 @alloc_3d63f16cae332f6968db75cfce1b2b9f) #19
  unreachable

bb25:                                             ; preds = %bb23
  store i32 %_58.0, ptr %result, align 4
  br label %bb26

panic7:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_47c437f7013f5a8ca58fa7a810ff8a92) #19
  unreachable

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_13
  %_12 = load float, ptr %5, align 4
  %_19 = load i64, ptr %i, align 8
  %_20.0 = add i64 %_19, 1
  %_20.1 = icmp ult i64 %_20.0, %_19
  br i1 %_20.1, label %panic9, label %bb6

panic8:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 %arr.1, ptr align 8 @alloc_36f08aea09421b3da751b6aae8c9f1a7) #19
  unreachable

bb6:                                              ; preds = %bb5
  %_23 = icmp ult i64 %_20.0, %arr.1
  br i1 %_23, label %bb7, label %panic10

panic9:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_100a5297d29976c746cdde78101790ce) #19
  unreachable

bb7:                                              ; preds = %bb6
  %6 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_20.0
  %_17 = load float, ptr %6, align 4
  %_11 = fcmp une float %_12, %_17
  br i1 %_11, label %bb8, label %bb12

panic10:                                          ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20.0, i64 %arr.1, ptr align 8 @alloc_7744f69448cabd925a11a812c34ee3ab) #19
  unreachable

bb12:                                             ; preds = %bb7
  %7 = load i64, ptr %i, align 8
  %_32.0 = add i64 %7, 1
  %_32.1 = icmp ult i64 %_32.0, %7
  br i1 %_32.1, label %panic11, label %bb13

bb8:                                              ; preds = %bb7
  %_27 = load i64, ptr %i, align 8
  %_30 = icmp ult i64 %_27, %arr.1
  br i1 %_30, label %bb9, label %panic12

bb13:                                             ; preds = %bb12
  store i64 %_32.0, ptr %i, align 8
  br label %bb14

panic11:                                          ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_670bbd32c0d6ff3daf72c950e007ce3c) #19
  unreachable

bb14:                                             ; preds = %bb11, %bb13
  %8 = load i64, ptr %i, align 8
  %_33.0 = add i64 %8, 1
  %_33.1 = icmp ult i64 %_33.0, %8
  br i1 %_33.1, label %panic14, label %bb15

bb9:                                              ; preds = %bb8
  %9 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_27
  %_26 = load float, ptr %9, align 4
  %_25 = call i32 @llvm.fptosi.sat.i32.f32(float %_26)
; call core::num::<impl i32>::abs
  %_24 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h4b08d306fb259906E"(i32 %_25) #21
  %10 = load i32, ptr %result, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 %_24)
  %_31.0 = extractvalue { i32, i1 } %11, 0
  %_31.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_31.1, label %panic13, label %bb11

panic12:                                          ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 %arr.1, ptr align 8 @alloc_7cd1881ed28099c39bc2a97d31a706fd) #19
  unreachable

bb11:                                             ; preds = %bb9
  store i32 %_31.0, ptr %result, align 4
  br label %bb14

panic13:                                          ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1abbfff5400dd5eac899e26317afcc72) #19
  unreachable

bb15:                                             ; preds = %bb14
  store i64 %_33.0, ptr %i, align 8
  br label %bb2

panic14:                                          ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0b1b765a32d4b482120ae91a938429ab) #19
  unreachable
}
