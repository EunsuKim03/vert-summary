define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %c = alloca [12 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %2 = getelementptr inbounds nuw i32, ptr %c, i64 0
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds nuw i32, ptr %c, i64 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds nuw i32, ptr %c, i64 2
  store i32 0, ptr %4, align 4
  store i32 0, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha44f5ce440e2975cE"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %5, 0
  %_5.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_5.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %6, align 4
  br label %bb2

bb2:                                              ; preds = %bb10, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h44566aacfdf69c0fE"(ptr align 4 %iter) #20
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_8, align 4
  %10 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_8, align 4
  %12 = getelementptr inbounds i8, ptr %_8, i64 4
  %13 = load i32, ptr %12, align 4
  %_10 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_10 to i1
  br i1 %14, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %15 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %15, align 4
  %_15 = sext i32 %i to i64
  %_16 = icmp ult i64 %_15, 2
  br i1 %_16, label %bb7, label %panic27

bb6:                                              ; preds = %bb2
  %16 = getelementptr inbounds nuw i32, ptr %c, i64 0
  %_22 = load i32, ptr %16, align 4
  %17 = getelementptr inbounds nuw i32, ptr %c, i64 0
  %_26 = load i32, ptr %17, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_26, i32 1)
  %_29.0 = extractvalue { i32, i1 } %18, 0
  %_29.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_29.1, label %panic, label %bb13

bb13:                                             ; preds = %bb6
  %19 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_22, i32 %_29.0)
  %_30.0 = extractvalue { i32, i1 } %19, 0
  %_30.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_30.1, label %panic1, label %bb14

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_47635b3eb6ac4d90656c008fa7029d4e) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_33 = icmp eq i32 %_30.0, -2147483648
  %_34 = and i1 false, %_33
  br i1 %_34, label %panic2, label %bb16

panic1:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b03ddc7ff473d2ba5b5677403680beaf) #22
  unreachable

bb16:                                             ; preds = %bb14
  %_20 = sdiv i32 %_30.0, 2
  %20 = load i32, ptr %res, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 %_20)
  %_35.0 = extractvalue { i32, i1 } %21, 0
  %_35.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_35.1, label %panic3, label %bb17

panic2:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_b03ddc7ff473d2ba5b5677403680beaf) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_35.0, ptr %res, align 4
  %22 = getelementptr inbounds nuw i32, ptr %c, i64 1
  %_37 = load i32, ptr %22, align 4
  %23 = getelementptr inbounds nuw i32, ptr %c, i64 2
  %_40 = load i32, ptr %23, align 4
  %24 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_37, i32 %_40)
  %_43.0 = extractvalue { i32, i1 } %24, 0
  %_43.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_43.1, label %panic4, label %bb20

panic3:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cb528d38390bc3479f33f2082a5ddb9f) #22
  unreachable

bb20:                                             ; preds = %bb17
  %25 = load i32, ptr %res, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 %_43.0)
  %_44.0 = extractvalue { i32, i1 } %26, 0
  %_44.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_44.1, label %panic5, label %bb21

panic4:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a5d04a57244435f6f4117249e12d68c3) #22
  unreachable

bb21:                                             ; preds = %bb20
  store i32 %_44.0, ptr %res, align 4
  %27 = getelementptr inbounds nuw i32, ptr %c, i64 0
  %_48 = load i32, ptr %27, align 4
  %28 = getelementptr inbounds nuw i32, ptr %c, i64 0
  %_52 = load i32, ptr %28, align 4
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_52, i32 1)
  %_55.0 = extractvalue { i32, i1 } %29, 0
  %_55.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_55.1, label %panic6, label %bb24

panic5:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_34a6b435fb726695c76d027f60dda731) #22
  unreachable

bb24:                                             ; preds = %bb21
  %30 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_48, i32 %_55.0)
  %_56.0 = extractvalue { i32, i1 } %30, 0
  %_56.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_56.1, label %panic7, label %bb25

panic6:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6559e7426c4c8ebace78f0a8895f4f38) #22
  unreachable

bb25:                                             ; preds = %bb24
  %31 = getelementptr inbounds nuw i32, ptr %c, i64 0
  %_58 = load i32, ptr %31, align 4
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_58, i32 2)
  %_61.0 = extractvalue { i32, i1 } %32, 0
  %_61.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_61.1, label %panic8, label %bb27

panic7:                                           ; preds = %bb24
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_abd7c10451f907ca615b03e2409c9921) #22
  unreachable

bb27:                                             ; preds = %bb25
  %33 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_56.0, i32 %_61.0)
  %_62.0 = extractvalue { i32, i1 } %33, 0
  %_62.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_62.1, label %panic9, label %bb28

panic8:                                           ; preds = %bb25
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_70f6f8c4727620ae674a4029194b5520) #22
  unreachable

bb28:                                             ; preds = %bb27
  %_65 = icmp eq i32 %_62.0, -2147483648
  %_66 = and i1 false, %_65
  br i1 %_66, label %panic10, label %bb30

panic9:                                           ; preds = %bb27
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5c14b04360be18658ebe9c8149204722) #22
  unreachable

bb30:                                             ; preds = %bb28
  %_45 = sdiv i32 %_62.0, 6
  %34 = load i32, ptr %res, align 4
  %35 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 %_45)
  %_67.0 = extractvalue { i32, i1 } %35, 0
  %_67.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_67.1, label %panic11, label %bb31

panic10:                                          ; preds = %bb28
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_5c14b04360be18658ebe9c8149204722) #22
  unreachable

bb31:                                             ; preds = %bb30
  store i32 %_67.0, ptr %res, align 4
  %36 = getelementptr inbounds nuw i32, ptr %c, i64 1
  %_71 = load i32, ptr %36, align 4
  %37 = getelementptr inbounds nuw i32, ptr %c, i64 1
  %_75 = load i32, ptr %37, align 4
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_75, i32 1)
  %_78.0 = extractvalue { i32, i1 } %38, 0
  %_78.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_78.1, label %panic12, label %bb34

panic11:                                          ; preds = %bb30
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_785c7773402892aef25fbbd7a6f939a7) #22
  unreachable

bb34:                                             ; preds = %bb31
  %39 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_71, i32 %_78.0)
  %_79.0 = extractvalue { i32, i1 } %39, 0
  %_79.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_79.1, label %panic13, label %bb35

panic12:                                          ; preds = %bb31
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_83cffcfb05785343e98e40da8b540b25) #22
  unreachable

bb35:                                             ; preds = %bb34
  %40 = getelementptr inbounds nuw i32, ptr %c, i64 1
  %_81 = load i32, ptr %40, align 4
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_81, i32 2)
  %_84.0 = extractvalue { i32, i1 } %41, 0
  %_84.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_84.1, label %panic14, label %bb37

panic13:                                          ; preds = %bb34
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5c3b42984132d63ba60b5581d763f32c) #22
  unreachable

bb37:                                             ; preds = %bb35
  %42 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_79.0, i32 %_84.0)
  %_85.0 = extractvalue { i32, i1 } %42, 0
  %_85.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_85.1, label %panic15, label %bb38

panic14:                                          ; preds = %bb35
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4863e449135b035125ac55a0e65eb074) #22
  unreachable

bb38:                                             ; preds = %bb37
  %_88 = icmp eq i32 %_85.0, -2147483648
  %_89 = and i1 false, %_88
  br i1 %_89, label %panic16, label %bb40

panic15:                                          ; preds = %bb37
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_17a5554f780e9e90ee035f83ce75a3ae) #22
  unreachable

bb40:                                             ; preds = %bb38
  %_68 = sdiv i32 %_85.0, 6
  %43 = load i32, ptr %res, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %43, i32 %_68)
  %_90.0 = extractvalue { i32, i1 } %44, 0
  %_90.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_90.1, label %panic17, label %bb41

panic16:                                          ; preds = %bb38
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_17a5554f780e9e90ee035f83ce75a3ae) #22
  unreachable

bb41:                                             ; preds = %bb40
  store i32 %_90.0, ptr %res, align 4
  %45 = getelementptr inbounds nuw i32, ptr %c, i64 2
  %_94 = load i32, ptr %45, align 4
  %46 = getelementptr inbounds nuw i32, ptr %c, i64 2
  %_98 = load i32, ptr %46, align 4
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_98, i32 1)
  %_101.0 = extractvalue { i32, i1 } %47, 0
  %_101.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_101.1, label %panic18, label %bb44

panic17:                                          ; preds = %bb40
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2132405761dbed606c21f13d9922918a) #22
  unreachable

bb44:                                             ; preds = %bb41
  %48 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_94, i32 %_101.0)
  %_102.0 = extractvalue { i32, i1 } %48, 0
  %_102.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_102.1, label %panic19, label %bb45

panic18:                                          ; preds = %bb41
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_14003f2faf80d8edcde6c3b99f682fa3) #22
  unreachable

bb45:                                             ; preds = %bb44
  %49 = getelementptr inbounds nuw i32, ptr %c, i64 2
  %_104 = load i32, ptr %49, align 4
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_104, i32 2)
  %_107.0 = extractvalue { i32, i1 } %50, 0
  %_107.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_107.1, label %panic20, label %bb47

panic19:                                          ; preds = %bb44
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_105c2624c454fd5624ad211f4162f7fd) #22
  unreachable

bb47:                                             ; preds = %bb45
  %51 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_102.0, i32 %_107.0)
  %_108.0 = extractvalue { i32, i1 } %51, 0
  %_108.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_108.1, label %panic21, label %bb48

panic20:                                          ; preds = %bb45
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2ea9da940c6a87de6288f9add30510ab) #22
  unreachable

bb48:                                             ; preds = %bb47
  %_111 = icmp eq i32 %_108.0, -2147483648
  %_112 = and i1 false, %_111
  br i1 %_112, label %panic22, label %bb50

panic21:                                          ; preds = %bb47
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_fab3721cf9030def8546ff09cd4f9963) #22
  unreachable

bb50:                                             ; preds = %bb48
  %_91 = sdiv i32 %_108.0, 6
  %52 = load i32, ptr %res, align 4
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %52, i32 %_91)
  %_113.0 = extractvalue { i32, i1 } %53, 0
  %_113.1 = extractvalue { i32, i1 } %53, 1
  br i1 %_113.1, label %panic23, label %bb51

panic22:                                          ; preds = %bb48
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_fab3721cf9030def8546ff09cd4f9963) #22
  unreachable

bb51:                                             ; preds = %bb50
  store i32 %_113.0, ptr %res, align 4
  %54 = getelementptr inbounds nuw i32, ptr %c, i64 0
  %_116 = load i32, ptr %54, align 4
  %55 = getelementptr inbounds nuw i32, ptr %c, i64 1
  %_119 = load i32, ptr %55, align 4
  %56 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_116, i32 %_119)
  %_122.0 = extractvalue { i32, i1 } %56, 0
  %_122.1 = extractvalue { i32, i1 } %56, 1
  br i1 %_122.1, label %panic24, label %bb54

panic23:                                          ; preds = %bb50
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_19ea63e2d37bd77745c8146f46e001c0) #22
  unreachable

bb54:                                             ; preds = %bb51
  %57 = getelementptr inbounds nuw i32, ptr %c, i64 2
  %_123 = load i32, ptr %57, align 4
  %58 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_122.0, i32 %_123)
  %_126.0 = extractvalue { i32, i1 } %58, 0
  %_126.1 = extractvalue { i32, i1 } %58, 1
  br i1 %_126.1, label %panic25, label %bb56

panic24:                                          ; preds = %bb51
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_58676caa3b97cc68b8f835350ad72514) #22
  unreachable

bb56:                                             ; preds = %bb54
  %59 = load i32, ptr %res, align 4
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %59, i32 %_126.0)
  %_127.0 = extractvalue { i32, i1 } %60, 0
  %_127.1 = extractvalue { i32, i1 } %60, 1
  br i1 %_127.1, label %panic26, label %bb57

panic25:                                          ; preds = %bb54
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_58676caa3b97cc68b8f835350ad72514) #22
  unreachable

bb57:                                             ; preds = %bb56
  store i32 %_127.0, ptr %res, align 4
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

panic26:                                          ; preds = %bb56
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_998931fb709a7be243f00fbb4bc76732) #22
  unreachable

bb7:                                              ; preds = %bb5
  %61 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15
  %_14 = load i32, ptr %61, align 4
  %_13 = sext i32 %_14 to i64
  %_12 = urem i64 %_13, 3
  %_18 = icmp ult i64 %_12, 3
  br i1 %_18, label %bb9, label %panic28

panic27:                                          ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 2, ptr align 8 @alloc_d4324b65c441c5fc41ee1924fa8f49ad) #22
  unreachable

bb9:                                              ; preds = %bb7
  %62 = getelementptr inbounds nuw i32, ptr %c, i64 %_12
  %63 = load i32, ptr %62, align 4
  %64 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %63, i32 1)
  %_19.0 = extractvalue { i32, i1 } %64, 0
  %_19.1 = extractvalue { i32, i1 } %64, 1
  br i1 %_19.1, label %panic29, label %bb10

panic28:                                          ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 3, ptr align 8 @alloc_604c54ecddc6924c5b80a05baccd8d63) #22
  unreachable

bb10:                                             ; preds = %bb9
  %65 = getelementptr inbounds nuw i32, ptr %c, i64 %_12
  store i32 %_19.0, ptr %65, align 4
  br label %bb2

panic29:                                          ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_604c54ecddc6924c5b80a05baccd8d63) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
