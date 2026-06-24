define i32 @f_gold(ptr align 4 %s.0, i64 %s.1) unnamed_addr #3 {
start:
  %c = alloca [4 x i8], align 4
  %_41 = alloca [8 x i8], align 4
  %iter5 = alloca [8 x i8], align 4
  %_34 = alloca [8 x i8], align 4
  %iter4 = alloca [8 x i8], align 4
  %_27 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_20 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_13 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %ans = alloca [4 x i8], align 4
  store i32 6, ptr %ans, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10) #20
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_3.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_6, align 4
  %7 = getelementptr inbounds i8, ptr %_6, i64 4
  %8 = load i32, ptr %7, align 4
  %_8 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_8 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %10, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10) #20
  %_10.0 = extractvalue { i32, i32 } %11, 0
  %_10.1 = extractvalue { i32, i32 } %11, 1
  store i32 %_10.0, ptr %iter1, align 4
  %12 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_10.1, ptr %12, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb12, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %13 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter1) #20
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  store i32 %14, ptr %_13, align 4
  %16 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %_13, align 4
  %18 = getelementptr inbounds i8, ptr %_13, i64 4
  %19 = load i32, ptr %18, align 4
  %_15 = zext i32 %17 to i64
  %20 = trunc nuw i64 %_15 to i1
  br i1 %20, label %bb10, label %bb2

bb10:                                             ; preds = %bb8
  %21 = getelementptr inbounds i8, ptr %_13, i64 4
  %j = load i32, ptr %21, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %22 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10) #20
  %_17.0 = extractvalue { i32, i32 } %22, 0
  %_17.1 = extractvalue { i32, i32 } %22, 1
  store i32 %_17.0, ptr %iter2, align 4
  %23 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_17.1, ptr %23, align 4
  br label %bb12

bb12:                                             ; preds = %bb16, %bb10
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %24 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter2) #20
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = extractvalue { i32, i32 } %24, 1
  store i32 %25, ptr %_20, align 4
  %27 = getelementptr inbounds i8, ptr %_20, i64 4
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %_20, align 4
  %29 = getelementptr inbounds i8, ptr %_20, i64 4
  %30 = load i32, ptr %29, align 4
  %_22 = zext i32 %28 to i64
  %31 = trunc nuw i64 %_22 to i1
  br i1 %31, label %bb14, label %bb8

bb14:                                             ; preds = %bb12
  %32 = getelementptr inbounds i8, ptr %_20, i64 4
  %k = load i32, ptr %32, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %33 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10) #20
  %_24.0 = extractvalue { i32, i32 } %33, 0
  %_24.1 = extractvalue { i32, i32 } %33, 1
  store i32 %_24.0, ptr %iter3, align 4
  %34 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_24.1, ptr %34, align 4
  br label %bb16

bb16:                                             ; preds = %bb20, %bb14
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %35 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter3) #20
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = extractvalue { i32, i32 } %35, 1
  store i32 %36, ptr %_27, align 4
  %38 = getelementptr inbounds i8, ptr %_27, i64 4
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %_27, align 4
  %40 = getelementptr inbounds i8, ptr %_27, i64 4
  %41 = load i32, ptr %40, align 4
  %_29 = zext i32 %39 to i64
  %42 = trunc nuw i64 %_29 to i1
  br i1 %42, label %bb18, label %bb12

bb18:                                             ; preds = %bb16
  %43 = getelementptr inbounds i8, ptr %_27, i64 4
  %l = load i32, ptr %43, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %44 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10) #20
  %_31.0 = extractvalue { i32, i32 } %44, 0
  %_31.1 = extractvalue { i32, i32 } %44, 1
  store i32 %_31.0, ptr %iter4, align 4
  %45 = getelementptr inbounds i8, ptr %iter4, i64 4
  store i32 %_31.1, ptr %45, align 4
  br label %bb20

bb20:                                             ; preds = %bb24, %bb18
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %46 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter4) #20
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = extractvalue { i32, i32 } %46, 1
  store i32 %47, ptr %_34, align 4
  %49 = getelementptr inbounds i8, ptr %_34, i64 4
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %_34, align 4
  %51 = getelementptr inbounds i8, ptr %_34, i64 4
  %52 = load i32, ptr %51, align 4
  %_36 = zext i32 %50 to i64
  %53 = trunc nuw i64 %_36 to i1
  br i1 %53, label %bb22, label %bb16

bb22:                                             ; preds = %bb20
  %54 = getelementptr inbounds i8, ptr %_34, i64 4
  %m = load i32, ptr %54, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %55 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10) #20
  %_38.0 = extractvalue { i32, i32 } %55, 0
  %_38.1 = extractvalue { i32, i32 } %55, 1
  store i32 %_38.0, ptr %iter5, align 4
  %56 = getelementptr inbounds i8, ptr %iter5, i64 4
  store i32 %_38.1, ptr %56, align 4
  br label %bb24

bb24:                                             ; preds = %bb62, %bb61, %bb30, %bb22
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %57 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter5) #20
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = extractvalue { i32, i32 } %57, 1
  store i32 %58, ptr %_41, align 4
  %60 = getelementptr inbounds i8, ptr %_41, i64 4
  store i32 %59, ptr %60, align 4
  %61 = load i32, ptr %_41, align 4
  %62 = getelementptr inbounds i8, ptr %_41, i64 4
  %63 = load i32, ptr %62, align 4
  %_43 = zext i32 %61 to i64
  %64 = trunc nuw i64 %_43 to i1
  br i1 %64, label %bb26, label %bb20

bb26:                                             ; preds = %bb24
  %65 = getelementptr inbounds i8, ptr %_41, i64 4
  %n = load i32, ptr %65, align 4
  %66 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %j)
  %_48.0 = extractvalue { i32, i1 } %66, 0
  %_48.1 = extractvalue { i32, i1 } %66, 1
  br i1 %_48.1, label %panic, label %bb27

bb27:                                             ; preds = %bb26
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_48.0, i32 %k)
  %_49.0 = extractvalue { i32, i1 } %67, 0
  %_49.1 = extractvalue { i32, i1 } %67, 1
  br i1 %_49.1, label %panic6, label %bb28

panic:                                            ; preds = %bb26
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8454a9b81d80fa94e9cda8fabf1fd6cd) #22
  unreachable

bb28:                                             ; preds = %bb27
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l, i32 %m)
  %_52.0 = extractvalue { i32, i1 } %68, 0
  %_52.1 = extractvalue { i32, i1 } %68, 1
  br i1 %_52.1, label %panic7, label %bb29

panic6:                                           ; preds = %bb27
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8454a9b81d80fa94e9cda8fabf1fd6cd) #22
  unreachable

bb29:                                             ; preds = %bb28
  %69 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_52.0, i32 %n)
  %_53.0 = extractvalue { i32, i1 } %69, 0
  %_53.1 = extractvalue { i32, i1 } %69, 1
  br i1 %_53.1, label %panic8, label %bb30

panic7:                                           ; preds = %bb28
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2b7d6a85b420c485ef4024993d64eaf9) #22
  unreachable

bb30:                                             ; preds = %bb29
  %_45 = icmp eq i32 %_49.0, %_53.0
  br i1 %_45, label %bb31, label %bb24

panic8:                                           ; preds = %bb29
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2b7d6a85b420c485ef4024993d64eaf9) #22
  unreachable

bb31:                                             ; preds = %bb30
  store i32 0, ptr %c, align 4
  %_61 = icmp ult i64 0, %s.1
  br i1 %_61, label %bb32, label %panic9

bb32:                                             ; preds = %bb31
  %70 = getelementptr inbounds nuw i32, ptr %s.0, i64 0
  %_58 = load i32, ptr %70, align 4
  %_57 = zext i32 %_58 to i64
  %_63.0 = sub i64 %_57, 48
  %_63.1 = icmp ult i64 %_57, 48
  br i1 %_63.1, label %panic10, label %bb33

panic9:                                           ; preds = %bb31
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %s.1, ptr align 8 @alloc_fad321c1044677497d38898054c35a5a) #22
  unreachable

bb33:                                             ; preds = %bb32
  %_64 = sext i32 %i to i64
  %_55 = icmp ne i64 %_63.0, %_64
  br i1 %_55, label %bb34, label %bb36

panic10:                                          ; preds = %bb32
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fad321c1044677497d38898054c35a5a) #22
  unreachable

bb36:                                             ; preds = %bb35, %bb33
  %_72 = icmp ult i64 1, %s.1
  br i1 %_72, label %bb37, label %panic12

bb34:                                             ; preds = %bb33
  %71 = load i32, ptr %c, align 4
  %72 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %71, i32 1)
  %_65.0 = extractvalue { i32, i1 } %72, 0
  %_65.1 = extractvalue { i32, i1 } %72, 1
  br i1 %_65.1, label %panic11, label %bb35

bb35:                                             ; preds = %bb34
  store i32 %_65.0, ptr %c, align 4
  br label %bb36

panic11:                                          ; preds = %bb34
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ab70384cfbde8c7fb4855a942bc63834) #22
  unreachable

bb37:                                             ; preds = %bb36
  %73 = getelementptr inbounds nuw i32, ptr %s.0, i64 1
  %_69 = load i32, ptr %73, align 4
  %_68 = zext i32 %_69 to i64
  %_74.0 = sub i64 %_68, 48
  %_74.1 = icmp ult i64 %_68, 48
  br i1 %_74.1, label %panic13, label %bb38

panic12:                                          ; preds = %bb36
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 1, i64 %s.1, ptr align 8 @alloc_ec8387be9008a41220c2b3f415e6d923) #22
  unreachable

bb38:                                             ; preds = %bb37
  %_75 = sext i32 %j to i64
  %_66 = icmp ne i64 %_74.0, %_75
  br i1 %_66, label %bb39, label %bb41

panic13:                                          ; preds = %bb37
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ec8387be9008a41220c2b3f415e6d923) #22
  unreachable

bb41:                                             ; preds = %bb40, %bb38
  %_83 = icmp ult i64 2, %s.1
  br i1 %_83, label %bb42, label %panic15

bb39:                                             ; preds = %bb38
  %74 = load i32, ptr %c, align 4
  %75 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %74, i32 1)
  %_76.0 = extractvalue { i32, i1 } %75, 0
  %_76.1 = extractvalue { i32, i1 } %75, 1
  br i1 %_76.1, label %panic14, label %bb40

bb40:                                             ; preds = %bb39
  store i32 %_76.0, ptr %c, align 4
  br label %bb41

panic14:                                          ; preds = %bb39
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0636b7f88c241200f887af6f96a3b7f6) #22
  unreachable

bb42:                                             ; preds = %bb41
  %76 = getelementptr inbounds nuw i32, ptr %s.0, i64 2
  %_80 = load i32, ptr %76, align 4
  %_79 = zext i32 %_80 to i64
  %_85.0 = sub i64 %_79, 48
  %_85.1 = icmp ult i64 %_79, 48
  br i1 %_85.1, label %panic16, label %bb43

panic15:                                          ; preds = %bb41
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 2, i64 %s.1, ptr align 8 @alloc_f1ce2d1ba351ebd9a4923ab9afa879a3) #22
  unreachable

bb43:                                             ; preds = %bb42
  %_86 = sext i32 %k to i64
  %_77 = icmp ne i64 %_85.0, %_86
  br i1 %_77, label %bb44, label %bb46

panic16:                                          ; preds = %bb42
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f1ce2d1ba351ebd9a4923ab9afa879a3) #22
  unreachable

bb46:                                             ; preds = %bb45, %bb43
  %_94 = icmp ult i64 3, %s.1
  br i1 %_94, label %bb47, label %panic18

bb44:                                             ; preds = %bb43
  %77 = load i32, ptr %c, align 4
  %78 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %77, i32 1)
  %_87.0 = extractvalue { i32, i1 } %78, 0
  %_87.1 = extractvalue { i32, i1 } %78, 1
  br i1 %_87.1, label %panic17, label %bb45

bb45:                                             ; preds = %bb44
  store i32 %_87.0, ptr %c, align 4
  br label %bb46

panic17:                                          ; preds = %bb44
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_20b3a59cb5015474aeb60d0cd8171ff0) #22
  unreachable

bb47:                                             ; preds = %bb46
  %79 = getelementptr inbounds nuw i32, ptr %s.0, i64 3
  %_91 = load i32, ptr %79, align 4
  %_90 = zext i32 %_91 to i64
  %_96.0 = sub i64 %_90, 48
  %_96.1 = icmp ult i64 %_90, 48
  br i1 %_96.1, label %panic19, label %bb48

panic18:                                          ; preds = %bb46
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 3, i64 %s.1, ptr align 8 @alloc_e0c7be26c5b05d4116d889cc8a14d092) #22
  unreachable

bb48:                                             ; preds = %bb47
  %_97 = sext i32 %l to i64
  %_88 = icmp ne i64 %_96.0, %_97
  br i1 %_88, label %bb49, label %bb51

panic19:                                          ; preds = %bb47
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e0c7be26c5b05d4116d889cc8a14d092) #22
  unreachable

bb51:                                             ; preds = %bb50, %bb48
  %_105 = icmp ult i64 4, %s.1
  br i1 %_105, label %bb52, label %panic21

bb49:                                             ; preds = %bb48
  %80 = load i32, ptr %c, align 4
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %80, i32 1)
  %_98.0 = extractvalue { i32, i1 } %81, 0
  %_98.1 = extractvalue { i32, i1 } %81, 1
  br i1 %_98.1, label %panic20, label %bb50

bb50:                                             ; preds = %bb49
  store i32 %_98.0, ptr %c, align 4
  br label %bb51

panic20:                                          ; preds = %bb49
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0348be52a8f769ac21e95e87cc1013ec) #22
  unreachable

bb52:                                             ; preds = %bb51
  %82 = getelementptr inbounds nuw i32, ptr %s.0, i64 4
  %_102 = load i32, ptr %82, align 4
  %_101 = zext i32 %_102 to i64
  %_107.0 = sub i64 %_101, 48
  %_107.1 = icmp ult i64 %_101, 48
  br i1 %_107.1, label %panic22, label %bb53

panic21:                                          ; preds = %bb51
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 4, i64 %s.1, ptr align 8 @alloc_eb318ba259575769a505026434c47120) #22
  unreachable

bb53:                                             ; preds = %bb52
  %_108 = sext i32 %m to i64
  %_99 = icmp ne i64 %_107.0, %_108
  br i1 %_99, label %bb54, label %bb56

panic22:                                          ; preds = %bb52
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_eb318ba259575769a505026434c47120) #22
  unreachable

bb56:                                             ; preds = %bb55, %bb53
  %_116 = icmp ult i64 5, %s.1
  br i1 %_116, label %bb57, label %panic24

bb54:                                             ; preds = %bb53
  %83 = load i32, ptr %c, align 4
  %84 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %83, i32 1)
  %_109.0 = extractvalue { i32, i1 } %84, 0
  %_109.1 = extractvalue { i32, i1 } %84, 1
  br i1 %_109.1, label %panic23, label %bb55

bb55:                                             ; preds = %bb54
  store i32 %_109.0, ptr %c, align 4
  br label %bb56

panic23:                                          ; preds = %bb54
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bbe4ff0016545a150fedd7eece07026e) #22
  unreachable

bb57:                                             ; preds = %bb56
  %85 = getelementptr inbounds nuw i32, ptr %s.0, i64 5
  %_113 = load i32, ptr %85, align 4
  %_112 = zext i32 %_113 to i64
  %_118.0 = sub i64 %_112, 48
  %_118.1 = icmp ult i64 %_112, 48
  br i1 %_118.1, label %panic25, label %bb58

panic24:                                          ; preds = %bb56
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 5, i64 %s.1, ptr align 8 @alloc_0fe6300533cdc2852eea25def6deb38b) #22
  unreachable

bb58:                                             ; preds = %bb57
  %_119 = sext i32 %n to i64
  %_110 = icmp ne i64 %_118.0, %_119
  br i1 %_110, label %bb59, label %bb61

panic25:                                          ; preds = %bb57
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0fe6300533cdc2852eea25def6deb38b) #22
  unreachable

bb61:                                             ; preds = %bb60, %bb58
  %_122 = load i32, ptr %c, align 4
  %_123 = load i32, ptr %ans, align 4
  %_121 = icmp slt i32 %_122, %_123
  br i1 %_121, label %bb62, label %bb24

bb59:                                             ; preds = %bb58
  %86 = load i32, ptr %c, align 4
  %87 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 1)
  %_120.0 = extractvalue { i32, i1 } %87, 0
  %_120.1 = extractvalue { i32, i1 } %87, 1
  br i1 %_120.1, label %panic26, label %bb60

bb60:                                             ; preds = %bb59
  store i32 %_120.0, ptr %c, align 4
  br label %bb61

panic26:                                          ; preds = %bb59
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_830cd419c715f22a0c296480f596fc72) #22
  unreachable

bb62:                                             ; preds = %bb61
  %_124 = load i32, ptr %c, align 4
  store i32 %_124, ptr %ans, align 4
  br label %bb24

bb4:                                              ; No predecessors!
  unreachable
}
