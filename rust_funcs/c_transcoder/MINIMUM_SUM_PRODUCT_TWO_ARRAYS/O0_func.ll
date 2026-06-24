define i32 @f_gold(i64 %0, i64 %1, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %diff = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %b = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %3, i64 8, i1 false)
  store i64 %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 8 %2, i64 8, i1 false)
  store i32 0, ptr %diff, align 4
  store i32 0, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he102e6de3e49623eE"(i32 0, i32 %n) #21
  %_7.0 = extractvalue { i32, i32 } %4, 0
  %_7.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_7.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %5, align 4
  br label %bb2

bb2:                                              ; preds = %bb21, %bb34, %bb47, %bb60, %bb51, %bb49, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h585ce38a40e1320aE"(ptr align 4 %iter) #21
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_10, align 4
  %9 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_10, align 4
  %11 = getelementptr inbounds i8, ptr %_10, i64 4
  %12 = load i32, ptr %11, align 4
  %_12 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_12 to i1
  br i1 %13, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %14 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %14, align 4
  %_16 = sext i32 %i to i64
  %_17 = icmp ult i64 %_16, 2
  br i1 %_17, label %bb7, label %panic1

bb6:                                              ; preds = %bb2
  %_115 = load i32, ptr %res, align 4
  %_116 = load i32, ptr %diff, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_115, i32 %_116)
  %_117.0 = extractvalue { i32, i1 } %15, 0
  %_117.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_117.1, label %panic, label %bb62

bb62:                                             ; preds = %bb6
  ret i32 %_117.0

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_57fe8ec1bb91acc38e8ce60f37c7784a) #20
  unreachable

bb7:                                              ; preds = %bb5
  %16 = getelementptr inbounds nuw i32, ptr %a, i64 %_16
  %_15 = load i32, ptr %16, align 4
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb8, label %panic2

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_efcc73e7234170c543d3277d5eae92ce) #20
  unreachable

bb8:                                              ; preds = %bb7
  %17 = getelementptr inbounds nuw i32, ptr %b, i64 %_19
  %_18 = load i32, ptr %17, align 4
  %18 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15, i32 %_18)
  %_21.0 = extractvalue { i32, i1 } %18, 0
  %_21.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_21.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_9bae8feab1fbecb39da5ae32fe75ec54) #20
  unreachable

bb9:                                              ; preds = %bb8
  %19 = load i32, ptr %res, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 %_21.0)
  %_22.0 = extractvalue { i32, i1 } %20, 0
  %_22.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_22.1, label %panic4, label %bb10

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_efcc73e7234170c543d3277d5eae92ce) #20
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_22.0, ptr %res, align 4
  %_23 = icmp slt i32 %_21.0, 0
  br i1 %_23, label %bb11, label %bb23

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_884feafec01807bec2df028d0116b6f7) #20
  unreachable

bb23:                                             ; preds = %bb12, %bb10
  %_46 = icmp slt i32 %_21.0, 0
  br i1 %_46, label %bb24, label %bb36

bb11:                                             ; preds = %bb10
  %_26 = sext i32 %i to i64
  %_27 = icmp ult i64 %_26, 2
  br i1 %_27, label %bb12, label %panic5

bb12:                                             ; preds = %bb11
  %21 = getelementptr inbounds nuw i32, ptr %b, i64 %_26
  %_25 = load i32, ptr %21, align 4
  %_24 = icmp slt i32 %_25, 0
  br i1 %_24, label %bb13, label %bb23

panic5:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 2, ptr align 8 @alloc_a237bc28d3a89d8742fb2a62585077b5) #20
  unreachable

bb13:                                             ; preds = %bb12
  %_31 = sext i32 %i to i64
  %_32 = icmp ult i64 %_31, 2
  br i1 %_32, label %bb14, label %panic27

bb36:                                             ; preds = %bb25, %bb23
  %_69 = icmp sgt i32 %_21.0, 0
  br i1 %_69, label %bb37, label %bb49

bb24:                                             ; preds = %bb23
  %_49 = sext i32 %i to i64
  %_50 = icmp ult i64 %_49, 2
  br i1 %_50, label %bb25, label %panic6

bb25:                                             ; preds = %bb24
  %22 = getelementptr inbounds nuw i32, ptr %a, i64 %_49
  %_48 = load i32, ptr %22, align 4
  %_47 = icmp slt i32 %_48, 0
  br i1 %_47, label %bb26, label %bb36

panic6:                                           ; preds = %bb24
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_49, i64 2, ptr align 8 @alloc_c7ba2ba33a57e38e242488f136b99e54) #20
  unreachable

bb26:                                             ; preds = %bb25
  %_54 = sext i32 %i to i64
  %_55 = icmp ult i64 %_54, 2
  br i1 %_55, label %bb27, label %panic21

bb49:                                             ; preds = %bb38, %bb36
  %_92 = icmp sgt i32 %_21.0, 0
  br i1 %_92, label %bb50, label %bb2

bb37:                                             ; preds = %bb36
  %_72 = sext i32 %i to i64
  %_73 = icmp ult i64 %_72, 2
  br i1 %_73, label %bb38, label %panic7

bb38:                                             ; preds = %bb37
  %23 = getelementptr inbounds nuw i32, ptr %a, i64 %_72
  %_71 = load i32, ptr %23, align 4
  %_70 = icmp slt i32 %_71, 0
  br i1 %_70, label %bb39, label %bb49

panic7:                                           ; preds = %bb37
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_72, i64 2, ptr align 8 @alloc_663e14cb9a21b0800a2b719a7d3b67f4) #20
  unreachable

bb39:                                             ; preds = %bb38
  %_77 = sext i32 %i to i64
  %_78 = icmp ult i64 %_77, 2
  br i1 %_78, label %bb40, label %panic15

bb50:                                             ; preds = %bb49
  %_95 = sext i32 %i to i64
  %_96 = icmp ult i64 %_95, 2
  br i1 %_96, label %bb51, label %panic8

bb51:                                             ; preds = %bb50
  %24 = getelementptr inbounds nuw i32, ptr %a, i64 %_95
  %_94 = load i32, ptr %24, align 4
  %_93 = icmp sgt i32 %_94, 0
  br i1 %_93, label %bb52, label %bb2

panic8:                                           ; preds = %bb50
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_95, i64 2, ptr align 8 @alloc_d6f39c4e2b0d2f7928354c11bf07e048) #20
  unreachable

bb52:                                             ; preds = %bb51
  %_100 = sext i32 %i to i64
  %_101 = icmp ult i64 %_100, 2
  br i1 %_101, label %bb53, label %panic9

bb53:                                             ; preds = %bb52
  %25 = getelementptr inbounds nuw i32, ptr %a, i64 %_100
  %_99 = load i32, ptr %25, align 4
  %26 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %k)
  %_103.0 = extractvalue { i32, i1 } %26, 0
  %_103.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_103.1, label %panic10, label %bb54

panic9:                                           ; preds = %bb52
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_100, i64 2, ptr align 8 @alloc_a0f5faca505f8cd4989020a2dfd75625) #20
  unreachable

bb54:                                             ; preds = %bb53
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_99, i32 %_103.0)
  %_104.0 = extractvalue { i32, i1 } %27, 0
  %_104.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_104.1, label %panic11, label %bb55

panic10:                                          ; preds = %bb53
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3691fc8b4a8753dc3e2615c8cbb08e81) #20
  unreachable

bb55:                                             ; preds = %bb54
  %_106 = sext i32 %i to i64
  %_107 = icmp ult i64 %_106, 2
  br i1 %_107, label %bb56, label %panic12

panic11:                                          ; preds = %bb54
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0dd65c6ccab724b7c1d4af98bf343e4e) #20
  unreachable

bb56:                                             ; preds = %bb55
  %28 = getelementptr inbounds nuw i32, ptr %b, i64 %_106
  %_105 = load i32, ptr %28, align 4
  %29 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_104.0, i32 %_105)
  %_108.0 = extractvalue { i32, i1 } %29, 0
  %_108.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_108.1, label %panic13, label %bb57

panic12:                                          ; preds = %bb55
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_106, i64 2, ptr align 8 @alloc_14d77f683b15d165d2266a0f08ab09e0) #20
  unreachable

bb57:                                             ; preds = %bb56
  %_110 = load i32, ptr %diff, align 4
; call core::num::<impl i32>::abs
  %_112 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h6c630876153e9e2dE"(i32 %_108.0) #21
; call core::num::<impl i32>::abs
  %_113 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h6c630876153e9e2dE"(i32 %_21.0) #21
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_112, i32 %_113)
  %_114.0 = extractvalue { i32, i1 } %30, 0
  %_114.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_114.1, label %panic14, label %bb60

panic13:                                          ; preds = %bb56
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_0dd65c6ccab724b7c1d4af98bf343e4e) #20
  unreachable

bb60:                                             ; preds = %bb57
; call core::cmp::Ord::max
  %_109 = call i32 @_ZN4core3cmp3Ord3max17h01c3eca0b22a599fE(i32 %_110, i32 %_114.0) #21
  store i32 %_109, ptr %diff, align 4
  br label %bb2

panic14:                                          ; preds = %bb57
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4b5071fb52852aa8321657856bc91294) #20
  unreachable

bb40:                                             ; preds = %bb39
  %31 = getelementptr inbounds nuw i32, ptr %a, i64 %_77
  %_76 = load i32, ptr %31, align 4
  %32 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %k)
  %_80.0 = extractvalue { i32, i1 } %32, 0
  %_80.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_80.1, label %panic16, label %bb41

panic15:                                          ; preds = %bb39
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_77, i64 2, ptr align 8 @alloc_e83438ee2d6cca5f98c4bfb7c5ab0602) #20
  unreachable

bb41:                                             ; preds = %bb40
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_76, i32 %_80.0)
  %_81.0 = extractvalue { i32, i1 } %33, 0
  %_81.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_81.1, label %panic17, label %bb42

panic16:                                          ; preds = %bb40
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_dd489c9bc8a2b340cc26dd1dfacb7847) #20
  unreachable

bb42:                                             ; preds = %bb41
  %_83 = sext i32 %i to i64
  %_84 = icmp ult i64 %_83, 2
  br i1 %_84, label %bb43, label %panic18

panic17:                                          ; preds = %bb41
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_aed4a65d45679fad5d903e37cddbb16e) #20
  unreachable

bb43:                                             ; preds = %bb42
  %34 = getelementptr inbounds nuw i32, ptr %b, i64 %_83
  %_82 = load i32, ptr %34, align 4
  %35 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_81.0, i32 %_82)
  %_85.0 = extractvalue { i32, i1 } %35, 0
  %_85.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_85.1, label %panic19, label %bb44

panic18:                                          ; preds = %bb42
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_83, i64 2, ptr align 8 @alloc_4c13d6cfa2ddb3939177a989503935f3) #20
  unreachable

bb44:                                             ; preds = %bb43
  %_87 = load i32, ptr %diff, align 4
; call core::num::<impl i32>::abs
  %_89 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h6c630876153e9e2dE"(i32 %_85.0) #21
; call core::num::<impl i32>::abs
  %_90 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h6c630876153e9e2dE"(i32 %_21.0) #21
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_89, i32 %_90)
  %_91.0 = extractvalue { i32, i1 } %36, 0
  %_91.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_91.1, label %panic20, label %bb47

panic19:                                          ; preds = %bb43
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_aed4a65d45679fad5d903e37cddbb16e) #20
  unreachable

bb47:                                             ; preds = %bb44
; call core::cmp::Ord::max
  %_86 = call i32 @_ZN4core3cmp3Ord3max17h01c3eca0b22a599fE(i32 %_87, i32 %_91.0) #21
  store i32 %_86, ptr %diff, align 4
  br label %bb2

panic20:                                          ; preds = %bb44
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_65117abdac005b46e29128f47ad1bd57) #20
  unreachable

bb27:                                             ; preds = %bb26
  %37 = getelementptr inbounds nuw i32, ptr %a, i64 %_54
  %_53 = load i32, ptr %37, align 4
  %38 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %k)
  %_57.0 = extractvalue { i32, i1 } %38, 0
  %_57.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_57.1, label %panic22, label %bb28

panic21:                                          ; preds = %bb26
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_54, i64 2, ptr align 8 @alloc_041106b965aea0f9766ddf2a5812ebcd) #20
  unreachable

bb28:                                             ; preds = %bb27
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_53, i32 %_57.0)
  %_58.0 = extractvalue { i32, i1 } %39, 0
  %_58.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_58.1, label %panic23, label %bb29

panic22:                                          ; preds = %bb27
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_25e72e87364f3fa18ed233c87968e4b3) #20
  unreachable

bb29:                                             ; preds = %bb28
  %_60 = sext i32 %i to i64
  %_61 = icmp ult i64 %_60, 2
  br i1 %_61, label %bb30, label %panic24

panic23:                                          ; preds = %bb28
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d582a4e00d14172785f6d60016713fd2) #20
  unreachable

bb30:                                             ; preds = %bb29
  %40 = getelementptr inbounds nuw i32, ptr %b, i64 %_60
  %_59 = load i32, ptr %40, align 4
  %41 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_58.0, i32 %_59)
  %_62.0 = extractvalue { i32, i1 } %41, 0
  %_62.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_62.1, label %panic25, label %bb31

panic24:                                          ; preds = %bb29
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_60, i64 2, ptr align 8 @alloc_752bf8eee8a995d000263733dc59c8b6) #20
  unreachable

bb31:                                             ; preds = %bb30
  %_64 = load i32, ptr %diff, align 4
; call core::num::<impl i32>::abs
  %_66 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h6c630876153e9e2dE"(i32 %_62.0) #21
; call core::num::<impl i32>::abs
  %_67 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h6c630876153e9e2dE"(i32 %_21.0) #21
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_66, i32 %_67)
  %_68.0 = extractvalue { i32, i1 } %42, 0
  %_68.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_68.1, label %panic26, label %bb34

panic25:                                          ; preds = %bb30
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d582a4e00d14172785f6d60016713fd2) #20
  unreachable

bb34:                                             ; preds = %bb31
; call core::cmp::Ord::max
  %_63 = call i32 @_ZN4core3cmp3Ord3max17h01c3eca0b22a599fE(i32 %_64, i32 %_68.0) #21
  store i32 %_63, ptr %diff, align 4
  br label %bb2

panic26:                                          ; preds = %bb31
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fb8f11ac8476b77e831d8b30f3dac9ae) #20
  unreachable

bb14:                                             ; preds = %bb13
  %43 = getelementptr inbounds nuw i32, ptr %a, i64 %_31
  %_30 = load i32, ptr %43, align 4
  %44 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %k)
  %_34.0 = extractvalue { i32, i1 } %44, 0
  %_34.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_34.1, label %panic28, label %bb15

panic27:                                          ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 2, ptr align 8 @alloc_b7257b5dd74cf195723d89dd89e83b82) #20
  unreachable

bb15:                                             ; preds = %bb14
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_30, i32 %_34.0)
  %_35.0 = extractvalue { i32, i1 } %45, 0
  %_35.1 = extractvalue { i32, i1 } %45, 1
  br i1 %_35.1, label %panic29, label %bb16

panic28:                                          ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1800aecc8115da34486cf7b2233a5941) #20
  unreachable

bb16:                                             ; preds = %bb15
  %_37 = sext i32 %i to i64
  %_38 = icmp ult i64 %_37, 2
  br i1 %_38, label %bb17, label %panic30

panic29:                                          ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f75879570d7a00dd7cc763e3a1619705) #20
  unreachable

bb17:                                             ; preds = %bb16
  %46 = getelementptr inbounds nuw i32, ptr %b, i64 %_37
  %_36 = load i32, ptr %46, align 4
  %47 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_35.0, i32 %_36)
  %_39.0 = extractvalue { i32, i1 } %47, 0
  %_39.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_39.1, label %panic31, label %bb18

panic30:                                          ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37, i64 2, ptr align 8 @alloc_95f39cacfdab347ecbaf94e3c91d1253) #20
  unreachable

bb18:                                             ; preds = %bb17
  %_41 = load i32, ptr %diff, align 4
; call core::num::<impl i32>::abs
  %_43 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h6c630876153e9e2dE"(i32 %_39.0) #21
; call core::num::<impl i32>::abs
  %_44 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h6c630876153e9e2dE"(i32 %_21.0) #21
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_43, i32 %_44)
  %_45.0 = extractvalue { i32, i1 } %48, 0
  %_45.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_45.1, label %panic32, label %bb21

panic31:                                          ; preds = %bb17
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_f75879570d7a00dd7cc763e3a1619705) #20
  unreachable

bb21:                                             ; preds = %bb18
; call core::cmp::Ord::max
  %_40 = call i32 @_ZN4core3cmp3Ord3max17h01c3eca0b22a599fE(i32 %_41, i32 %_45.0) #21
  store i32 %_40, ptr %diff, align 4
  br label %bb2

panic32:                                          ; preds = %bb18
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_835cc877444a8652d356a35a753bc1bc) #20
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
