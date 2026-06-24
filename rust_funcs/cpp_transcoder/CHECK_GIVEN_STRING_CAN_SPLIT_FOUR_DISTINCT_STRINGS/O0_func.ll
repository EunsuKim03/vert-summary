define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %s4 = alloca [16 x i8], align 8
  %s3 = alloca [16 x i8], align 8
  %s2 = alloca [16 x i8], align 8
  %s1 = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %_3 = invoke i64 @_ZN5alloc6string6String3len17ha21c3ca336ad96adE(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb42:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7865312a56f42f72E"(ptr align 8 %s) #22
          to label %bb43 unwind label %terminate

cleanup:                                          ; preds = %bb37, %bb35, %bb33, %bb31, %bb29, %bb27, %bb26, %bb25, %bb24, %bb23, %bb22, %bb20, %bb18, %bb17, %panic3, %bb14, %bb12, %bb11, %panic, %bb6, %bb4, %bb3, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb42

bb1:                                              ; preds = %start
  %_2 = icmp uge i64 %_3, 10
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
; invoke alloc::string::String::len
  %_7 = invoke i64 @_ZN5alloc6string6String3len17ha21c3ca336ad96adE(ptr align 8 %s)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i32 1, ptr %_0, align 4
  br label %bb40

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf2a924e7beded188E"(i64 1, i64 %_7)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %_5.0 = extractvalue { i64, i64 } %5, 0
  %_5.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_5.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %6, align 8
  br label %bb6

bb6:                                              ; preds = %bb15, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4e9224c630258f63E"(ptr align 8 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_10, align 8
  %10 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %9, ptr %10, align 8
  %_12 = load i64, ptr %_10, align 8
  %11 = getelementptr inbounds i8, ptr %_10, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_12 to i1
  br i1 %13, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %14 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %14, align 8
  %_17.0 = add i64 %i, 1
  %_17.1 = icmp ult i64 %_17.0, %i
  br i1 %_17.1, label %panic, label %bb11

bb10:                                             ; preds = %bb7
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7865312a56f42f72E"(ptr align 8 %s)
  br label %bb41

bb41:                                             ; preds = %bb40, %bb10
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb11:                                             ; preds = %bb9
; invoke alloc::string::String::len
  %_18 = invoke i64 @_ZN5alloc6string6String3len17ha21c3ca336ad96adE(ptr align 8 %s)
          to label %bb12 unwind label %cleanup

panic:                                            ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_550ee63b4c95730b7f7138085904aa7c) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic
  unreachable

bb12:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf2a924e7beded188E"(i64 %_17.0, i64 %_18)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_14.0 = extractvalue { i64, i64 } %16, 0
  %_14.1 = extractvalue { i64, i64 } %16, 1
  store i64 %_14.0, ptr %iter1, align 8
  %17 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_14.1, ptr %17, align 8
  br label %bb14

bb14:                                             ; preds = %bb21, %bb13
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4e9224c630258f63E"(ptr align 8 %iter1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  store i64 %19, ptr %_21, align 8
  %21 = getelementptr inbounds i8, ptr %_21, i64 8
  store i64 %20, ptr %21, align 8
  %_23 = load i64, ptr %_21, align 8
  %22 = getelementptr inbounds i8, ptr %_21, i64 8
  %23 = load i64, ptr %22, align 8
  %24 = trunc nuw i64 %_23 to i1
  br i1 %24, label %bb16, label %bb6

bb16:                                             ; preds = %bb15
  %25 = getelementptr inbounds i8, ptr %_21, i64 8
  %j = load i64, ptr %25, align 8
  %_28.0 = add i64 %j, 1
  %_28.1 = icmp ult i64 %_28.0, %j
  br i1 %_28.1, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
; invoke alloc::string::String::len
  %_29 = invoke i64 @_ZN5alloc6string6String3len17ha21c3ca336ad96adE(ptr align 8 %s)
          to label %bb18 unwind label %cleanup

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_249c88c303703da831af45650d6ce690) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %26 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf2a924e7beded188E"(i64 %_28.0, i64 %_29)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_25.0 = extractvalue { i64, i64 } %26, 0
  %_25.1 = extractvalue { i64, i64 } %26, 1
  store i64 %_25.0, ptr %iter2, align 8
  %27 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_25.1, ptr %27, align 8
  br label %bb20

bb20:                                             ; preds = %bb38, %bb36, %bb34, %bb32, %bb30, %bb28, %bb19
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %28 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4e9224c630258f63E"(ptr align 8 %iter2)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %29 = extractvalue { i64, i64 } %28, 0
  %30 = extractvalue { i64, i64 } %28, 1
  store i64 %29, ptr %_32, align 8
  %31 = getelementptr inbounds i8, ptr %_32, i64 8
  store i64 %30, ptr %31, align 8
  %_34 = load i64, ptr %_32, align 8
  %32 = getelementptr inbounds i8, ptr %_32, i64 8
  %33 = load i64, ptr %32, align 8
  %34 = trunc nuw i64 %_34 to i1
  br i1 %34, label %bb22, label %bb14

bb22:                                             ; preds = %bb21
  %35 = getelementptr inbounds i8, ptr %_32, i64 8
  %k = load i64, ptr %35, align 8
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %36 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E"(ptr align 8 %s, i64 0, i64 %i, ptr align 8 @alloc_ab112f6bb78c713670e154c9f09efd29)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_37.0 = extractvalue { ptr, i64 } %36, 0
  %_37.1 = extractvalue { ptr, i64 } %36, 1
  store ptr %_37.0, ptr %s1, align 8
  %37 = getelementptr inbounds i8, ptr %s1, i64 8
  store i64 %_37.1, ptr %37, align 8
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %38 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E"(ptr align 8 %s, i64 %i, i64 %j, ptr align 8 @alloc_77249349fcd20cd8e1708e5536e781c6)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_41.0 = extractvalue { ptr, i64 } %38, 0
  %_41.1 = extractvalue { ptr, i64 } %38, 1
  store ptr %_41.0, ptr %s2, align 8
  %39 = getelementptr inbounds i8, ptr %s2, i64 8
  store i64 %_41.1, ptr %39, align 8
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %40 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E"(ptr align 8 %s, i64 %j, i64 %k, ptr align 8 @alloc_b2ee79cacfe2ec25045bf0b72381bf4b)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_45.0 = extractvalue { ptr, i64 } %40, 0
  %_45.1 = extractvalue { ptr, i64 } %40, 1
  store ptr %_45.0, ptr %s3, align 8
  %41 = getelementptr inbounds i8, ptr %s3, i64 8
  store i64 %_45.1, ptr %41, align 8
; invoke alloc::string::String::len
  %_52 = invoke i64 @_ZN5alloc6string6String3len17ha21c3ca336ad96adE(ptr align 8 %s)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %42 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E"(ptr align 8 %s, i64 %k, i64 %_52, ptr align 8 @alloc_dbaea0828119170b70d6eb0bb5cf50e1)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_49.0 = extractvalue { ptr, i64 } %42, 0
  %_49.1 = extractvalue { ptr, i64 } %42, 1
  store ptr %_49.0, ptr %s4, align 8
  %43 = getelementptr inbounds i8, ptr %s4, i64 8
  store i64 %_49.1, ptr %43, align 8
; invoke core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::ne
  %_54 = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h8988c4e4750acf89E"(ptr align 8 %s1, ptr align 8 %s2)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  br i1 %_54, label %bb29, label %bb20

bb29:                                             ; preds = %bb28
; invoke core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::ne
  %_57 = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h8988c4e4750acf89E"(ptr align 8 %s1, ptr align 8 %s3)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb29
  br i1 %_57, label %bb31, label %bb20

bb31:                                             ; preds = %bb30
; invoke core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::ne
  %_60 = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h8988c4e4750acf89E"(ptr align 8 %s1, ptr align 8 %s4)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb31
  br i1 %_60, label %bb33, label %bb20

bb33:                                             ; preds = %bb32
; invoke core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::ne
  %_63 = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h8988c4e4750acf89E"(ptr align 8 %s2, ptr align 8 %s3)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  br i1 %_63, label %bb35, label %bb20

bb35:                                             ; preds = %bb34
; invoke core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::ne
  %_66 = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h8988c4e4750acf89E"(ptr align 8 %s2, ptr align 8 %s4)
          to label %bb36 unwind label %cleanup

bb36:                                             ; preds = %bb35
  br i1 %_66, label %bb37, label %bb20

bb37:                                             ; preds = %bb36
; invoke core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::ne
  %_69 = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17h8988c4e4750acf89E"(ptr align 8 %s3, ptr align 8 %s4)
          to label %bb38 unwind label %cleanup

bb38:                                             ; preds = %bb37
  br i1 %_69, label %bb39, label %bb20

bb39:                                             ; preds = %bb38
  store i32 1, ptr %_0, align 4
  br label %bb40

bb40:                                             ; preds = %bb2, %bb39
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7865312a56f42f72E"(ptr align 8 %s)
  br label %bb41

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb42
  %44 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb43:                                             ; preds = %bb42
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds i8, ptr %0, i64 8
  %47 = load i32, ptr %46, align 8
  %48 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %49 = insertvalue { ptr, i32 } %48, i32 %47, 1
  resume { ptr, i32 } %49
}
