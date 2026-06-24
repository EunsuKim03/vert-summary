define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %cnt = alloca [4 x i8], align 4
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
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6b5943e47b62656b408176908cb9fdaa) #22
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
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 2, ptr align 8 @alloc_c4e4640e24f4af088096d6f48a31e741) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_18 = icmp ult i64 %_17.0, 2
  br i1 %_18, label %bb6, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_38e42012d694b535230d759fd5817daf) #22
  unreachable

bb6:                                              ; preds = %bb5
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_17.0
  %_14 = load i32, ptr %3, align 4
  %_10 = icmp sle i32 %_11, %_14
  br i1 %_10, label %bb7, label %bb9

panic3:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17.0, i64 2, ptr align 8 @alloc_a91c145c767082a71a507b891f76827a) #22
  unreachable

bb7:                                              ; preds = %bb6
  %4 = load i64, ptr %i, align 8
  %_19.0 = add i64 %4, 1
  %_19.1 = icmp ult i64 %_19.0, %4
  br i1 %_19.1, label %panic26, label %bb8

bb10:                                             ; preds = %bb9
  %_24 = sext i32 %n to i64
  %_25 = icmp eq i64 %_24, 0
  br i1 %_25, label %panic5, label %bb11

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ccea17131c98200752c1d1ce71ecac36) #22
  unreachable

bb11:                                             ; preds = %bb10
  %5 = urem i64 %_23.0, %_24
  store i64 %5, ptr %l, align 8
  %6 = load i64, ptr %i, align 8
  store i64 %6, ptr %r, align 8
  store i32 0, ptr %cnt, align 4
  br label %bb12

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_ccea17131c98200752c1d1ce71ecac36) #22
  unreachable

bb12:                                             ; preds = %bb28, %bb35, %bb39, %bb11
  %_29 = load i64, ptr %l, align 8
  %_30 = load i64, ptr %r, align 8
  %_28 = icmp ne i64 %_29, %_30
  br i1 %_28, label %bb13, label %bb40

bb40:                                             ; preds = %bb12
  %7 = load i32, ptr %cnt, align 4
  store i32 %7, ptr %_0, align 4
  br label %bb41

bb13:                                             ; preds = %bb12
  %_34 = load i64, ptr %l, align 8
  %_35 = icmp ult i64 %_34, 2
  br i1 %_35, label %bb14, label %panic6

bb41:                                             ; preds = %bb22, %bb40
  %8 = load i32, ptr %_0, align 4
  ret i32 %8

bb14:                                             ; preds = %bb13
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %_34
  %_33 = load i32, ptr %9, align 4
  %_37 = load i64, ptr %r, align 8
  %_38 = icmp ult i64 %_37, 2
  br i1 %_38, label %bb15, label %panic7

panic6:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_34, i64 2, ptr align 8 @alloc_8d56df8853517e934d88969af32ecc74) #22
  unreachable

bb15:                                             ; preds = %bb14
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %_37
  %_36 = load i32, ptr %10, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_33, i32 %_36)
  %_39.0 = extractvalue { i32, i1 } %11, 0
  %_39.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_39.1, label %panic8, label %bb16

panic7:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37, i64 2, ptr align 8 @alloc_a4577a191598854e5775d5bf4b884351) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_31 = icmp eq i32 %_39.0, %x
  br i1 %_31, label %bb17, label %bb29

panic8:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8d56df8853517e934d88969af32ecc74) #22
  unreachable

bb29:                                             ; preds = %bb16
  %_68 = load i64, ptr %l, align 8
  %_69 = icmp ult i64 %_68, 2
  br i1 %_69, label %bb30, label %panic9

bb17:                                             ; preds = %bb16
  %12 = load i32, ptr %cnt, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 1)
  %_40.0 = extractvalue { i32, i1 } %13, 0
  %_40.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_40.1, label %panic17, label %bb18

bb30:                                             ; preds = %bb29
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_68
  %_67 = load i32, ptr %14, align 4
  %_71 = load i64, ptr %r, align 8
  %_72 = icmp ult i64 %_71, 2
  br i1 %_72, label %bb31, label %panic10

panic9:                                           ; preds = %bb29
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_68, i64 2, ptr align 8 @alloc_50a67793310a9bc60875a183384b8bf9) #22
  unreachable

bb31:                                             ; preds = %bb30
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_71
  %_70 = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_67, i32 %_70)
  %_73.0 = extractvalue { i32, i1 } %16, 0
  %_73.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_73.1, label %panic11, label %bb32

panic10:                                          ; preds = %bb30
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_71, i64 2, ptr align 8 @alloc_bb78134f0f7f434554d0bd15844f6ac8) #22
  unreachable

bb32:                                             ; preds = %bb31
  %_65 = icmp slt i32 %_73.0, %x
  br i1 %_65, label %bb33, label %bb36

panic11:                                          ; preds = %bb31
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_50a67793310a9bc60875a183384b8bf9) #22
  unreachable

bb36:                                             ; preds = %bb32
  %_81 = sext i32 %n to i64
  %_82 = load i64, ptr %r, align 8
  %_83.0 = add i64 %_81, %_82
  %_83.1 = icmp ult i64 %_83.0, %_81
  br i1 %_83.1, label %panic12, label %bb37

bb33:                                             ; preds = %bb32
  %_75 = load i64, ptr %l, align 8
  %_76.0 = add i64 %_75, 1
  %_76.1 = icmp ult i64 %_76.0, %_75
  br i1 %_76.1, label %panic15, label %bb34

bb37:                                             ; preds = %bb36
  %_84.0 = sub i64 %_83.0, 1
  %_84.1 = icmp ult i64 %_83.0, 1
  br i1 %_84.1, label %panic13, label %bb38

panic12:                                          ; preds = %bb36
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_654d018f390099bad7fc5b04caf94fa8) #22
  unreachable

bb38:                                             ; preds = %bb37
  %_85 = sext i32 %n to i64
  %_86 = icmp eq i64 %_85, 0
  br i1 %_86, label %panic14, label %bb39

panic13:                                          ; preds = %bb37
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4fa1d26000e563bb86697e401d026136) #22
  unreachable

bb39:                                             ; preds = %bb38
  %17 = urem i64 %_84.0, %_85
  store i64 %17, ptr %r, align 8
  br label %bb12

panic14:                                          ; preds = %bb38
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_4fa1d26000e563bb86697e401d026136) #22
  unreachable

bb34:                                             ; preds = %bb33
  %_77 = sext i32 %n to i64
  %_78 = icmp eq i64 %_77, 0
  br i1 %_78, label %panic16, label %bb35

panic15:                                          ; preds = %bb33
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9a1e01e5902b2f16239469a511e60d96) #22
  unreachable

bb35:                                             ; preds = %bb34
  %18 = urem i64 %_76.0, %_77
  store i64 %18, ptr %l, align 8
  br label %bb12

panic16:                                          ; preds = %bb34
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_9a1e01e5902b2f16239469a511e60d96) #22
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_40.0, ptr %cnt, align 4
  %_42 = load i64, ptr %l, align 8
  %_46 = load i64, ptr %r, align 8
  %_47.0 = sub i64 %_46, 1
  %_47.1 = icmp ult i64 %_46, 1
  br i1 %_47.1, label %panic18, label %bb19

panic17:                                          ; preds = %bb17
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7c7d9ceb46c5eb800a9b705ea9c54f1e) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_48 = sext i32 %n to i64
  %_49.0 = add i64 %_47.0, %_48
  %_49.1 = icmp ult i64 %_49.0, %_47.0
  br i1 %_49.1, label %panic19, label %bb20

panic18:                                          ; preds = %bb18
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1835d8e18ff3dd3cb6489e4ea8a45535) #22
  unreachable

bb20:                                             ; preds = %bb19
  %_50 = sext i32 %n to i64
  %_51 = icmp eq i64 %_50, 0
  br i1 %_51, label %panic20, label %bb21

panic19:                                          ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_75f0c67da13d16e038e98e256dc201f5) #22
  unreachable

bb21:                                             ; preds = %bb20
  %_43 = urem i64 %_49.0, %_50
  %_41 = icmp eq i64 %_42, %_43
  br i1 %_41, label %bb22, label %bb23

panic20:                                          ; preds = %bb20
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_75f0c67da13d16e038e98e256dc201f5) #22
  unreachable

bb23:                                             ; preds = %bb21
  %_53 = load i64, ptr %l, align 8
  %_54.0 = add i64 %_53, 1
  %_54.1 = icmp ult i64 %_54.0, %_53
  br i1 %_54.1, label %panic21, label %bb24

bb22:                                             ; preds = %bb21
  %19 = load i32, ptr %cnt, align 4
  store i32 %19, ptr %_0, align 4
  br label %bb41

bb24:                                             ; preds = %bb23
  %_55 = sext i32 %n to i64
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %panic22, label %bb25

panic21:                                          ; preds = %bb23
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_585b8f05755ba3cce354a8620fb6ead0) #22
  unreachable

bb25:                                             ; preds = %bb24
  %20 = urem i64 %_54.0, %_55
  store i64 %20, ptr %l, align 8
  %_59 = load i64, ptr %r, align 8
  %_60.0 = sub i64 %_59, 1
  %_60.1 = icmp ult i64 %_59, 1
  br i1 %_60.1, label %panic23, label %bb26

panic22:                                          ; preds = %bb24
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_585b8f05755ba3cce354a8620fb6ead0) #22
  unreachable

bb26:                                             ; preds = %bb25
  %_61 = sext i32 %n to i64
  %_62.0 = add i64 %_60.0, %_61
  %_62.1 = icmp ult i64 %_62.0, %_60.0
  br i1 %_62.1, label %panic24, label %bb27

panic23:                                          ; preds = %bb25
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d87fb4317b3eb9fa62977b4ac4b89021) #22
  unreachable

bb27:                                             ; preds = %bb26
  %_63 = sext i32 %n to i64
  %_64 = icmp eq i64 %_63, 0
  br i1 %_64, label %panic25, label %bb28

panic24:                                          ; preds = %bb26
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_16293fa11359de910fca561238dfb6a2) #22
  unreachable

bb28:                                             ; preds = %bb27
  %21 = urem i64 %_62.0, %_63
  store i64 %21, ptr %r, align 8
  br label %bb12

panic25:                                          ; preds = %bb27
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_16293fa11359de910fca561238dfb6a2) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i64 %_19.0, ptr %i, align 8
  br label %bb1

panic26:                                          ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_71c92369d65032f8b5847f046a59c7ef) #22
  unreachable
}
