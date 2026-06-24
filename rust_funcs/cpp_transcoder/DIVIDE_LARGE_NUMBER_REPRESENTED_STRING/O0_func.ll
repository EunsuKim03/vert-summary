define void @f_gold(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %number, i32 %divisor) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %6 = alloca [16 x i8], align 8
  %_51 = alloca [8 x i8], align 4
  %_36 = alloca [4 x i8], align 4
  %_34 = alloca [24 x i8], align 8
  %_17 = alloca [8 x i8], align 4
  %_6 = alloca [8 x i8], align 4
  %temp = alloca [4 x i8], align 4
  %idx = alloca [8 x i8], align 8
  %ans = alloca [24 x i8], align 8
; invoke alloc::string::String::new
  invoke void @_ZN5alloc6string6String3new17h08cec5edc1a9cdb8E(ptr sret([24 x i8]) align 8 %ans)
          to label %bb1 unwind label %cleanup

bb38:                                             ; preds = %bb37, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E"(ptr align 8 %number) #22
          to label %bb39 unwind label %terminate

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %6, align 8
  %10 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb38

bb1:                                              ; preds = %start
  store i64 0, ptr %idx, align 8
  %_10 = load i64, ptr %idx, align 8
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %11 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E"(ptr align 8 %number, i64 %_10, ptr align 8 @alloc_693d8494261a1ad7c8be3671481b43b5)
          to label %bb2 unwind label %cleanup1

bb37:                                             ; preds = %bb36, %cleanup1
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E"(ptr align 8 %ans) #22
          to label %bb38 unwind label %terminate

cleanup1:                                         ; preds = %panic13, %panic12, %bb9, %bb8, %bb7, %panic11, %panic10, %panic9, %panic8, %bb27, %bb26, %bb25, %panic7, %panic6, %panic5, %panic4, %bb20, %bb17, %panic2, %panic, %bb33, %bb31, %bb13, %bb3, %bb2, %bb1
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  store ptr %13, ptr %6, align 8
  %15 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 %14, ptr %15, align 8
  br label %bb37

bb2:                                              ; preds = %bb1
  %_7.0 = extractvalue { ptr, i64 } %11, 0
  %_7.1 = extractvalue { ptr, i64 } %11, 1
; invoke core::str::<impl str>::parse
  %16 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E"(ptr align 1 %_7.0, i64 %_7.1)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  store i64 %16, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_6, ptr align 8 %5, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 4 %_6, i64 8, i1 false)
  %17 = load i64, ptr %4, align 8
; invoke core::result::Result<T,E>::unwrap_or
  %18 = invoke i32 @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h0a7b8b5a2e86c8aeE"(i64 %17, i32 0)
          to label %bb40 unwind label %cleanup1

bb40:                                             ; preds = %bb3
  store i32 %18, ptr %temp, align 4
  br label %bb4

bb4:                                              ; preds = %bb12, %bb40
  %_12 = load i32, ptr %temp, align 4
  %_11 = icmp slt i32 %_12, %divisor
  br i1 %_11, label %bb5, label %bb13

bb13:                                             ; preds = %bb30, %bb4
; invoke alloc::string::String::len
  %_27 = invoke i64 @_ZN5alloc6string6String3len17h01afad9016eaec21E(ptr align 8 %number)
          to label %bb14 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  %_14 = load i32, ptr %temp, align 4
  %19 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_14, i32 10)
  %_15.0 = extractvalue { i32, i1 } %19, 0
  %_15.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_15.1, label %panic10, label %bb6

bb14:                                             ; preds = %bb13
  %_29 = load i64, ptr %idx, align 8
  %_26 = icmp ugt i64 %_27, %_29
  br i1 %_26, label %bb15, label %bb31

bb31:                                             ; preds = %bb14
; invoke alloc::string::String::is_empty
  %_61 = invoke zeroext i1 @_ZN5alloc6string6String8is_empty17h075e520c5ccacc68E(ptr align 8 %ans)
          to label %bb32 unwind label %cleanup1

bb15:                                             ; preds = %bb14
  %_37 = load i32, ptr %temp, align 4
  %_38 = icmp eq i32 %divisor, 0
  br i1 %_38, label %panic, label %bb16

bb32:                                             ; preds = %bb31
  br i1 %_61, label %bb33, label %bb34

bb34:                                             ; preds = %bb41, %bb32
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %ans, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E"(ptr align 8 %number)
  ret void

bb33:                                             ; preds = %bb32
; invoke alloc::string::String::push_str
  invoke void @_ZN5alloc6string6String8push_str17heaec36970f8bb88eE(ptr align 8 %ans, ptr align 1 @alloc_dda1ee2b88b89b9cdac753eef7988035, i64 1)
          to label %bb41 unwind label %cleanup1

bb41:                                             ; preds = %bb33
  br label %bb34

bb16:                                             ; preds = %bb15
  %_39 = icmp eq i32 %divisor, -1
  %_40 = icmp eq i32 %_37, -2147483648
  %_41 = and i1 %_39, %_40
  br i1 %_41, label %panic2, label %bb17

panic:                                            ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_div_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_8bae67a9e2a83c445d61cea535f7257c) #23
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic2, %panic
  unreachable

bb17:                                             ; preds = %bb16
  %20 = sdiv i32 %_37, %divisor
  store i32 %20, ptr %_36, align 4
; invoke <T as alloc::string::ToString>::to_string
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hb4f2591d5610a62fE"(ptr sret([24 x i8]) align 8 %_34, ptr align 4 %_36)
          to label %bb18 unwind label %cleanup1

panic2:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_8bae67a9e2a83c445d61cea535f7257c) #23
          to label %unreachable unwind label %cleanup1

bb18:                                             ; preds = %bb17
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %21 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2311c5e987adc1a3E"(ptr align 8 %_34)
          to label %bb19 unwind label %cleanup3

bb36:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E"(ptr align 8 %_34) #22
          to label %bb37 unwind label %terminate

cleanup3:                                         ; preds = %bb19, %bb18
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  store ptr %23, ptr %6, align 8
  %25 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 %24, ptr %25, align 8
  br label %bb36

bb19:                                             ; preds = %bb18
  %_32.0 = extractvalue { ptr, i64 } %21, 0
  %_32.1 = extractvalue { ptr, i64 } %21, 1
; invoke alloc::string::String::push_str
  invoke void @_ZN5alloc6string6String8push_str17heaec36970f8bb88eE(ptr align 8 %ans, ptr align 1 %_32.0, i64 %_32.1)
          to label %bb20 unwind label %cleanup3

bb20:                                             ; preds = %bb19
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E"(ptr align 8 %_34)
          to label %bb21 unwind label %cleanup1

bb21:                                             ; preds = %bb20
  %_44 = load i32, ptr %temp, align 4
  %_45 = icmp eq i32 %divisor, 0
  br i1 %_45, label %panic4, label %bb22

bb22:                                             ; preds = %bb21
  %_46 = icmp eq i32 %divisor, -1
  %_47 = icmp eq i32 %_44, -2147483648
  %_48 = and i1 %_46, %_47
  br i1 %_48, label %panic5, label %bb23

panic4:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_da25fe4412e8db41a753e7e221272034) #23
          to label %unreachable unwind label %cleanup1

bb23:                                             ; preds = %bb22
  %_43 = srem i32 %_44, %divisor
  %26 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_43, i32 10)
  %_49.0 = extractvalue { i32, i1 } %26, 0
  %_49.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_49.1, label %panic6, label %bb24

panic5:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_da25fe4412e8db41a753e7e221272034) #23
          to label %unreachable unwind label %cleanup1

bb24:                                             ; preds = %bb23
  %_56 = load i64, ptr %idx, align 8
  %_57.0 = add i64 %_56, 1
  %_57.1 = icmp ult i64 %_57.0, %_56
  br i1 %_57.1, label %panic7, label %bb25

panic6:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_da25fe4412e8db41a753e7e221272034) #23
          to label %unreachable unwind label %cleanup1

bb25:                                             ; preds = %bb24
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %27 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E"(ptr align 8 %number, i64 %_57.0, ptr align 8 @alloc_266815b979d0a4a0916b4592093b14e0)
          to label %bb26 unwind label %cleanup1

panic7:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_efa609457624aa97aa9c20051150e370) #23
          to label %unreachable unwind label %cleanup1

bb26:                                             ; preds = %bb25
  %_52.0 = extractvalue { ptr, i64 } %27, 0
  %_52.1 = extractvalue { ptr, i64 } %27, 1
; invoke core::str::<impl str>::parse
  %28 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E"(ptr align 1 %_52.0, i64 %_52.1)
          to label %bb27 unwind label %cleanup1

bb27:                                             ; preds = %bb26
  store i64 %28, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_51, ptr align 8 %3, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 4 %_51, i64 8, i1 false)
  %29 = load i64, ptr %2, align 8
; invoke core::result::Result<T,E>::unwrap_or
  %_50 = invoke i32 @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h0a7b8b5a2e86c8aeE"(i64 %29, i32 0)
          to label %bb28 unwind label %cleanup1

bb28:                                             ; preds = %bb27
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_49.0, i32 %_50)
  %_58.0 = extractvalue { i32, i1 } %30, 0
  %_58.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_58.1, label %panic8, label %bb29

bb29:                                             ; preds = %bb28
  store i32 %_58.0, ptr %temp, align 4
  %31 = load i64, ptr %idx, align 8
  %_59.0 = add i64 %31, 1
  %_59.1 = icmp ult i64 %_59.0, %31
  br i1 %_59.1, label %panic9, label %bb30

panic8:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_da25fe4412e8db41a753e7e221272034) #23
          to label %unreachable unwind label %cleanup1

bb30:                                             ; preds = %bb29
  store i64 %_59.0, ptr %idx, align 8
  br label %bb13

panic9:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7128652641cdfaedaf5f5a0fe950387c) #23
          to label %unreachable unwind label %cleanup1

terminate:                                        ; preds = %bb38, %bb37, %bb36
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb6:                                              ; preds = %bb5
  %_22 = load i64, ptr %idx, align 8
  %_23.0 = add i64 %_22, 1
  %_23.1 = icmp ult i64 %_23.0, %_22
  br i1 %_23.1, label %panic11, label %bb7

panic10:                                          ; preds = %bb5
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_81702a61dfbbd9a9796f25db7a4c0cbe) #23
          to label %unreachable unwind label %cleanup1

bb7:                                              ; preds = %bb6
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %33 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E"(ptr align 8 %number, i64 %_23.0, ptr align 8 @alloc_e5d9209da51091951dab14997004893c)
          to label %bb8 unwind label %cleanup1

panic11:                                          ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ccb8ca182027c921398e31a57d1323c1) #23
          to label %unreachable unwind label %cleanup1

bb8:                                              ; preds = %bb7
  %_18.0 = extractvalue { ptr, i64 } %33, 0
  %_18.1 = extractvalue { ptr, i64 } %33, 1
; invoke core::str::<impl str>::parse
  %34 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E"(ptr align 1 %_18.0, i64 %_18.1)
          to label %bb9 unwind label %cleanup1

bb9:                                              ; preds = %bb8
  store i64 %34, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_17, ptr align 8 %1, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 4 %_17, i64 8, i1 false)
  %35 = load i64, ptr %0, align 8
; invoke core::result::Result<T,E>::unwrap_or
  %_16 = invoke i32 @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h0a7b8b5a2e86c8aeE"(i64 %35, i32 0)
          to label %bb10 unwind label %cleanup1

bb10:                                             ; preds = %bb9
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_15.0, i32 %_16)
  %_24.0 = extractvalue { i32, i1 } %36, 0
  %_24.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_24.1, label %panic12, label %bb11

bb11:                                             ; preds = %bb10
  store i32 %_24.0, ptr %temp, align 4
  %37 = load i64, ptr %idx, align 8
  %_25.0 = add i64 %37, 1
  %_25.1 = icmp ult i64 %_25.0, %37
  br i1 %_25.1, label %panic13, label %bb12

panic12:                                          ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_81702a61dfbbd9a9796f25db7a4c0cbe) #23
          to label %unreachable unwind label %cleanup1

bb12:                                             ; preds = %bb11
  store i64 %_25.0, ptr %idx, align 8
  br label %bb4

panic13:                                          ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fb4b152aaca2d09af081ef238c9f9021) #23
          to label %unreachable unwind label %cleanup1

bb39:                                             ; preds = %bb38
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds i8, ptr %6, i64 8
  %40 = load i32, ptr %39, align 8
  %41 = insertvalue { ptr, i32 } poison, ptr %38, 0
  %42 = insertvalue { ptr, i32 } %41, i32 %40, 1
  resume { ptr, i32 } %42
}
