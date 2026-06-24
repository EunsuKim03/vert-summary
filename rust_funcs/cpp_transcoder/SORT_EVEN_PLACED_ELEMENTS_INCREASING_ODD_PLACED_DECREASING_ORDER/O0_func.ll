define void @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_61 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %_44 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %odd_arr = alloca [24 x i8], align 8
  %even_arr = alloca [24 x i8], align 8
; call alloc::vec::Vec<T>::new
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h24369e6265af6335E"(ptr sret([24 x i8]) align 8 %even_arr) #20
; invoke alloc::vec::Vec<T>::new
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h24369e6265af6335E"(ptr sret([24 x i8]) align 8 %odd_arr)
          to label %bb2 unwind label %cleanup

bb40:                                             ; preds = %bb39, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"(ptr align 8 %even_arr) #21
          to label %bb41 unwind label %terminate

cleanup:                                          ; preds = %bb33, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb40

bb2:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h50a3df3cf3b3118bE"(i32 0, i32 %n)
          to label %bb3 unwind label %cleanup3

bb39:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"(ptr align 8 %odd_arr) #21
          to label %bb40 unwind label %terminate

cleanup3:                                         ; preds = %bb12, %panic11, %bb14, %panic10, %panic9, %panic7, %panic6, %bb23, %panic4, %panic, %bb32, %bb30, %bb28, %bb24, %bb21, %bb19, %bb18, %bb17, %bb16, %bb15, %bb8, %bb4, %bb2
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb39

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i32, i32 } %5, 0
  %_5.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_5.0, ptr %iter, align 4
  %10 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %10, align 4
  br label %bb4

bb4:                                              ; preds = %bb42, %bb43, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h8c3a346998798e87E"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup3

bb5:                                              ; preds = %bb4
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_8, align 4
  %14 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_8, align 4
  %16 = getelementptr inbounds i8, ptr %_8, i64 4
  %17 = load i32, ptr %16, align 4
  %_10 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_10 to i1
  br i1 %18, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %19 = getelementptr inbounds i8, ptr %_8, i64 4
  %i8 = load i32, ptr %19, align 4
  br label %bb9

bb8:                                              ; preds = %bb5
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %20 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h04920c1c41c1477bE"(ptr align 8 %even_arr)
          to label %bb15 unwind label %cleanup3

bb15:                                             ; preds = %bb8
  %_33.0 = extractvalue { ptr, i64 } %20, 0
  %_33.1 = extractvalue { ptr, i64 } %20, 1
; invoke alloc::slice::<impl [T]>::sort
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E"(ptr align 4 %_33.0, i64 %_33.1)
          to label %bb16 unwind label %cleanup3

bb16:                                             ; preds = %bb15
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %21 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h04920c1c41c1477bE"(ptr align 8 %odd_arr)
          to label %bb17 unwind label %cleanup3

bb17:                                             ; preds = %bb16
  %_36.0 = extractvalue { ptr, i64 } %21, 0
  %_36.1 = extractvalue { ptr, i64 } %21, 1
; invoke alloc::slice::<impl [T]>::sort_by
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E"(ptr align 4 %_36.0, i64 %_36.1)
          to label %bb18 unwind label %cleanup3

bb18:                                             ; preds = %bb17
  store i64 0, ptr %i, align 8
; invoke alloc::vec::Vec<T,A>::len
  %_41 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h046b8e30e366d14aE"(ptr align 8 %even_arr)
          to label %bb19 unwind label %cleanup3

bb19:                                             ; preds = %bb18
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %22 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h22576ad1fbda949fE"(i64 0, i64 %_41)
          to label %bb20 unwind label %cleanup3

bb20:                                             ; preds = %bb19
  %_39.0 = extractvalue { i64, i64 } %22, 0
  %_39.1 = extractvalue { i64, i64 } %22, 1
  store i64 %_39.0, ptr %iter1, align 8
  %23 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_39.1, ptr %23, align 8
  br label %bb21

bb21:                                             ; preds = %bb27, %bb20
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %24 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h856574d64f6ae49bE"(ptr align 8 %iter1)
          to label %bb22 unwind label %cleanup3

bb22:                                             ; preds = %bb21
  %25 = extractvalue { i64, i64 } %24, 0
  %26 = extractvalue { i64, i64 } %24, 1
  store i64 %25, ptr %_44, align 8
  %27 = getelementptr inbounds i8, ptr %_44, i64 8
  store i64 %26, ptr %27, align 8
  %_46 = load i64, ptr %_44, align 8
  %28 = getelementptr inbounds i8, ptr %_44, i64 8
  %29 = load i64, ptr %28, align 8
  %30 = trunc nuw i64 %_46 to i1
  br i1 %30, label %bb23, label %bb24

bb23:                                             ; preds = %bb22
  %31 = getelementptr inbounds i8, ptr %_44, i64 8
  %j5 = load i64, ptr %31, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E"(ptr align 8 %even_arr, i64 %j5, ptr align 8 @alloc_5082f74f0b48eb6cd278134abd499d62)
          to label %bb25 unwind label %cleanup3

bb24:                                             ; preds = %bb22
; invoke alloc::vec::Vec<T,A>::len
  %_58 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h046b8e30e366d14aE"(ptr align 8 %odd_arr)
          to label %bb28 unwind label %cleanup3

bb28:                                             ; preds = %bb24
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %32 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h22576ad1fbda949fE"(i64 0, i64 %_58)
          to label %bb29 unwind label %cleanup3

bb29:                                             ; preds = %bb28
  %_56.0 = extractvalue { i64, i64 } %32, 0
  %_56.1 = extractvalue { i64, i64 } %32, 1
  store i64 %_56.0, ptr %iter2, align 8
  %33 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_56.1, ptr %33, align 8
  br label %bb30

bb30:                                             ; preds = %bb36, %bb29
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %34 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h856574d64f6ae49bE"(ptr align 8 %iter2)
          to label %bb31 unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %35 = extractvalue { i64, i64 } %34, 0
  %36 = extractvalue { i64, i64 } %34, 1
  store i64 %35, ptr %_61, align 8
  %37 = getelementptr inbounds i8, ptr %_61, i64 8
  store i64 %36, ptr %37, align 8
  %_63 = load i64, ptr %_61, align 8
  %38 = getelementptr inbounds i8, ptr %_61, i64 8
  %39 = load i64, ptr %38, align 8
  %40 = trunc nuw i64 %_63 to i1
  br i1 %40, label %bb32, label %bb33

bb32:                                             ; preds = %bb31
  %41 = getelementptr inbounds i8, ptr %_61, i64 8
  %j = load i64, ptr %41, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E"(ptr align 8 %odd_arr, i64 %j, ptr align 8 @alloc_608d248606dad3afac8f66e6d2f1d838)
          to label %bb34 unwind label %cleanup3

bb33:                                             ; preds = %bb31
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"(ptr align 8 %odd_arr)
          to label %bb37 unwind label %cleanup

bb37:                                             ; preds = %bb33
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"(ptr align 8 %even_arr)
  ret void

bb34:                                             ; preds = %bb32
  %_65 = load i32, ptr %_66, align 4
  %_68 = load i64, ptr %i, align 8
  %_71 = icmp ult i64 %_68, %arr.1
  br i1 %_71, label %bb35, label %panic

bb35:                                             ; preds = %bb34
  %42 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_68
  store i32 %_65, ptr %42, align 4
  %43 = load i64, ptr %i, align 8
  %_72.0 = add i64 %43, 1
  %_72.1 = icmp ult i64 %_72.0, %43
  br i1 %_72.1, label %panic4, label %bb36

panic:                                            ; preds = %bb34
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_68, i64 %arr.1, ptr align 8 @alloc_8ff914f1831e33925cf29190c60b0739) #23
          to label %unreachable unwind label %cleanup3

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic7, %panic6, %panic4, %panic
  unreachable

bb36:                                             ; preds = %bb35
  store i64 %_72.0, ptr %i, align 8
  br label %bb30

panic4:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_eb3f6004f4a058d214a0c395160db494) #23
          to label %unreachable unwind label %cleanup3

bb25:                                             ; preds = %bb23
  %_48 = load i32, ptr %_49, align 4
  %_51 = load i64, ptr %i, align 8
  %_54 = icmp ult i64 %_51, %arr.1
  br i1 %_54, label %bb26, label %panic6

bb26:                                             ; preds = %bb25
  %44 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_51
  store i32 %_48, ptr %44, align 4
  %45 = load i64, ptr %i, align 8
  %_55.0 = add i64 %45, 1
  %_55.1 = icmp ult i64 %_55.0, %45
  br i1 %_55.1, label %panic7, label %bb27

panic6:                                           ; preds = %bb25
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_51, i64 %arr.1, ptr align 8 @alloc_743f2cefaccb6d94c89870124217d1ff) #23
          to label %unreachable unwind label %cleanup3

bb27:                                             ; preds = %bb26
  store i64 %_55.0, ptr %i, align 8
  br label %bb21

panic7:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0ed764715c237a3e317af47ea707f8a5) #23
          to label %unreachable unwind label %cleanup3

bb9:                                              ; preds = %bb7
  %_16 = icmp eq i32 %i8, -2147483648
  %_17 = and i1 false, %_16
  br i1 %_17, label %panic9, label %bb10

bb10:                                             ; preds = %bb9
  %_13 = srem i32 %i8, 2
  %_12 = icmp eq i32 %_13, 0
  br i1 %_12, label %bb11, label %bb13

panic9:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_ec1925dceda20628d1b22a9132712664) #23
          to label %unreachable unwind label %cleanup3

bb13:                                             ; preds = %bb10
  %_28 = sext i32 %i8 to i64
  %_31 = icmp ult i64 %_28, %arr.1
  br i1 %_31, label %bb14, label %panic10

bb11:                                             ; preds = %bb10
  %_21 = sext i32 %i8 to i64
  %_24 = icmp ult i64 %_21, %arr.1
  br i1 %_24, label %bb12, label %panic11

bb14:                                             ; preds = %bb13
  %46 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_28
  %_27 = load i32, ptr %46, align 4
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E"(ptr align 8 %odd_arr, i32 %_27)
          to label %bb43 unwind label %cleanup3

panic10:                                          ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28, i64 %arr.1, ptr align 8 @alloc_e63ffa31ad6e0404fd60d280d854c254) #23
          to label %unreachable unwind label %cleanup3

bb43:                                             ; preds = %bb14
  br label %bb4

bb12:                                             ; preds = %bb11
  %47 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_21
  %_20 = load i32, ptr %47, align 4
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E"(ptr align 8 %even_arr, i32 %_20)
          to label %bb42 unwind label %cleanup3

panic11:                                          ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 %arr.1, ptr align 8 @alloc_82fa06a248ba2287581da2665aa4e248) #23
          to label %unreachable unwind label %cleanup3

bb42:                                             ; preds = %bb12
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb40, %bb39
  %48 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb41:                                             ; preds = %bb40
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds i8, ptr %0, i64 8
  %51 = load i32, ptr %50, align 8
  %52 = insertvalue { ptr, i32 } poison, ptr %49, 0
  %53 = insertvalue { ptr, i32 } %52, i32 %51, 1
  resume { ptr, i32 } %53
}
