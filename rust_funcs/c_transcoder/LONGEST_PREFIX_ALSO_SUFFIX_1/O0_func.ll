define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %_21 = alloca [4 x i8], align 4
  %_15 = alloca [16 x i8], align 8
  %_13 = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %len = alloca [4 x i8], align 4
  %lps = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %_3 = invoke i64 @_ZN5alloc6string6String3len17he3eff7f1e91211f1E(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb36:                                             ; preds = %bb35, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E"(ptr align 8 %s) #22
          to label %bb37 unwind label %terminate

cleanup:                                          ; preds = %bb32, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb36

bb1:                                              ; preds = %start
  %n = trunc i64 %_3 to i32
  %_6 = sext i32 %n to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h74113d229b6ff91dE(ptr sret([24 x i8]) align 8 %lps, i32 0, i64 %_6)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i32 0, ptr %len, align 4
  store i32 1, ptr %i, align 4
  br label %bb3

bb3:                                              ; preds = %bb15, %bb19, %bb22, %bb2
  %_10 = load i32, ptr %i, align 4
  %_9 = icmp slt i32 %_10, %n
  br i1 %_9, label %bb4, label %bb23

bb23:                                             ; preds = %bb3
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_54.0 = extractvalue { i32, i1 } %5, 0
  %_54.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_54.1, label %panic, label %bb24

bb4:                                              ; preds = %bb3
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %6 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h237cd9bb18bed441E"(ptr align 8 %s)
          to label %bb5 unwind label %cleanup1

bb24:                                             ; preds = %bb23
  %_52 = sext i32 %_54.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE"(ptr align 8 %lps, i64 %_52, ptr align 8 @alloc_fd2faa64d19adc0e884b8094fad42c07)
          to label %bb25 unwind label %cleanup1

panic:                                            ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5ea21c4cc48bedc55ccb39561767deec) #24
          to label %unreachable unwind label %cleanup1

bb35:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7dc60b80a138d2eaE"(ptr align 8 %lps) #22
          to label %bb36 unwind label %terminate

cleanup1:                                         ; preds = %panic7, %bb13, %panic6, %bb18, %panic5, %panic4, %bb20, %bb10, %bb9, %bb8, %bb7, %bb6, %bb5, %bb4, %panic3, %panic2, %bb24, %panic
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb35

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb25:                                             ; preds = %bb24
  %res = load i32, ptr %_50, align 4
  br label %bb26

bb26:                                             ; preds = %bb25
  %_59 = icmp eq i32 %n, -2147483648
  %_60 = and i1 false, %_59
  br i1 %_60, label %panic2, label %bb27

bb27:                                             ; preds = %bb26
  %_56 = sdiv i32 %n, 2
  %_55 = icmp sgt i32 %res, %_56
  br i1 %_55, label %bb28, label %bb31

panic2:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_a76af4c806f1061f62eba0a4675be9ff) #24
          to label %unreachable unwind label %cleanup1

bb31:                                             ; preds = %bb27
  store i32 %res, ptr %_0, align 4
  br label %bb32

bb28:                                             ; preds = %bb27
  br label %bb29

bb32:                                             ; preds = %bb30, %bb31
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7dc60b80a138d2eaE"(ptr align 8 %lps)
          to label %bb33 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_63 = icmp eq i32 %n, -2147483648
  %_64 = and i1 false, %_63
  br i1 %_64, label %panic3, label %bb30

bb30:                                             ; preds = %bb29
  %11 = sdiv i32 %n, 2
  store i32 %11, ptr %_0, align 4
  br label %bb32

panic3:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_f760bce29e742511758d6740e858dfb7) #24
          to label %unreachable unwind label %cleanup1

bb33:                                             ; preds = %bb32
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h04bbe786de44b4f6E"(ptr align 8 %s)
  %12 = load i32, ptr %_0, align 4
  ret i32 %12

bb5:                                              ; preds = %bb4
  %_16.0 = extractvalue { ptr, i64 } %6, 0
  %_16.1 = extractvalue { ptr, i64 } %6, 1
; invoke core::str::<impl str>::chars
  %13 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h29a6264dda9fb1dfE"(ptr align 1 %_16.0, i64 %_16.1)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  %14 = extractvalue { ptr, ptr } %13, 0
  %15 = extractvalue { ptr, ptr } %13, 1
  store ptr %14, ptr %_15, align 8
  %16 = getelementptr inbounds i8, ptr %_15, i64 8
  store ptr %15, ptr %16, align 8
  %_19 = load i32, ptr %i, align 4
  %_18 = sext i32 %_19 to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %17 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb5e69be51cd83c91E(ptr align 8 %_15, i64 %_18)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  store i32 %17, ptr %_13, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %18 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h237cd9bb18bed441E"(ptr align 8 %s)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  %_24.0 = extractvalue { ptr, i64 } %18, 0
  %_24.1 = extractvalue { ptr, i64 } %18, 1
; invoke core::str::<impl str>::chars
  %19 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h29a6264dda9fb1dfE"(ptr align 1 %_24.0, i64 %_24.1)
          to label %bb9 unwind label %cleanup1

bb9:                                              ; preds = %bb8
  %20 = extractvalue { ptr, ptr } %19, 0
  %21 = extractvalue { ptr, ptr } %19, 1
  store ptr %20, ptr %_23, align 8
  %22 = getelementptr inbounds i8, ptr %_23, i64 8
  store ptr %21, ptr %22, align 8
  %_27 = load i32, ptr %len, align 4
  %_26 = sext i32 %_27 to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %23 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb5e69be51cd83c91E(ptr align 8 %_23, i64 %_26)
          to label %bb10 unwind label %cleanup1

bb10:                                             ; preds = %bb9
  store i32 %23, ptr %_21, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_11 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdbd0b977407ad7eeE"(ptr align 4 %_13, ptr align 4 %_21)
          to label %bb11 unwind label %cleanup1

bb11:                                             ; preds = %bb10
  br i1 %_11, label %bb12, label %bb16

bb16:                                             ; preds = %bb11
  %_36 = load i32, ptr %len, align 4
  %_35 = icmp ne i32 %_36, 0
  br i1 %_35, label %bb17, label %bb20

bb12:                                             ; preds = %bb11
  %24 = load i32, ptr %len, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %_28.0 = extractvalue { i32, i1 } %25, 0
  %_28.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_28.1, label %panic6, label %bb13

bb20:                                             ; preds = %bb16
  %_47 = load i32, ptr %i, align 4
  %_46 = sext i32 %_47 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_44 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E"(ptr align 8 %lps, i64 %_46, ptr align 8 @alloc_ed5c9eb177a539d661a7c5b60c424303)
          to label %bb21 unwind label %cleanup1

bb17:                                             ; preds = %bb16
  %_42 = load i32, ptr %len, align 4
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_42, i32 1)
  %_43.0 = extractvalue { i32, i1 } %26, 0
  %_43.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_43.1, label %panic5, label %bb18

bb21:                                             ; preds = %bb20
  store i32 0, ptr %_44, align 4
  %27 = load i32, ptr %i, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1)
  %_48.0 = extractvalue { i32, i1 } %28, 0
  %_48.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_48.1, label %panic4, label %bb22

bb22:                                             ; preds = %bb21
  store i32 %_48.0, ptr %i, align 4
  br label %bb3

panic4:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_283f1a64c1deedcffea71ce61f6a38ae) #24
          to label %unreachable unwind label %cleanup1

bb18:                                             ; preds = %bb17
  %_40 = sext i32 %_43.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc274b1cae9e1e76aE"(ptr align 8 %lps, i64 %_40, ptr align 8 @alloc_72ab731c9e7f3bca5a87868e9a8591c3)
          to label %bb19 unwind label %cleanup1

panic5:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_17485607b211c3384e99418b726a7182) #24
          to label %unreachable unwind label %cleanup1

bb19:                                             ; preds = %bb18
  %_37 = load i32, ptr %_38, align 4
  store i32 %_37, ptr %len, align 4
  br label %bb3

bb13:                                             ; preds = %bb12
  store i32 %_28.0, ptr %len, align 4
  %_29 = load i32, ptr %len, align 4
  %_33 = load i32, ptr %i, align 4
  %_32 = sext i32 %_33 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_30 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfeb0a21c955991c8E"(ptr align 8 %lps, i64 %_32, ptr align 8 @alloc_b0665e2c652c126cce50a4f75b1f7667)
          to label %bb14 unwind label %cleanup1

panic6:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d32a923beb5bb12b1923b99d5b2c5ddc) #24
          to label %unreachable unwind label %cleanup1

bb14:                                             ; preds = %bb13
  store i32 %_29, ptr %_30, align 4
  %29 = load i32, ptr %i, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %_34.0 = extractvalue { i32, i1 } %30, 0
  %_34.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_34.1, label %panic7, label %bb15

bb15:                                             ; preds = %bb14
  store i32 %_34.0, ptr %i, align 4
  br label %bb3

panic7:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_444ee88e4852bddd96d54485c0e35700) #24
          to label %unreachable unwind label %cleanup1

terminate:                                        ; preds = %bb36, %bb35
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb37:                                             ; preds = %bb36
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8
  %35 = insertvalue { ptr, i32 } poison, ptr %32, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}
