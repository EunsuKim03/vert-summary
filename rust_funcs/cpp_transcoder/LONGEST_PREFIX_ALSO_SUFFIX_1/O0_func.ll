define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %_23 = alloca [4 x i8], align 4
  %_17 = alloca [16 x i8], align 8
  %_15 = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %len = alloca [4 x i8], align 4
  %lps = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %1 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h237cd9bb18bed441E"(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb38:                                             ; preds = %bb37, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E"(ptr align 8 %s) #22
          to label %bb39 unwind label %terminate

cleanup:                                          ; preds = %bb34, %bb3, %bb2, %bb1, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb38

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { ptr, i64 } %1, 0
  %_5.1 = extractvalue { ptr, i64 } %1, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h29a6264dda9fb1dfE"(ptr align 1 %_5.0, i64 %_5.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_4.0 = extractvalue { ptr, ptr } %6, 0
  %_4.1 = extractvalue { ptr, ptr } %6, 1
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::count
  %_3 = invoke i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfe5fffe913a3bc19E"(ptr %_4.0, ptr %_4.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %n = trunc i64 %_3 to i32
  %_8 = sext i32 %n to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h74113d229b6ff91dE(ptr sret([24 x i8]) align 8 %lps, i32 0, i64 %_8)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 0, ptr %len, align 4
  store i32 1, ptr %i, align 4
  br label %bb5

bb5:                                              ; preds = %bb17, %bb21, %bb24, %bb4
  %_12 = load i32, ptr %i, align 4
  %_11 = icmp slt i32 %_12, %n
  br i1 %_11, label %bb6, label %bb25

bb25:                                             ; preds = %bb5
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_56.0 = extractvalue { i32, i1 } %7, 0
  %_56.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_56.1, label %panic, label %bb26

bb6:                                              ; preds = %bb5
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %8 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h237cd9bb18bed441E"(ptr align 8 %s)
          to label %bb7 unwind label %cleanup1

bb26:                                             ; preds = %bb25
  %_54 = sext i32 %_56.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_52 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE"(ptr align 8 %lps, i64 %_54, ptr align 8 @alloc_c0d73be9ff781baefb2ac78c1a1f8d54)
          to label %bb27 unwind label %cleanup1

panic:                                            ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5313849cfa7aa4195bf80f3ccb0bb9db) #24
          to label %unreachable unwind label %cleanup1

bb37:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7dc60b80a138d2eaE"(ptr align 8 %lps) #22
          to label %bb38 unwind label %terminate

cleanup1:                                         ; preds = %panic7, %bb15, %panic6, %bb20, %panic5, %panic4, %bb22, %bb12, %bb11, %bb10, %bb9, %bb8, %bb7, %bb6, %panic3, %panic2, %bb26, %panic
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %11, ptr %12, align 8
  br label %bb37

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb27:                                             ; preds = %bb26
  %res = load i32, ptr %_52, align 4
  br label %bb28

bb28:                                             ; preds = %bb27
  %_61 = icmp eq i32 %n, -2147483648
  %_62 = and i1 false, %_61
  br i1 %_62, label %panic2, label %bb29

bb29:                                             ; preds = %bb28
  %_58 = sdiv i32 %n, 2
  %_57 = icmp sgt i32 %res, %_58
  br i1 %_57, label %bb30, label %bb33

panic2:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_94a14c7fb4297869802bc1865795a4b9) #24
          to label %unreachable unwind label %cleanup1

bb33:                                             ; preds = %bb29
  store i32 %res, ptr %_0, align 4
  br label %bb34

bb30:                                             ; preds = %bb29
  br label %bb31

bb34:                                             ; preds = %bb32, %bb33
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7dc60b80a138d2eaE"(ptr align 8 %lps)
          to label %bb35 unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_65 = icmp eq i32 %n, -2147483648
  %_66 = and i1 false, %_65
  br i1 %_66, label %panic3, label %bb32

bb32:                                             ; preds = %bb31
  %13 = sdiv i32 %n, 2
  store i32 %13, ptr %_0, align 4
  br label %bb34

panic3:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_0b199b0162b6d4d34fa75685d4209003) #24
          to label %unreachable unwind label %cleanup1

bb35:                                             ; preds = %bb34
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E"(ptr align 8 %s)
  %14 = load i32, ptr %_0, align 4
  ret i32 %14

bb7:                                              ; preds = %bb6
  %_18.0 = extractvalue { ptr, i64 } %8, 0
  %_18.1 = extractvalue { ptr, i64 } %8, 1
; invoke core::str::<impl str>::chars
  %15 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h29a6264dda9fb1dfE"(ptr align 1 %_18.0, i64 %_18.1)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  %16 = extractvalue { ptr, ptr } %15, 0
  %17 = extractvalue { ptr, ptr } %15, 1
  store ptr %16, ptr %_17, align 8
  %18 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %17, ptr %18, align 8
  %_21 = load i32, ptr %i, align 4
  %_20 = sext i32 %_21 to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %19 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb5e69be51cd83c91E(ptr align 8 %_17, i64 %_20)
          to label %bb9 unwind label %cleanup1

bb9:                                              ; preds = %bb8
  store i32 %19, ptr %_15, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %20 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h237cd9bb18bed441E"(ptr align 8 %s)
          to label %bb10 unwind label %cleanup1

bb10:                                             ; preds = %bb9
  %_26.0 = extractvalue { ptr, i64 } %20, 0
  %_26.1 = extractvalue { ptr, i64 } %20, 1
; invoke core::str::<impl str>::chars
  %21 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h29a6264dda9fb1dfE"(ptr align 1 %_26.0, i64 %_26.1)
          to label %bb11 unwind label %cleanup1

bb11:                                             ; preds = %bb10
  %22 = extractvalue { ptr, ptr } %21, 0
  %23 = extractvalue { ptr, ptr } %21, 1
  store ptr %22, ptr %_25, align 8
  %24 = getelementptr inbounds i8, ptr %_25, i64 8
  store ptr %23, ptr %24, align 8
  %_29 = load i32, ptr %len, align 4
  %_28 = sext i32 %_29 to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %25 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb5e69be51cd83c91E(ptr align 8 %_25, i64 %_28)
          to label %bb12 unwind label %cleanup1

bb12:                                             ; preds = %bb11
  store i32 %25, ptr %_23, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_13 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdbd0b977407ad7eeE"(ptr align 4 %_15, ptr align 4 %_23)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  br i1 %_13, label %bb14, label %bb18

bb18:                                             ; preds = %bb13
  %_38 = load i32, ptr %len, align 4
  %_37 = icmp ne i32 %_38, 0
  br i1 %_37, label %bb19, label %bb22

bb14:                                             ; preds = %bb13
  %26 = load i32, ptr %len, align 4
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 1)
  %_30.0 = extractvalue { i32, i1 } %27, 0
  %_30.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_30.1, label %panic6, label %bb15

bb22:                                             ; preds = %bb18
  %_49 = load i32, ptr %i, align 4
  %_48 = sext i32 %_49 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_46 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E"(ptr align 8 %lps, i64 %_48, ptr align 8 @alloc_1fa378cb2577a50d99a25942c8b308ad)
          to label %bb23 unwind label %cleanup1

bb19:                                             ; preds = %bb18
  %_44 = load i32, ptr %len, align 4
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_44, i32 1)
  %_45.0 = extractvalue { i32, i1 } %28, 0
  %_45.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_45.1, label %panic5, label %bb20

bb23:                                             ; preds = %bb22
  store i32 0, ptr %_46, align 4
  %29 = load i32, ptr %i, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %_50.0 = extractvalue { i32, i1 } %30, 0
  %_50.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_50.1, label %panic4, label %bb24

bb24:                                             ; preds = %bb23
  store i32 %_50.0, ptr %i, align 4
  br label %bb5

panic4:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d00129ae8dab2e3f4b86c0921e8a85d5) #24
          to label %unreachable unwind label %cleanup1

bb20:                                             ; preds = %bb19
  %_42 = sext i32 %_45.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_40 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE"(ptr align 8 %lps, i64 %_42, ptr align 8 @alloc_15f87202fcb13c9640047ed6616b0f07)
          to label %bb21 unwind label %cleanup1

panic5:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c560415660d9cd73e71f858146539210) #24
          to label %unreachable unwind label %cleanup1

bb21:                                             ; preds = %bb20
  %_39 = load i32, ptr %_40, align 4
  store i32 %_39, ptr %len, align 4
  br label %bb5

bb15:                                             ; preds = %bb14
  store i32 %_30.0, ptr %len, align 4
  %_31 = load i32, ptr %len, align 4
  %_35 = load i32, ptr %i, align 4
  %_34 = sext i32 %_35 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_32 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E"(ptr align 8 %lps, i64 %_34, ptr align 8 @alloc_a9c1e9623626a70b25051ffee6ac9148)
          to label %bb16 unwind label %cleanup1

panic6:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f2c8cd6bbc9c61d98cb76658aa8db335) #24
          to label %unreachable unwind label %cleanup1

bb16:                                             ; preds = %bb15
  store i32 %_31, ptr %_32, align 4
  %31 = load i32, ptr %i, align 4
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %31, i32 1)
  %_36.0 = extractvalue { i32, i1 } %32, 0
  %_36.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_36.1, label %panic7, label %bb17

bb17:                                             ; preds = %bb16
  store i32 %_36.0, ptr %i, align 4
  br label %bb5

panic7:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_10088db42e4e8851a158fa464eb9709a) #24
          to label %unreachable unwind label %cleanup1

terminate:                                        ; preds = %bb38, %bb37
  %33 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb39:                                             ; preds = %bb38
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds i8, ptr %0, i64 8
  %36 = load i32, ptr %35, align 8
  %37 = insertvalue { ptr, i32 } poison, ptr %34, 0
  %38 = insertvalue { ptr, i32 } %37, i32 %36, 1
  resume { ptr, i32 } %38
}
