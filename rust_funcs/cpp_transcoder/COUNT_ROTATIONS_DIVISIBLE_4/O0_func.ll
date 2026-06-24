define i32 @f_gold(ptr align 8 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i35 = alloca [4 x i8], align 4
  %self.i29 = alloca [4 x i8], align 4
  %self.i23 = alloca [4 x i8], align 4
  %self.i17 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_84 = alloca [16 x i8], align 8
  %_71 = alloca [16 x i8], align 8
  %_49 = alloca [16 x i8], align 8
  %_38 = alloca [16 x i8], align 8
  %_28 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %count = alloca [4 x i8], align 4
  %two_digit = alloca [4 x i8], align 4
  %_10 = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %len = invoke i64 @_ZN5alloc6string6String3len17h255c134b8c97c774E(ptr align 8 %n)
          to label %bb1 unwind label %cleanup

bb57:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E"(ptr align 8 %n) #21
          to label %bb58 unwind label %terminate

cleanup:                                          ; preds = %bb2.i37, %bb2.i31, %bb2.i25, %bb2.i19, %bb2.i, %panic16, %panic15, %bb4, %bb3, %bb2, %panic14, %panic13, %panic12, %panic11, %bb28, %panic10, %bb26, %bb25, %panic9, %panic8, %bb21, %bb20, %bb18, %panic7, %panic6, %panic5, %panic4, %bb45, %bb44, %bb43, %panic3, %panic2, %bb39, %panic1, %bb37, %bb19, %bb15, %bb13, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb57

bb1:                                              ; preds = %start
  %_4 = icmp eq i64 %len, 1
  br i1 %_4, label %bb2, label %bb12

bb12:                                             ; preds = %bb1
  store i32 0, ptr %count, align 4
  %_26.0 = sub i64 %len, 1
  %_26.1 = icmp ult i64 %len, 1
  br i1 %_26.1, label %panic, label %bb13

bb2:                                              ; preds = %bb1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h70a456d907956ebcE"(ptr align 8 %n)
          to label %bb3 unwind label %cleanup

bb13:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %6 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbc7385d5b76d178bE"(i64 0, i64 %_26.0)
          to label %bb14 unwind label %cleanup

panic:                                            ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_32ed63e72e7c2dbb9c7163bf382b1be4) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb14:                                             ; preds = %bb13
  %_23.0 = extractvalue { i64, i64 } %6, 0
  %_23.1 = extractvalue { i64, i64 } %6, 1
  store i64 %_23.0, ptr %iter, align 8
  %7 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_23.1, ptr %7, align 8
  br label %bb15

bb15:                                             ; preds = %bb36, %bb34, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %8 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd5b12e1f53434663E"(ptr align 8 %iter)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  store i64 %9, ptr %_28, align 8
  %11 = getelementptr inbounds i8, ptr %_28, i64 8
  store i64 %10, ptr %11, align 8
  %_30 = load i64, ptr %_28, align 8
  %12 = getelementptr inbounds i8, ptr %_28, i64 8
  %13 = load i64, ptr %12, align 8
  %14 = trunc nuw i64 %_30 to i1
  br i1 %14, label %bb18, label %bb19

bb18:                                             ; preds = %bb16
  %15 = getelementptr inbounds i8, ptr %_28, i64 8
  %i = load i64, ptr %15, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %16 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h70a456d907956ebcE"(ptr align 8 %n)
          to label %bb20 unwind label %cleanup

bb19:                                             ; preds = %bb16
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %17 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h70a456d907956ebcE"(ptr align 8 %n)
          to label %bb37 unwind label %cleanup

bb37:                                             ; preds = %bb19
  %_72.0 = extractvalue { ptr, i64 } %17, 0
  %_72.1 = extractvalue { ptr, i64 } %17, 1
; invoke core::str::<impl str>::chars
  %18 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h7cc73342dd16ef8fE"(ptr align 1 %_72.0, i64 %_72.1)
          to label %bb38 unwind label %cleanup

bb38:                                             ; preds = %bb37
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  store ptr %19, ptr %_71, align 8
  %21 = getelementptr inbounds i8, ptr %_71, i64 8
  store ptr %20, ptr %21, align 8
  %_75.0 = sub i64 %len, 1
  %_75.1 = icmp ult i64 %len, 1
  br i1 %_75.1, label %panic1, label %bb39

bb39:                                             ; preds = %bb38
; invoke core::iter::traits::iterator::Iterator::nth
  %_69 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h93770aadddc04728E(ptr align 8 %_71, i64 %_75.0)
          to label %bb40 unwind label %cleanup

panic1:                                           ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fea9f8a97371aaf18f449d9b79169e10) #23
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %bb39
  store i32 %_69, ptr %self.i35, align 4
  %22 = load i32, ptr %self.i35, align 4
  %23 = icmp eq i32 %22, 1114112
  %_2.i36 = select i1 %23, i64 0, i64 1
  %24 = trunc nuw i64 %_2.i36 to i1
  br i1 %24, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit40", label %bb2.i37

bb2.i37:                                          ; preds = %bb40
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_aa47e0f3d6fe611eb58e41fd2d239c8e) #22
          to label %.noexc39 unwind label %cleanup

.noexc39:                                         ; preds = %bb2.i37
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit40": ; preds = %bb40
  %val.i38 = load i32, ptr %self.i35, align 4
  br label %bb41

bb41:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit40"
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i38, i32 48)
  %_77.0 = extractvalue { i32, i1 } %25, 0
  %_77.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_77.1, label %panic2, label %bb42

bb42:                                             ; preds = %bb41
  %26 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_77.0, i32 10)
  %_78.0 = extractvalue { i32, i1 } %26, 0
  %_78.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_78.1, label %panic3, label %bb43

panic2:                                           ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9530ff1809fba2147b1e101d6b377288) #23
          to label %unreachable unwind label %cleanup

bb43:                                             ; preds = %bb42
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %27 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h70a456d907956ebcE"(ptr align 8 %n)
          to label %bb44 unwind label %cleanup

panic3:                                           ; preds = %bb42
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_9530ff1809fba2147b1e101d6b377288) #23
          to label %unreachable unwind label %cleanup

bb44:                                             ; preds = %bb43
  %_85.0 = extractvalue { ptr, i64 } %27, 0
  %_85.1 = extractvalue { ptr, i64 } %27, 1
; invoke core::str::<impl str>::chars
  %28 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h7cc73342dd16ef8fE"(ptr align 1 %_85.0, i64 %_85.1)
          to label %bb45 unwind label %cleanup

bb45:                                             ; preds = %bb44
  %29 = extractvalue { ptr, ptr } %28, 0
  %30 = extractvalue { ptr, ptr } %28, 1
  store ptr %29, ptr %_84, align 8
  %31 = getelementptr inbounds i8, ptr %_84, i64 8
  store ptr %30, ptr %31, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_82 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h93770aadddc04728E(ptr align 8 %_84, i64 0)
          to label %bb46 unwind label %cleanup

bb46:                                             ; preds = %bb45
  store i32 %_82, ptr %self.i29, align 4
  %32 = load i32, ptr %self.i29, align 4
  %33 = icmp eq i32 %32, 1114112
  %_2.i30 = select i1 %33, i64 0, i64 1
  %34 = trunc nuw i64 %_2.i30 to i1
  br i1 %34, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit34", label %bb2.i31

bb2.i31:                                          ; preds = %bb46
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_6d82530b4c881cf3502fabd8fbd0a004) #22
          to label %.noexc33 unwind label %cleanup

.noexc33:                                         ; preds = %bb2.i31
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit34": ; preds = %bb46
  %val.i32 = load i32, ptr %self.i29, align 4
  br label %bb47

bb47:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit34"
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i32, i32 48)
  %_88.0 = extractvalue { i32, i1 } %35, 0
  %_88.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_88.1, label %panic4, label %bb48

bb48:                                             ; preds = %bb47
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_78.0, i32 %_88.0)
  %_89.0 = extractvalue { i32, i1 } %36, 0
  %_89.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_89.1, label %panic5, label %bb49

panic4:                                           ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5a4ba23db3a8ebe9ed275b3d5606f66b) #23
          to label %unreachable unwind label %cleanup

bb49:                                             ; preds = %bb48
  store i32 %_89.0, ptr %two_digit, align 4
  %_92 = load i32, ptr %two_digit, align 4
  br label %bb50

panic5:                                           ; preds = %bb48
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9530ff1809fba2147b1e101d6b377288) #23
          to label %unreachable unwind label %cleanup

bb50:                                             ; preds = %bb49
  %_95 = icmp eq i32 %_92, -2147483648
  %_96 = and i1 false, %_95
  br i1 %_96, label %panic6, label %bb51

bb51:                                             ; preds = %bb50
  %_91 = srem i32 %_92, 4
  %_90 = icmp eq i32 %_91, 0
  br i1 %_90, label %bb52, label %bb54

panic6:                                           ; preds = %bb50
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_92526b9c4598d724b107aaf67109dc43) #23
          to label %unreachable unwind label %cleanup

bb54:                                             ; preds = %bb53, %bb51
  %37 = load i32, ptr %count, align 4
  store i32 %37, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E"(ptr align 8 %n)
  br label %bb56

bb52:                                             ; preds = %bb51
  %38 = load i32, ptr %count, align 4
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 1)
  %_97.0 = extractvalue { i32, i1 } %39, 0
  %_97.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_97.1, label %panic7, label %bb53

bb53:                                             ; preds = %bb52
  store i32 %_97.0, ptr %count, align 4
  br label %bb54

panic7:                                           ; preds = %bb52
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_44e1d381f644e319ee1b453f6c2acedd) #23
          to label %unreachable unwind label %cleanup

bb56:                                             ; preds = %bb55, %bb54
  %40 = load i32, ptr %_0, align 4
  ret i32 %40

bb20:                                             ; preds = %bb18
  %_39.0 = extractvalue { ptr, i64 } %16, 0
  %_39.1 = extractvalue { ptr, i64 } %16, 1
; invoke core::str::<impl str>::chars
  %41 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h7cc73342dd16ef8fE"(ptr align 1 %_39.0, i64 %_39.1)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %42 = extractvalue { ptr, ptr } %41, 0
  %43 = extractvalue { ptr, ptr } %41, 1
  store ptr %42, ptr %_38, align 8
  %44 = getelementptr inbounds i8, ptr %_38, i64 8
  store ptr %43, ptr %44, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_36 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h93770aadddc04728E(ptr align 8 %_38, i64 %i)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_36, ptr %self.i23, align 4
  %45 = load i32, ptr %self.i23, align 4
  %46 = icmp eq i32 %45, 1114112
  %_2.i24 = select i1 %46, i64 0, i64 1
  %47 = trunc nuw i64 %_2.i24 to i1
  br i1 %47, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit28", label %bb2.i25

bb2.i25:                                          ; preds = %bb22
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_0e23de349ccf4beb6e6def27f8a1a660) #22
          to label %.noexc27 unwind label %cleanup

.noexc27:                                         ; preds = %bb2.i25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit28": ; preds = %bb22
  %val.i26 = load i32, ptr %self.i23, align 4
  br label %bb23

bb23:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit28"
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i26, i32 48)
  %_42.0 = extractvalue { i32, i1 } %48, 0
  %_42.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_42.1, label %panic8, label %bb24

bb24:                                             ; preds = %bb23
  %49 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_42.0, i32 10)
  %_43.0 = extractvalue { i32, i1 } %49, 0
  %_43.1 = extractvalue { i32, i1 } %49, 1
  br i1 %_43.1, label %panic9, label %bb25

panic8:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_54bb4dcda32b7580a35ba06298a09ba4) #23
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %50 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h70a456d907956ebcE"(ptr align 8 %n)
          to label %bb26 unwind label %cleanup

panic9:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_54bb4dcda32b7580a35ba06298a09ba4) #23
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_50.0 = extractvalue { ptr, i64 } %50, 0
  %_50.1 = extractvalue { ptr, i64 } %50, 1
; invoke core::str::<impl str>::chars
  %51 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h7cc73342dd16ef8fE"(ptr align 1 %_50.0, i64 %_50.1)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %52 = extractvalue { ptr, ptr } %51, 0
  %53 = extractvalue { ptr, ptr } %51, 1
  store ptr %52, ptr %_49, align 8
  %54 = getelementptr inbounds i8, ptr %_49, i64 8
  store ptr %53, ptr %54, align 8
  %_53.0 = add i64 %i, 1
  %_53.1 = icmp ult i64 %_53.0, %i
  br i1 %_53.1, label %panic10, label %bb28

bb28:                                             ; preds = %bb27
; invoke core::iter::traits::iterator::Iterator::nth
  %_47 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h93770aadddc04728E(ptr align 8 %_49, i64 %_53.0)
          to label %bb29 unwind label %cleanup

panic10:                                          ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_41131c8c2fabe2083671413d434aaaec) #23
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  store i32 %_47, ptr %self.i17, align 4
  %55 = load i32, ptr %self.i17, align 4
  %56 = icmp eq i32 %55, 1114112
  %_2.i18 = select i1 %56, i64 0, i64 1
  %57 = trunc nuw i64 %_2.i18 to i1
  br i1 %57, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit22", label %bb2.i19

bb2.i19:                                          ; preds = %bb29
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_24ca3aff66782af8ae34a27f69fdbcdb) #22
          to label %.noexc21 unwind label %cleanup

.noexc21:                                         ; preds = %bb2.i19
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit22": ; preds = %bb29
  %val.i20 = load i32, ptr %self.i17, align 4
  br label %bb30

bb30:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit22"
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i20, i32 48)
  %_55.0 = extractvalue { i32, i1 } %58, 0
  %_55.1 = extractvalue { i32, i1 } %58, 1
  br i1 %_55.1, label %panic11, label %bb31

bb31:                                             ; preds = %bb30
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_43.0, i32 %_55.0)
  %_56.0 = extractvalue { i32, i1 } %59, 0
  %_56.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_56.1, label %panic12, label %bb32

panic11:                                          ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bb2683f98ee97faeff30f77032064643) #23
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  store i32 %_56.0, ptr %two_digit, align 4
  %_59 = load i32, ptr %two_digit, align 4
  br label %bb33

panic12:                                          ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_54bb4dcda32b7580a35ba06298a09ba4) #23
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  %_62 = icmp eq i32 %_59, -2147483648
  %_63 = and i1 false, %_62
  br i1 %_63, label %panic13, label %bb34

bb34:                                             ; preds = %bb33
  %_58 = srem i32 %_59, 4
  %_57 = icmp eq i32 %_58, 0
  br i1 %_57, label %bb35, label %bb15

panic13:                                          ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_de66b60a5fbb70b8e135757703aac1ef) #23
          to label %unreachable unwind label %cleanup

bb35:                                             ; preds = %bb34
  %60 = load i32, ptr %count, align 4
  %61 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %60, i32 1)
  %_64.0 = extractvalue { i32, i1 } %61, 0
  %_64.1 = extractvalue { i32, i1 } %61, 1
  br i1 %_64.1, label %panic14, label %bb36

bb36:                                             ; preds = %bb35
  store i32 %_64.0, ptr %count, align 4
  br label %bb15

panic14:                                          ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_977c7a28a3f627bc35ed95d6057d6089) #23
          to label %unreachable unwind label %cleanup

bb17:                                             ; No predecessors!
  unreachable

bb3:                                              ; preds = %bb2
  %_11.0 = extractvalue { ptr, i64 } %5, 0
  %_11.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %62 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h7cc73342dd16ef8fE"(ptr align 1 %_11.0, i64 %_11.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %63 = extractvalue { ptr, ptr } %62, 0
  %64 = extractvalue { ptr, ptr } %62, 1
  store ptr %63, ptr %_10, align 8
  %65 = getelementptr inbounds i8, ptr %_10, i64 8
  store ptr %64, ptr %65, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_8 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h93770aadddc04728E(ptr align 8 %_10, i64 0)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 %_8, ptr %self.i, align 4
  %66 = load i32, ptr %self.i, align 4
  %67 = icmp eq i32 %66, 1114112
  %_2.i = select i1 %67, i64 0, i64 1
  %68 = trunc nuw i64 %_2.i to i1
  br i1 %68, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb5
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_924d7d01cd927c4da1b3a66ad439e219) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit": ; preds = %bb5
  %val.i = load i32, ptr %self.i, align 4
  br label %bb6

bb6:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h68f9e3bc899ed555E.exit"
  %69 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_14.0 = extractvalue { i32, i1 } %69, 0
  %_14.1 = extractvalue { i32, i1 } %69, 1
  br i1 %_14.1, label %panic15, label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

panic15:                                          ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e878787ee7f2cad186493fa655bbe558) #23
          to label %unreachable unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_19 = icmp eq i32 %_14.0, -2147483648
  %_20 = and i1 false, %_19
  br i1 %_20, label %panic16, label %bb9

bb9:                                              ; preds = %bb8
  %_16 = srem i32 %_14.0, 4
  %_15 = icmp eq i32 %_16, 0
  br i1 %_15, label %bb10, label %bb11

panic16:                                          ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_baaf385232c2165def38fb1a97d0fb01) #23
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb9
  store i32 0, ptr %_0, align 4
  br label %bb55

bb10:                                             ; preds = %bb9
  store i32 1, ptr %_0, align 4
  br label %bb55

bb55:                                             ; preds = %bb10, %bb11
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E"(ptr align 8 %n)
  br label %bb56

terminate:                                        ; preds = %bb57
  %70 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb58:                                             ; preds = %bb57
  %71 = load ptr, ptr %0, align 8
  %72 = getelementptr inbounds i8, ptr %0, i64 8
  %73 = load i32, ptr %72, align 8
  %74 = insertvalue { ptr, i32 } poison, ptr %71, 0
  %75 = insertvalue { ptr, i32 } %74, i32 %73, 1
  resume { ptr, i32 } %75
}
