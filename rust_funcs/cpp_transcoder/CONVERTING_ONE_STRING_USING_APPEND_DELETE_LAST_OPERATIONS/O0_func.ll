define i32 @f_gold(ptr align 8 %str1, ptr align 8 %str2, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_35 = alloca [16 x i8], align 8
  %_33 = alloca [4 x i8], align 4
  %_29 = alloca [16 x i8], align 8
  %_27 = alloca [4 x i8], align 4
  %_21 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %common_length = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %_6 = invoke i64 @_ZN5alloc6string6String3len17hbfec69efc8e50717E(ptr align 8 %str1)
          to label %bb1 unwind label %cleanup

bb38:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35bc4eb570d8014dE"(ptr align 8 %str2) #21
          to label %bb39 unwind label %terminate

cleanup:                                          ; preds = %panic7, %panic5, %panic4, %panic3, %panic2, %bb25, %panic1, %bb23, %bb19, %bb18, %bb17, %bb16, %bb15, %bb14, %bb13, %bb10, %bb8, %bb7, %bb6, %bb5, %panic, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb38

bb1:                                              ; preds = %start
; invoke alloc::string::String::len
  %_8 = invoke i64 @_ZN5alloc6string6String3len17hbfec69efc8e50717E(ptr align 8 %str2)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_10.0 = add i64 %_6, %_8
  %_10.1 = icmp ult i64 %_10.0, %_6
  br i1 %_10.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %_11 = sext i32 %k to i64
  %_4 = icmp ult i64 %_10.0, %_11
  br i1 %_4, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_13525a9ca211708ae5b5d7a62cbf8d96) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb5:                                              ; preds = %bb3
  store i32 0, ptr %common_length, align 4
; invoke alloc::string::String::len
  %_14 = invoke i64 @_ZN5alloc6string6String3len17hbfec69efc8e50717E(ptr align 8 %str1)
          to label %bb6 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_0, align 4
  br label %bb35

bb6:                                              ; preds = %bb5
; invoke alloc::string::String::len
  %_16 = invoke i64 @_ZN5alloc6string6String3len17hbfec69efc8e50717E(ptr align 8 %str2)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
; invoke core::cmp::Ord::min
  %min_len = invoke i64 @_ZN4core3cmp3Ord3min17heae2e18e708a6794E(i64 %_14, i64 %_16)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he6c7f3f833643b22E"(i64 0, i64 %min_len)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %_18.0 = extractvalue { i64, i64 } %5, 0
  %_18.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_18.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_18.1, ptr %6, align 8
  br label %bb10

bb10:                                             ; preds = %bb22, %bb9
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb2eea2a3ccb7c9a7E"(ptr align 8 %iter)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_21, align 8
  %10 = getelementptr inbounds i8, ptr %_21, i64 8
  store i64 %9, ptr %10, align 8
  %_23 = load i64, ptr %_21, align 8
  %11 = getelementptr inbounds i8, ptr %_21, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_23 to i1
  br i1 %13, label %bb13, label %bb23

bb13:                                             ; preds = %bb11
  %14 = getelementptr inbounds i8, ptr %_21, i64 8
  %i = load i64, ptr %14, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17he70c267fd3f448baE"(ptr align 8 %str1)
          to label %bb14 unwind label %cleanup

bb23:                                             ; preds = %bb20, %bb11
; invoke alloc::string::String::len
  %_45 = invoke i64 @_ZN5alloc6string6String3len17hbfec69efc8e50717E(ptr align 8 %str1)
          to label %bb24 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_30.0 = extractvalue { ptr, i64 } %15, 0
  %_30.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %16 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hde1bb0daf1d0d0d0E"(ptr align 1 %_30.0, i64 %_30.1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %17 = extractvalue { ptr, ptr } %16, 0
  %18 = extractvalue { ptr, ptr } %16, 1
  store ptr %17, ptr %_29, align 8
  %19 = getelementptr inbounds i8, ptr %_29, i64 8
  store ptr %18, ptr %19, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %20 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h113b46939a86b73aE(ptr align 8 %_29, i64 %i)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  store i32 %20, ptr %_27, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %21 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17he70c267fd3f448baE"(ptr align 8 %str2)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_36.0 = extractvalue { ptr, i64 } %21, 0
  %_36.1 = extractvalue { ptr, i64 } %21, 1
; invoke core::str::<impl str>::chars
  %22 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hde1bb0daf1d0d0d0E"(ptr align 1 %_36.0, i64 %_36.1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %23 = extractvalue { ptr, ptr } %22, 0
  %24 = extractvalue { ptr, ptr } %22, 1
  store ptr %23, ptr %_35, align 8
  %25 = getelementptr inbounds i8, ptr %_35, i64 8
  store ptr %24, ptr %25, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %26 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h113b46939a86b73aE(ptr align 8 %_35, i64 %i)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i32 %26, ptr %_33, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_25 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h869d9ae51bac05b8E"(ptr align 4 %_27, ptr align 4 %_33)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  br i1 %_25, label %bb21, label %bb23

bb21:                                             ; preds = %bb20
  %27 = load i32, ptr %common_length, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1)
  %_38.0 = extractvalue { i32, i1 } %28, 0
  %_38.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_38.1, label %panic7, label %bb22

bb24:                                             ; preds = %bb23
  %_44 = trunc i64 %_45 to i32
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 %_44)
  %_47.0 = extractvalue { i32, i1 } %29, 0
  %_47.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_47.1, label %panic1, label %bb25

bb25:                                             ; preds = %bb24
; invoke alloc::string::String::len
  %_49 = invoke i64 @_ZN5alloc6string6String3len17hbfec69efc8e50717E(ptr align 8 %str2)
          to label %bb26 unwind label %cleanup

panic1:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f271896071f8e32c073d130a0bcd53cb) #23
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_48 = trunc i64 %_49 to i32
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_47.0, i32 %_48)
  %_51.0 = extractvalue { i32, i1 } %30, 0
  %_51.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_51.1, label %panic2, label %bb27

bb27:                                             ; preds = %bb26
  %_53 = load i32, ptr %common_length, align 4
  %31 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_53)
  %_54.0 = extractvalue { i32, i1 } %31, 0
  %_54.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_54.1, label %panic3, label %bb28

panic2:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f271896071f8e32c073d130a0bcd53cb) #23
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_51.0, i32 %_54.0)
  %_55.0 = extractvalue { i32, i1 } %32, 0
  %_55.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_55.1, label %panic4, label %bb29

panic3:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_9360eebcb6767b5bde7877d48618e855) #23
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  br label %bb30

panic4:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3475b19644612ce3765feb0c0965aeb3) #23
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_58 = icmp eq i32 %_55.0, -2147483648
  %_59 = and i1 false, %_58
  br i1 %_59, label %panic5, label %bb31

bb31:                                             ; preds = %bb30
  %_40 = srem i32 %_55.0, 2
  %_39 = icmp eq i32 %_40, 0
  br i1 %_39, label %bb32, label %bb33

panic5:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_3475b19644612ce3765feb0c0965aeb3) #23
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb31
  store i32 0, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35bc4eb570d8014dE"(ptr align 8 %str2)
          to label %bb34 unwind label %cleanup6

bb32:                                             ; preds = %bb31
  store i32 1, ptr %_0, align 4
  br label %bb35

bb39:                                             ; preds = %bb38, %cleanup6
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35bc4eb570d8014dE"(ptr align 8 %str1) #21
          to label %bb40 unwind label %terminate

cleanup6:                                         ; preds = %bb35, %bb33
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = extractvalue { ptr, i32 } %33, 1
  store ptr %34, ptr %0, align 8
  %36 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %35, ptr %36, align 8
  br label %bb39

bb34:                                             ; preds = %bb33
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35bc4eb570d8014dE"(ptr align 8 %str1)
  br label %bb37

bb37:                                             ; preds = %bb36, %bb34
  %37 = load i32, ptr %_0, align 4
  ret i32 %37

bb35:                                             ; preds = %bb4, %bb32
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35bc4eb570d8014dE"(ptr align 8 %str2)
          to label %bb36 unwind label %cleanup6

bb22:                                             ; preds = %bb21
  store i32 %_38.0, ptr %common_length, align 4
  br label %bb10

panic7:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f4d7983553ac48bf24532ceb4b5ed4b5) #23
          to label %unreachable unwind label %cleanup

bb12:                                             ; No predecessors!
  unreachable

bb36:                                             ; preds = %bb35
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35bc4eb570d8014dE"(ptr align 8 %str1)
  br label %bb37

terminate:                                        ; preds = %bb39, %bb38
  %38 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb40:                                             ; preds = %bb39
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds i8, ptr %0, i64 8
  %41 = load i32, ptr %40, align 8
  %42 = insertvalue { ptr, i32 } poison, ptr %39, 0
  %43 = insertvalue { ptr, i32 } %42, i32 %41, 1
  resume { ptr, i32 } %43
}
