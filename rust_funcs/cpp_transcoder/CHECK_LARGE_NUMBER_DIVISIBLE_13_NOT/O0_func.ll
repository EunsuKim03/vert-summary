define i32 @f_gold(ptr align 8 %num) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i28 = alloca [4 x i8], align 4
  %self.i22 = alloca [4 x i8], align 4
  %self.i16 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_72 = alloca [16 x i8], align 8
  %_57 = alloca [16 x i8], align 8
  %_45 = alloca [16 x i8], align 8
  %group = alloca [4 x i8], align 4
  %_35 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %p = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_10 = alloca [16 x i8], align 8
  %length = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %1 = invoke i64 @_ZN5alloc6string6String3len17h6a1c29ec24e7bf9fE(ptr align 8 %num)
          to label %bb1 unwind label %cleanup

bb58:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha0ba47c197e22f4bE"(ptr align 8 %num) #22
          to label %bb59 unwind label %terminate

cleanup:                                          ; preds = %bb2.i30, %bb2.i24, %bb2.i18, %bb2.i, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %bb42, %panic9, %bb40, %bb39, %panic8, %panic7, %panic6, %bb34, %panic5, %bb32, %bb31, %panic4, %panic3, %bb27, %bb26, %bb24, %panic2, %bb25, %bb21, %bb19, %bb18, %panic1, %bb10, %panic, %bb15, %bb4, %bb3, %bb2, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb58

bb1:                                              ; preds = %start
  store i64 %1, ptr %length, align 8
  %_5 = load i64, ptr %length, align 8
  %_4 = icmp eq i64 %_5, 1
  br i1 %_4, label %bb2, label %bb8

bb8:                                              ; preds = %bb6, %bb1
  %_15 = load i64, ptr %length, align 8
  br label %bb9

bb2:                                              ; preds = %bb1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %6 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8f3c182a2fcc2907E"(ptr align 8 %num)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_11.0 = extractvalue { ptr, i64 } %6, 0
  %_11.1 = extractvalue { ptr, i64 } %6, 1
; invoke core::str::<impl str>::chars
  %7 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h42c3fda9ad3392acE"(ptr align 1 %_11.0, i64 %_11.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { ptr, ptr } %7, 0
  %9 = extractvalue { ptr, ptr } %7, 1
  store ptr %8, ptr %_10, align 8
  %10 = getelementptr inbounds i8, ptr %_10, i64 8
  store ptr %9, ptr %10, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_8 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h773036c3612144d0E(ptr align 8 %_10, i64 0)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 %_8, ptr %self.i28, align 4
  %11 = load i32, ptr %self.i28, align 4
  %12 = icmp eq i32 %11, 1114112
  %_2.i29 = select i1 %12, i64 0, i64 1
  %13 = trunc nuw i64 %_2.i29 to i1
  br i1 %13, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit33", label %bb2.i30

bb2.i30:                                          ; preds = %bb5
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_a862e98d2491c382836cee425b3979fc) #20
          to label %.noexc32 unwind label %cleanup

.noexc32:                                         ; preds = %bb2.i30
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit33": ; preds = %bb5
  %val.i31 = load i32, ptr %self.i28, align 4
  br label %bb6

bb6:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit33"
  %_6 = icmp eq i32 %val.i31, 48
  br i1 %_6, label %bb7, label %bb8

bb7:                                              ; preds = %bb6
  store i32 1, ptr %_0, align 4
  br label %bb56

bb9:                                              ; preds = %bb8
  %_14 = urem i64 %_15, 3
  %_13 = icmp eq i64 %_14, 1
  br i1 %_13, label %bb10, label %bb13

bb13:                                             ; preds = %bb9
  %_23 = load i64, ptr %length, align 8
  br label %bb14

bb10:                                             ; preds = %bb9
; invoke alloc::string::String::push_str
  invoke void @_ZN5alloc6string6String8push_str17h04d20d3a05a8d46cE(ptr align 8 %num, ptr align 1 @alloc_31b87e4183ddea3ba6aff175b346d521, i64 2)
          to label %bb11 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_22 = urem i64 %_23, 3
  %_21 = icmp eq i64 %_22, 2
  br i1 %_21, label %bb15, label %bb18

bb18:                                             ; preds = %bb12, %bb17, %bb14
  store i32 0, ptr %sum, align 4
  store i32 1, ptr %p, align 4
  %_33 = load i64, ptr %length, align 8
; invoke core::iter::traits::iterator::Iterator::rev
  %14 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17h1727130cfd78dfa7E(i64 0, i64 %_33)
          to label %bb19 unwind label %cleanup

bb15:                                             ; preds = %bb14
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17h9152d195e3a9e085E(ptr align 8 %num, i32 48)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %15 = load i64, ptr %length, align 8
  %_27.0 = add i64 %15, 1
  %_27.1 = icmp ult i64 %_27.0, %15
  br i1 %_27.1, label %panic, label %bb17

bb17:                                             ; preds = %bb16
  store i64 %_27.0, ptr %length, align 8
  br label %bb18

panic:                                            ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9bd8acdd2223713fbaacd580b64ed26d) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb11:                                             ; preds = %bb10
  %16 = load i64, ptr %length, align 8
  %_20.0 = add i64 %16, 2
  %_20.1 = icmp ult i64 %_20.0, %16
  br i1 %_20.1, label %panic1, label %bb12

bb12:                                             ; preds = %bb11
  store i64 %_20.0, ptr %length, align 8
  br label %bb18

panic1:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_99a767f81f74c01cf509073308058966) #23
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_31.0 = extractvalue { i64, i64 } %14, 0
  %_31.1 = extractvalue { i64, i64 } %14, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5713833f7898cd57E"(i64 %_31.0, i64 %_31.1)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_30.0 = extractvalue { i64, i64 } %17, 0
  %_30.1 = extractvalue { i64, i64 } %17, 1
  store i64 %_30.0, ptr %iter, align 8
  %18 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_30.1, ptr %18, align 8
  br label %bb21

bb21:                                             ; preds = %bb50, %bb20
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %19 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he09d5abb97f32743E"(ptr align 8 %iter)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  store i64 %20, ptr %_35, align 8
  %22 = getelementptr inbounds i8, ptr %_35, i64 8
  store i64 %21, ptr %22, align 8
  %_37 = load i64, ptr %_35, align 8
  %23 = getelementptr inbounds i8, ptr %_35, i64 8
  %24 = load i64, ptr %23, align 8
  %25 = trunc nuw i64 %_37 to i1
  br i1 %25, label %bb24, label %bb25

bb24:                                             ; preds = %bb22
  %26 = getelementptr inbounds i8, ptr %_35, i64 8
  %i = load i64, ptr %26, align 8
  store i32 0, ptr %group, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %27 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8f3c182a2fcc2907E"(ptr align 8 %num)
          to label %bb26 unwind label %cleanup

bb25:                                             ; preds = %bb22
  %_89 = load i32, ptr %sum, align 4
; invoke core::num::<impl i32>::abs
  %_88 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17ha57ede8df2b7483aE"(i32 %_89)
          to label %bb51 unwind label %cleanup

bb51:                                             ; preds = %bb25
  store i32 %_88, ptr %sum, align 4
  %_92 = load i32, ptr %sum, align 4
  br label %bb52

bb52:                                             ; preds = %bb51
  %_95 = icmp eq i32 %_92, -2147483648
  %_96 = and i1 false, %_95
  br i1 %_96, label %panic2, label %bb53

bb53:                                             ; preds = %bb52
  %_91 = srem i32 %_92, 13
  %_90 = icmp eq i32 %_91, 0
  br i1 %_90, label %bb54, label %bb55

panic2:                                           ; preds = %bb52
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c48f8305fbec8196aeb0affa3cd6118e) #23
          to label %unreachable unwind label %cleanup

bb55:                                             ; preds = %bb53
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha0ba47c197e22f4bE"(ptr align 8 %num)
  br label %bb57

bb54:                                             ; preds = %bb53
  store i32 1, ptr %_0, align 4
  br label %bb56

bb57:                                             ; preds = %bb56, %bb55
  %28 = load i32, ptr %_0, align 4
  ret i32 %28

bb56:                                             ; preds = %bb7, %bb54
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha0ba47c197e22f4bE"(ptr align 8 %num)
  br label %bb57

bb26:                                             ; preds = %bb24
  %_46.0 = extractvalue { ptr, i64 } %27, 0
  %_46.1 = extractvalue { ptr, i64 } %27, 1
; invoke core::str::<impl str>::chars
  %29 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h42c3fda9ad3392acE"(ptr align 1 %_46.0, i64 %_46.1)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %30 = extractvalue { ptr, ptr } %29, 0
  %31 = extractvalue { ptr, ptr } %29, 1
  store ptr %30, ptr %_45, align 8
  %32 = getelementptr inbounds i8, ptr %_45, i64 8
  store ptr %31, ptr %32, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_43 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h773036c3612144d0E(ptr align 8 %_45, i64 %i)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  store i32 %_43, ptr %self.i22, align 4
  %33 = load i32, ptr %self.i22, align 4
  %34 = icmp eq i32 %33, 1114112
  %_2.i23 = select i1 %34, i64 0, i64 1
  %35 = trunc nuw i64 %_2.i23 to i1
  br i1 %35, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit27", label %bb2.i24

bb2.i24:                                          ; preds = %bb28
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_6871ce8791b816da97cbbf20d9f8f173) #20
          to label %.noexc26 unwind label %cleanup

.noexc26:                                         ; preds = %bb2.i24
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit27": ; preds = %bb28
  %val.i25 = load i32, ptr %self.i22, align 4
  br label %bb29

bb29:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit27"
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i25, i32 48)
  %_49.0 = extractvalue { i32, i1 } %36, 0
  %_49.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_49.1, label %panic3, label %bb30

bb30:                                             ; preds = %bb29
  %37 = load i32, ptr %group, align 4
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %37, i32 %_49.0)
  %_50.0 = extractvalue { i32, i1 } %38, 0
  %_50.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_50.1, label %panic4, label %bb31

panic3:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_186cf5a253d35759f808a2119a45f06e) #23
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30
  store i32 %_50.0, ptr %group, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %39 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8f3c182a2fcc2907E"(ptr align 8 %num)
          to label %bb32 unwind label %cleanup

panic4:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a41232b0e42e8bc96bfb84948bb685f2) #23
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_58.0 = extractvalue { ptr, i64 } %39, 0
  %_58.1 = extractvalue { ptr, i64 } %39, 1
; invoke core::str::<impl str>::chars
  %40 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h42c3fda9ad3392acE"(ptr align 1 %_58.0, i64 %_58.1)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb32
  %41 = extractvalue { ptr, ptr } %40, 0
  %42 = extractvalue { ptr, ptr } %40, 1
  store ptr %41, ptr %_57, align 8
  %43 = getelementptr inbounds i8, ptr %_57, i64 8
  store ptr %42, ptr %43, align 8
  %_61.0 = sub i64 %i, 1
  %_61.1 = icmp ult i64 %i, 1
  br i1 %_61.1, label %panic5, label %bb34

bb34:                                             ; preds = %bb33
; invoke core::iter::traits::iterator::Iterator::nth
  %_55 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h773036c3612144d0E(ptr align 8 %_57, i64 %_61.0)
          to label %bb35 unwind label %cleanup

panic5:                                           ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e77c7b3fcf4aedcf3c7627679d0c4d8c) #23
          to label %unreachable unwind label %cleanup

bb35:                                             ; preds = %bb34
  store i32 %_55, ptr %self.i16, align 4
  %44 = load i32, ptr %self.i16, align 4
  %45 = icmp eq i32 %44, 1114112
  %_2.i17 = select i1 %45, i64 0, i64 1
  %46 = trunc nuw i64 %_2.i17 to i1
  br i1 %46, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit21", label %bb2.i18

bb2.i18:                                          ; preds = %bb35
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_2ba9c55dd474f682f66dab159bb81d88) #20
          to label %.noexc20 unwind label %cleanup

.noexc20:                                         ; preds = %bb2.i18
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit21": ; preds = %bb35
  %val.i19 = load i32, ptr %self.i16, align 4
  br label %bb36

bb36:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit21"
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i19, i32 48)
  %_63.0 = extractvalue { i32, i1 } %47, 0
  %_63.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_63.1, label %panic6, label %bb37

bb37:                                             ; preds = %bb36
  %48 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_63.0, i32 10)
  %_64.0 = extractvalue { i32, i1 } %48, 0
  %_64.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_64.1, label %panic7, label %bb38

panic6:                                           ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8a3d477dabca73aa49d9e73a810a89cc) #23
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb37
  %49 = load i32, ptr %group, align 4
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %49, i32 %_64.0)
  %_65.0 = extractvalue { i32, i1 } %50, 0
  %_65.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_65.1, label %panic8, label %bb39

panic7:                                           ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8a3d477dabca73aa49d9e73a810a89cc) #23
          to label %unreachable unwind label %cleanup

bb39:                                             ; preds = %bb38
  store i32 %_65.0, ptr %group, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %51 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8f3c182a2fcc2907E"(ptr align 8 %num)
          to label %bb40 unwind label %cleanup

panic8:                                           ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9484fba6ca65fad9938ca5a55553e3c7) #23
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %bb39
  %_73.0 = extractvalue { ptr, i64 } %51, 0
  %_73.1 = extractvalue { ptr, i64 } %51, 1
; invoke core::str::<impl str>::chars
  %52 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h42c3fda9ad3392acE"(ptr align 1 %_73.0, i64 %_73.1)
          to label %bb41 unwind label %cleanup

bb41:                                             ; preds = %bb40
  %53 = extractvalue { ptr, ptr } %52, 0
  %54 = extractvalue { ptr, ptr } %52, 1
  store ptr %53, ptr %_72, align 8
  %55 = getelementptr inbounds i8, ptr %_72, i64 8
  store ptr %54, ptr %55, align 8
  %_76.0 = sub i64 %i, 2
  %_76.1 = icmp ult i64 %i, 2
  br i1 %_76.1, label %panic9, label %bb42

bb42:                                             ; preds = %bb41
; invoke core::iter::traits::iterator::Iterator::nth
  %_70 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h773036c3612144d0E(ptr align 8 %_72, i64 %_76.0)
          to label %bb43 unwind label %cleanup

panic9:                                           ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b9815830f488bcff536d39294621498a) #23
          to label %unreachable unwind label %cleanup

bb43:                                             ; preds = %bb42
  store i32 %_70, ptr %self.i, align 4
  %56 = load i32, ptr %self.i, align 4
  %57 = icmp eq i32 %56, 1114112
  %_2.i = select i1 %57, i64 0, i64 1
  %58 = trunc nuw i64 %_2.i to i1
  br i1 %58, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb43
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_a4ceec50903d3c1195516cf4fa2df2e0) #20
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit": ; preds = %bb43
  %val.i = load i32, ptr %self.i, align 4
  br label %bb44

bb44:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdf2b6af131ee9ad7E.exit"
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_78.0 = extractvalue { i32, i1 } %59, 0
  %_78.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_78.1, label %panic10, label %bb45

bb45:                                             ; preds = %bb44
  %60 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_78.0, i32 100)
  %_79.0 = extractvalue { i32, i1 } %60, 0
  %_79.1 = extractvalue { i32, i1 } %60, 1
  br i1 %_79.1, label %panic11, label %bb46

panic10:                                          ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5fcb907392c36a9f53c17efcadd6234e) #23
          to label %unreachable unwind label %cleanup

bb46:                                             ; preds = %bb45
  %61 = load i32, ptr %group, align 4
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %61, i32 %_79.0)
  %_80.0 = extractvalue { i32, i1 } %62, 0
  %_80.1 = extractvalue { i32, i1 } %62, 1
  br i1 %_80.1, label %panic12, label %bb47

panic11:                                          ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5fcb907392c36a9f53c17efcadd6234e) #23
          to label %unreachable unwind label %cleanup

bb47:                                             ; preds = %bb46
  store i32 %_80.0, ptr %group, align 4
  %_81 = load i32, ptr %sum, align 4
  %_83 = load i32, ptr %group, align 4
  %_84 = load i32, ptr %p, align 4
  %63 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_83, i32 %_84)
  %_85.0 = extractvalue { i32, i1 } %63, 0
  %_85.1 = extractvalue { i32, i1 } %63, 1
  br i1 %_85.1, label %panic13, label %bb48

panic12:                                          ; preds = %bb46
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7fc951518dca7ad505af2f3e509676bf) #23
          to label %unreachable unwind label %cleanup

bb48:                                             ; preds = %bb47
  %64 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_81, i32 %_85.0)
  %_86.0 = extractvalue { i32, i1 } %64, 0
  %_86.1 = extractvalue { i32, i1 } %64, 1
  br i1 %_86.1, label %panic14, label %bb49

panic13:                                          ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6fda2e2ff7f1425254e97ed2ca4e7ff8) #23
          to label %unreachable unwind label %cleanup

bb49:                                             ; preds = %bb48
  store i32 %_86.0, ptr %sum, align 4
  %65 = load i32, ptr %p, align 4
  %66 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %65, i32 -1)
  %_87.0 = extractvalue { i32, i1 } %66, 0
  %_87.1 = extractvalue { i32, i1 } %66, 1
  br i1 %_87.1, label %panic15, label %bb50

panic14:                                          ; preds = %bb48
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8e53a1478933ea1d3892ef39efc3f372) #23
          to label %unreachable unwind label %cleanup

bb50:                                             ; preds = %bb49
  store i32 %_87.0, ptr %p, align 4
  br label %bb21

panic15:                                          ; preds = %bb49
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_397746d25b561d721067c6bdb0b4e76b) #23
          to label %unreachable unwind label %cleanup

bb23:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb58
  %67 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb59:                                             ; preds = %bb58
  %68 = load ptr, ptr %0, align 8
  %69 = getelementptr inbounds i8, ptr %0, i64 8
  %70 = load i32, ptr %69, align 8
  %71 = insertvalue { ptr, i32 } poison, ptr %68, 0
  %72 = insertvalue { ptr, i32 } %71, i32 %70, 1
  resume { ptr, i32 } %72
}
