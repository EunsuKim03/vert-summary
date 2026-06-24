define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %r = alloca [8 x i8], align 8
  %l = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %_6 = load i64, ptr %i, align 8
  %_8 = sext i32 %n to i64
  %_9.0 = sub i64 %_8, 1
  %_9.1 = icmp ult i64 %_8, 1
  br i1 %_9.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = icmp ult i64 %_6, %_9.0
  br i1 %_5, label %bb3, label %bb9

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_396fa15f451e313b0b8f07e0fa25a41b) #22
  unreachable

bb9:                                              ; preds = %bb6, %bb2
  %_22 = load i64, ptr %i, align 8
  %_23.0 = add i64 %_22, 1
  %_23.1 = icmp ult i64 %_23.0, %_22
  br i1 %_23.1, label %panic4, label %bb10

bb3:                                              ; preds = %bb2
  %_12 = load i64, ptr %i, align 8
  %_13 = icmp ult i64 %_12, 2
  br i1 %_13, label %bb4, label %panic1

bb4:                                              ; preds = %bb3
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_12
  %_11 = load i32, ptr %2, align 4
  %_16 = load i64, ptr %i, align 8
  %_17.0 = add i64 %_16, 1
  %_17.1 = icmp ult i64 %_17.0, %_16
  br i1 %_17.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 2, ptr align 8 @alloc_27ca7c26ad8f3b91e07aac8a7a9a37b5) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_18 = icmp ult i64 %_17.0, 2
  br i1 %_18, label %bb6, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_eea2a9fcb7d03febdd9ba98ea98babc8) #22
  unreachable

bb6:                                              ; preds = %bb5
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_17.0
  %_14 = load i32, ptr %3, align 4
  %_10 = icmp sle i32 %_11, %_14
  br i1 %_10, label %bb7, label %bb9

panic3:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17.0, i64 2, ptr align 8 @alloc_1824dc5bd9bd2b8d66c7a4bbc74a51b3) #22
  unreachable

bb7:                                              ; preds = %bb6
  %4 = load i64, ptr %i, align 8
  %_19.0 = add i64 %4, 1
  %_19.1 = icmp ult i64 %_19.0, %4
  br i1 %_19.1, label %panic17, label %bb8

bb10:                                             ; preds = %bb9
  %_24 = sext i32 %n to i64
  %_25 = icmp eq i64 %_24, 0
  br i1 %_25, label %panic5, label %bb11

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_acf18ce1466565390f38f26f91026bb6) #22
  unreachable

bb11:                                             ; preds = %bb10
  %5 = urem i64 %_23.0, %_24
  store i64 %5, ptr %l, align 8
  %6 = load i64, ptr %i, align 8
  store i64 %6, ptr %r, align 8
  br label %bb12

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_acf18ce1466565390f38f26f91026bb6) #22
  unreachable

bb12:                                             ; preds = %bb24, %bb28, %bb11
  %_28 = load i64, ptr %l, align 8
  %_29 = load i64, ptr %r, align 8
  %_27 = icmp ne i64 %_28, %_29
  br i1 %_27, label %bb13, label %bb29

bb29:                                             ; preds = %bb12
  store i32 0, ptr %_0, align 4
  br label %bb30

bb13:                                             ; preds = %bb12
  %_33 = load i64, ptr %l, align 8
  %_34 = icmp ult i64 %_33, 2
  br i1 %_34, label %bb14, label %panic6

bb30:                                             ; preds = %bb17, %bb29
  %7 = load i32, ptr %_0, align 4
  ret i32 %7

bb14:                                             ; preds = %bb13
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %_33
  %_32 = load i32, ptr %8, align 4
  %_36 = load i64, ptr %r, align 8
  %_37 = icmp ult i64 %_36, 2
  br i1 %_37, label %bb15, label %panic7

panic6:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_33, i64 2, ptr align 8 @alloc_097c43edb18e13238fbd70595b872a71) #22
  unreachable

bb15:                                             ; preds = %bb14
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %_36
  %_35 = load i32, ptr %9, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 %_35)
  %_38.0 = extractvalue { i32, i1 } %10, 0
  %_38.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_38.1, label %panic8, label %bb16

panic7:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_36, i64 2, ptr align 8 @alloc_1d5bc521a53f391adf586fa3cd4518f2) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_30 = icmp eq i32 %_38.0, %x
  br i1 %_30, label %bb17, label %bb18

panic8:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_097c43edb18e13238fbd70595b872a71) #22
  unreachable

bb18:                                             ; preds = %bb16
  %_42 = load i64, ptr %l, align 8
  %_43 = icmp ult i64 %_42, 2
  br i1 %_43, label %bb19, label %panic9

bb17:                                             ; preds = %bb16
  store i32 1, ptr %_0, align 4
  br label %bb30

bb19:                                             ; preds = %bb18
  %11 = getelementptr inbounds nuw i32, ptr %arr, i64 %_42
  %_41 = load i32, ptr %11, align 4
  %_45 = load i64, ptr %r, align 8
  %_46 = icmp ult i64 %_45, 2
  br i1 %_46, label %bb20, label %panic10

panic9:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_42, i64 2, ptr align 8 @alloc_34b8872dc073638d456844ee2033a809) #22
  unreachable

bb20:                                             ; preds = %bb19
  %12 = getelementptr inbounds nuw i32, ptr %arr, i64 %_45
  %_44 = load i32, ptr %12, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_41, i32 %_44)
  %_47.0 = extractvalue { i32, i1 } %13, 0
  %_47.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_47.1, label %panic11, label %bb21

panic10:                                          ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_45, i64 2, ptr align 8 @alloc_34ac6bf0b7134ddffb5ad1867ddb8a9c) #22
  unreachable

bb21:                                             ; preds = %bb20
  %_39 = icmp slt i32 %_47.0, %x
  br i1 %_39, label %bb22, label %bb25

panic11:                                          ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_34b8872dc073638d456844ee2033a809) #22
  unreachable

bb25:                                             ; preds = %bb21
  %_55 = sext i32 %n to i64
  %_56 = load i64, ptr %r, align 8
  %_57.0 = add i64 %_55, %_56
  %_57.1 = icmp ult i64 %_57.0, %_55
  br i1 %_57.1, label %panic12, label %bb26

bb22:                                             ; preds = %bb21
  %_49 = load i64, ptr %l, align 8
  %_50.0 = add i64 %_49, 1
  %_50.1 = icmp ult i64 %_50.0, %_49
  br i1 %_50.1, label %panic15, label %bb23

bb26:                                             ; preds = %bb25
  %_58.0 = sub i64 %_57.0, 1
  %_58.1 = icmp ult i64 %_57.0, 1
  br i1 %_58.1, label %panic13, label %bb27

panic12:                                          ; preds = %bb25
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_36330be97d633c530aee3ffde5cff7c4) #22
  unreachable

bb27:                                             ; preds = %bb26
  %_59 = sext i32 %n to i64
  %_60 = icmp eq i64 %_59, 0
  br i1 %_60, label %panic14, label %bb28

panic13:                                          ; preds = %bb26
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_18fa687ec1eb494ed47c0a0bf7dcd9b0) #22
  unreachable

bb28:                                             ; preds = %bb27
  %14 = urem i64 %_58.0, %_59
  store i64 %14, ptr %r, align 8
  br label %bb12

panic14:                                          ; preds = %bb27
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_18fa687ec1eb494ed47c0a0bf7dcd9b0) #22
  unreachable

bb23:                                             ; preds = %bb22
  %_51 = sext i32 %n to i64
  %_52 = icmp eq i64 %_51, 0
  br i1 %_52, label %panic16, label %bb24

panic15:                                          ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e066ed222fe01c9eeb73e2591cbdae6a) #22
  unreachable

bb24:                                             ; preds = %bb23
  %15 = urem i64 %_50.0, %_51
  store i64 %15, ptr %l, align 8
  br label %bb12

panic16:                                          ; preds = %bb23
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_e066ed222fe01c9eeb73e2591cbdae6a) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i64 %_19.0, ptr %i, align 8
  br label %bb1

panic17:                                          ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_64f1dbadcd7b09735d7020d069c869e0) #22
  unreachable
}
