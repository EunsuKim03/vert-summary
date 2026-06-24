define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %cnt = alloca [4 x i8], align 4
  %r = alloca [8 x i8], align 8
  %l = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
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
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cbce8a25bfcad0e0bcb6a24e26855fa8) #22
  unreachable

bb9:                                              ; preds = %bb6, %bb2
  %_26 = load i64, ptr %i, align 8
  %_27.0 = add i64 %_26, 1
  %_27.1 = icmp ult i64 %_27.0, %_26
  br i1 %_27.1, label %panic4, label %bb10

bb3:                                              ; preds = %bb2
  %_12 = load i64, ptr %i, align 8
  %_15 = icmp ult i64 %_12, %arr.1
  br i1 %_15, label %bb4, label %panic1

bb4:                                              ; preds = %bb3
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_12
  %_11 = load float, ptr %0, align 4
  %_18 = load i64, ptr %i, align 8
  %_19.0 = add i64 %_18, 1
  %_19.1 = icmp ult i64 %_19.0, %_18
  br i1 %_19.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 %arr.1, ptr align 8 @alloc_8f379ad6718ebb506feaf40b6c48918d) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_22 = icmp ult i64 %_19.0, %arr.1
  br i1 %_22, label %bb6, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_900fc67e997a853e5774e4884827393e) #22
  unreachable

bb6:                                              ; preds = %bb5
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_19.0
  %_16 = load float, ptr %1, align 4
  %_10 = fcmp ole float %_11, %_16
  br i1 %_10, label %bb7, label %bb9

panic3:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19.0, i64 %arr.1, ptr align 8 @alloc_9a480d030b5e2c60749ef2db1e367f30) #22
  unreachable

bb7:                                              ; preds = %bb6
  %2 = load i64, ptr %i, align 8
  %_23.0 = add i64 %2, 1
  %_23.1 = icmp ult i64 %_23.0, %2
  br i1 %_23.1, label %panic24, label %bb8

bb10:                                             ; preds = %bb9
  %_28 = sext i32 %n to i64
  %_29 = icmp eq i64 %_28, 0
  br i1 %_29, label %panic5, label %bb11

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b0bfa36ce290a7d32718555f0a5d695e) #22
  unreachable

bb11:                                             ; preds = %bb10
  %3 = urem i64 %_27.0, %_28
  store i64 %3, ptr %l, align 8
  %4 = load i64, ptr %i, align 8
  store i64 %4, ptr %r, align 8
  store i32 0, ptr %cnt, align 4
  br label %bb12

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_b0bfa36ce290a7d32718555f0a5d695e) #22
  unreachable

bb12:                                             ; preds = %bb27, %bb33, %bb37, %bb11
  %_33 = load i64, ptr %l, align 8
  %_34 = load i64, ptr %r, align 8
  %_32 = icmp ne i64 %_33, %_34
  br i1 %_32, label %bb13, label %bb38

bb38:                                             ; preds = %bb12
  %5 = load i32, ptr %cnt, align 4
  store i32 %5, ptr %_0, align 4
  br label %bb39

bb13:                                             ; preds = %bb12
  %_38 = load i64, ptr %l, align 8
  %_41 = icmp ult i64 %_38, %arr.1
  br i1 %_41, label %bb14, label %panic6

bb39:                                             ; preds = %bb21, %bb38
  %6 = load i32, ptr %_0, align 4
  ret i32 %6

bb14:                                             ; preds = %bb13
  %7 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_38
  %_37 = load float, ptr %7, align 4
  %_43 = load i64, ptr %r, align 8
  %_46 = icmp ult i64 %_43, %arr.1
  br i1 %_46, label %bb15, label %panic7

panic6:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_38, i64 %arr.1, ptr align 8 @alloc_b3dd4bf7440304b91d5fd79e2aa6edb3) #22
  unreachable

bb15:                                             ; preds = %bb14
  %8 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_43
  %_42 = load float, ptr %8, align 4
  %_36 = fadd float %_37, %_42
  %_47 = sitofp i32 %x to float
  %_35 = fcmp oeq float %_36, %_47
  br i1 %_35, label %bb16, label %bb28

panic7:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_43, i64 %arr.1, ptr align 8 @alloc_8c0c9f0ea98fde00752271838f4987d9) #22
  unreachable

bb28:                                             ; preds = %bb15
  %_76 = load i64, ptr %l, align 8
  %_79 = icmp ult i64 %_76, %arr.1
  br i1 %_79, label %bb29, label %panic8

bb16:                                             ; preds = %bb15
  %9 = load i32, ptr %cnt, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 1)
  %_48.0 = extractvalue { i32, i1 } %10, 0
  %_48.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_48.1, label %panic15, label %bb17

bb29:                                             ; preds = %bb28
  %11 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_76
  %_75 = load float, ptr %11, align 4
  %_81 = load i64, ptr %r, align 8
  %_84 = icmp ult i64 %_81, %arr.1
  br i1 %_84, label %bb30, label %panic9

panic8:                                           ; preds = %bb28
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_76, i64 %arr.1, ptr align 8 @alloc_0d777eaf9c1992670b4f1c8250db8b56) #22
  unreachable

bb30:                                             ; preds = %bb29
  %12 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_81
  %_80 = load float, ptr %12, align 4
  %_74 = fadd float %_75, %_80
  %_85 = sitofp i32 %x to float
  %_73 = fcmp olt float %_74, %_85
  br i1 %_73, label %bb31, label %bb34

panic9:                                           ; preds = %bb29
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_81, i64 %arr.1, ptr align 8 @alloc_c723ac37c415741057fc23672ebaae6b) #22
  unreachable

bb34:                                             ; preds = %bb30
  %_93 = sext i32 %n to i64
  %_94 = load i64, ptr %r, align 8
  %_95.0 = add i64 %_93, %_94
  %_95.1 = icmp ult i64 %_95.0, %_93
  br i1 %_95.1, label %panic10, label %bb35

bb31:                                             ; preds = %bb30
  %_87 = load i64, ptr %l, align 8
  %_88.0 = add i64 %_87, 1
  %_88.1 = icmp ult i64 %_88.0, %_87
  br i1 %_88.1, label %panic13, label %bb32

bb35:                                             ; preds = %bb34
  %_96.0 = sub i64 %_95.0, 1
  %_96.1 = icmp ult i64 %_95.0, 1
  br i1 %_96.1, label %panic11, label %bb36

panic10:                                          ; preds = %bb34
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7a2924bb5501b321a6dc5874e0e29a4b) #22
  unreachable

bb36:                                             ; preds = %bb35
  %_97 = sext i32 %n to i64
  %_98 = icmp eq i64 %_97, 0
  br i1 %_98, label %panic12, label %bb37

panic11:                                          ; preds = %bb35
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7c4d12df28758e1271f2519c4870a56c) #22
  unreachable

bb37:                                             ; preds = %bb36
  %13 = urem i64 %_96.0, %_97
  store i64 %13, ptr %r, align 8
  br label %bb12

panic12:                                          ; preds = %bb36
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_7c4d12df28758e1271f2519c4870a56c) #22
  unreachable

bb32:                                             ; preds = %bb31
  %_89 = sext i32 %n to i64
  %_90 = icmp eq i64 %_89, 0
  br i1 %_90, label %panic14, label %bb33

panic13:                                          ; preds = %bb31
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d301ef21aa0c2fa8847b049d55830027) #22
  unreachable

bb33:                                             ; preds = %bb32
  %14 = urem i64 %_88.0, %_89
  store i64 %14, ptr %l, align 8
  br label %bb12

panic14:                                          ; preds = %bb32
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_d301ef21aa0c2fa8847b049d55830027) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_48.0, ptr %cnt, align 4
  %_50 = load i64, ptr %l, align 8
  %_54 = load i64, ptr %r, align 8
  %_55.0 = sub i64 %_54, 1
  %_55.1 = icmp ult i64 %_54, 1
  br i1 %_55.1, label %panic16, label %bb18

panic15:                                          ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d122cbfcbdb318ae34f8e7410075b38b) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_56 = sext i32 %n to i64
  %_57.0 = add i64 %_55.0, %_56
  %_57.1 = icmp ult i64 %_57.0, %_55.0
  br i1 %_57.1, label %panic17, label %bb19

panic16:                                          ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c9775dd9186cbe6b3689201139e7ca89) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_58 = sext i32 %n to i64
  %_59 = icmp eq i64 %_58, 0
  br i1 %_59, label %panic18, label %bb20

panic17:                                          ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7b240ec16071ace16dd28cfb5f78200c) #22
  unreachable

bb20:                                             ; preds = %bb19
  %_51 = urem i64 %_57.0, %_58
  %_49 = icmp eq i64 %_50, %_51
  br i1 %_49, label %bb21, label %bb22

panic18:                                          ; preds = %bb19
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_7b240ec16071ace16dd28cfb5f78200c) #22
  unreachable

bb22:                                             ; preds = %bb20
  %_61 = load i64, ptr %l, align 8
  %_62.0 = add i64 %_61, 1
  %_62.1 = icmp ult i64 %_62.0, %_61
  br i1 %_62.1, label %panic19, label %bb23

bb21:                                             ; preds = %bb20
  %15 = load i32, ptr %cnt, align 4
  store i32 %15, ptr %_0, align 4
  br label %bb39

bb23:                                             ; preds = %bb22
  %_63 = sext i32 %n to i64
  %_64 = icmp eq i64 %_63, 0
  br i1 %_64, label %panic20, label %bb24

panic19:                                          ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_03ff3e6acad9765bd61bcb601fb352c3) #22
  unreachable

bb24:                                             ; preds = %bb23
  %16 = urem i64 %_62.0, %_63
  store i64 %16, ptr %l, align 8
  %_67 = load i64, ptr %r, align 8
  %_68.0 = sub i64 %_67, 1
  %_68.1 = icmp ult i64 %_67, 1
  br i1 %_68.1, label %panic21, label %bb25

panic20:                                          ; preds = %bb23
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_03ff3e6acad9765bd61bcb601fb352c3) #22
  unreachable

bb25:                                             ; preds = %bb24
  %_69 = sext i32 %n to i64
  %_70.0 = add i64 %_68.0, %_69
  %_70.1 = icmp ult i64 %_70.0, %_68.0
  br i1 %_70.1, label %panic22, label %bb26

panic21:                                          ; preds = %bb24
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d346fb789c02187017bd45764f4fff1f) #22
  unreachable

bb26:                                             ; preds = %bb25
  %_71 = sext i32 %n to i64
  %_72 = icmp eq i64 %_71, 0
  br i1 %_72, label %panic23, label %bb27

panic22:                                          ; preds = %bb25
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1fb406fefdd654355a9cbf9ad695ab82) #22
  unreachable

bb27:                                             ; preds = %bb26
  %17 = urem i64 %_70.0, %_71
  store i64 %17, ptr %r, align 8
  br label %bb12

panic23:                                          ; preds = %bb26
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_1fb406fefdd654355a9cbf9ad695ab82) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i64 %_23.0, ptr %i, align 8
  br label %bb1

panic24:                                          ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_66330b0608e0c29eed441d55fe22679b) #22
  unreachable
}
