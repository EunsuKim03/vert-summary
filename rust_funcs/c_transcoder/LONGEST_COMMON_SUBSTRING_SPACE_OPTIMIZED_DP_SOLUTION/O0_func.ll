define i32 @f_gold(ptr align 8 %X, ptr align 8 %Y) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_21 = alloca [24 x i8], align 8
  %_20 = alloca [24 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_14 = alloca [24 x i8], align 8
  %_13 = alloca [24 x i8], align 8
  %_10 = alloca [24 x i8], align 8
  %len = alloca [24 x i8], align 8
  %curr_row = alloca [8 x i8], align 8
  %result = alloca [4 x i8], align 4
; invoke alloc::vec::Vec<T,A>::len
  %m = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hc836174d853cb3efE"(ptr align 8 %X)
          to label %bb1 unwind label %cleanup

bb47:                                             ; preds = %bb46, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<char>>
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h9d117c0ebf1b742cE"(ptr align 8 %Y) #22
          to label %bb48 unwind label %terminate

cleanup:                                          ; preds = %bb12, %bb4, %bb3, %panic, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb47

bb1:                                              ; preds = %start
; invoke alloc::vec::Vec<T,A>::len
  %n = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hc836174d853cb3efE"(ptr align 8 %Y)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i32 0, ptr %result, align 4
  store i64 0, ptr %curr_row, align 8
  %_12.0 = add i64 %n, 1
  %_12.1 = icmp ult i64 %_12.0, %n
  br i1 %_12.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h4d157bf51e33a144E(ptr sret([24 x i8]) align 8 %_10, i32 0, i64 %_12.0)
          to label %bb4 unwind label %cleanup

panic:                                            ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c1a4ca49d58346f80cead5318507ed26) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb4:                                              ; preds = %bb3
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hef5423b033b2a8b8E(ptr sret([24 x i8]) align 8 %len, ptr align 8 %_10, i64 2)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h8b5893a4a59e2753E"(ptr sret([24 x i8]) align 8 %_14, i64 0, i64 %m)
          to label %bb6 unwind label %cleanup2

bb46:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h35fa1469dee8cf96E"(ptr align 8 %len) #22
          to label %bb47 unwind label %terminate

cleanup2:                                         ; preds = %bb21, %bb20, %bb37, %bb36, %bb35, %bb34, %bb33, %panic9, %bb31, %panic8, %bb29, %panic7, %bb40, %bb39, %bb26, %panic6, %bb24, %panic5, %panic4, %bb15, %bb13, %bb11, %bb8, %bb6, %bb5
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb46

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbf31c6dbe8fbe4f6E"(ptr sret([24 x i8]) align 8 %_13, ptr align 8 %_14)
          to label %bb7 unwind label %cleanup2

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_13, i64 24, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb42, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %9 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h7c8d04056577af43E"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup2

bb9:                                              ; preds = %bb8
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_16, align 8
  %12 = getelementptr inbounds i8, ptr %_16, i64 8
  store i64 %11, ptr %12, align 8
  %_18 = load i64, ptr %_16, align 8
  %13 = getelementptr inbounds i8, ptr %_16, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_18 to i1
  br i1 %15, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %16 = getelementptr inbounds i8, ptr %_16, i64 8
  %i = load i64, ptr %16, align 8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h8b5893a4a59e2753E"(ptr sret([24 x i8]) align 8 %_21, i64 0, i64 %n)
          to label %bb13 unwind label %cleanup2

bb12:                                             ; preds = %bb9
  %_0 = load i32, ptr %result, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h35fa1469dee8cf96E"(ptr align 8 %len)
          to label %bb43 unwind label %cleanup

bb43:                                             ; preds = %bb12
; invoke core::ptr::drop_in_place<alloc::vec::Vec<char>>
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h9d117c0ebf1b742cE"(ptr align 8 %Y)
          to label %bb44 unwind label %cleanup3

bb48:                                             ; preds = %bb47, %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<char>>
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h9d117c0ebf1b742cE"(ptr align 8 %X) #22
          to label %bb49 unwind label %terminate

cleanup3:                                         ; preds = %bb43
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = extractvalue { ptr, i32 } %17, 1
  store ptr %18, ptr %0, align 8
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %19, ptr %20, align 8
  br label %bb48

bb44:                                             ; preds = %bb43
; call core::ptr::drop_in_place<alloc::vec::Vec<char>>
  call void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h9d117c0ebf1b742cE"(ptr align 8 %X)
  ret i32 %_0

bb13:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbf31c6dbe8fbe4f6E"(ptr sret([24 x i8]) align 8 %_20, ptr align 8 %_21)
          to label %bb14 unwind label %cleanup2

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_20, i64 24, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb22, %bb38, %bb41, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %21 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h7c8d04056577af43E"(ptr align 8 %iter1)
          to label %bb16 unwind label %cleanup2

bb16:                                             ; preds = %bb15
  %22 = extractvalue { i64, i64 } %21, 0
  %23 = extractvalue { i64, i64 } %21, 1
  store i64 %22, ptr %_23, align 8
  %24 = getelementptr inbounds i8, ptr %_23, i64 8
  store i64 %23, ptr %24, align 8
  %_25 = load i64, ptr %_23, align 8
  %25 = getelementptr inbounds i8, ptr %_23, i64 8
  %26 = load i64, ptr %25, align 8
  %27 = trunc nuw i64 %_25 to i1
  br i1 %27, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %28 = getelementptr inbounds i8, ptr %_23, i64 8
  %j = load i64, ptr %28, align 8
  %_27 = icmp eq i64 %i, 0
  br i1 %_27, label %bb20, label %bb19

bb18:                                             ; preds = %bb16
  %_69 = load i64, ptr %curr_row, align 8
  %_70.0 = sub i64 1, %_69
  %_70.1 = icmp ult i64 1, %_69
  br i1 %_70.1, label %panic4, label %bb42

bb42:                                             ; preds = %bb18
  store i64 %_70.0, ptr %curr_row, align 8
  br label %bb8

panic4:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6ece2276e367f5060b4b5159a4ab5844) #24
          to label %unreachable unwind label %cleanup2

bb19:                                             ; preds = %bb17
  %_28 = icmp eq i64 %j, 0
  br i1 %_28, label %bb20, label %bb23

bb20:                                             ; preds = %bb19, %bb17
  %_32 = load i64, ptr %curr_row, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_30 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E"(ptr align 8 %len, i64 %_32, ptr align 8 @alloc_09ce889d9328b98e0cb50c2b25c6fd58)
          to label %bb21 unwind label %cleanup2

bb23:                                             ; preds = %bb19
  %_38.0 = sub i64 %i, 1
  %_38.1 = icmp ult i64 %i, 1
  br i1 %_38.1, label %panic5, label %bb24

bb24:                                             ; preds = %bb23
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE"(ptr align 8 %X, i64 %_38.0, ptr align 8 @alloc_ee90cd385a793a996b4f12488f2c6f5f)
          to label %bb25 unwind label %cleanup2

panic5:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6cb009dd8fd0c9b77b9e8d88c9d9b28e) #24
          to label %unreachable unwind label %cleanup2

bb25:                                             ; preds = %bb24
  %_34 = load i32, ptr %_35, align 4
  %_43.0 = sub i64 %j, 1
  %_43.1 = icmp ult i64 %j, 1
  br i1 %_43.1, label %panic6, label %bb26

bb26:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_40 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0204b05749479fbeE"(ptr align 8 %Y, i64 %_43.0, ptr align 8 @alloc_577db64b568d16f978893d443cb1a763)
          to label %bb27 unwind label %cleanup2

panic6:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_732c4f6a4dbefcebf58a0395b6bfdc0c) #24
          to label %unreachable unwind label %cleanup2

bb27:                                             ; preds = %bb26
  %_39 = load i32, ptr %_40, align 4
  %_33 = icmp eq i32 %_34, %_39
  br i1 %_33, label %bb28, label %bb39

bb39:                                             ; preds = %bb27
  %_68 = load i64, ptr %curr_row, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_66 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E"(ptr align 8 %len, i64 %_68, ptr align 8 @alloc_509309f5290e8c311c3a53ec0158fa09)
          to label %bb40 unwind label %cleanup2

bb28:                                             ; preds = %bb27
  %_49 = load i64, ptr %curr_row, align 8
  %_50.0 = sub i64 1, %_49
  %_50.1 = icmp ult i64 1, %_49
  br i1 %_50.1, label %panic7, label %bb29

bb40:                                             ; preds = %bb39
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_65 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE"(ptr align 8 %_66, i64 %j, ptr align 8 @alloc_104b0ad324db259d6811ae4c4205831b)
          to label %bb41 unwind label %cleanup2

bb41:                                             ; preds = %bb40
  store i32 0, ptr %_65, align 4
  br label %bb15

bb29:                                             ; preds = %bb28
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E"(ptr align 8 %len, i64 %_50.0, ptr align 8 @alloc_6b67c9793a08ab13953c33e3b548f137)
          to label %bb30 unwind label %cleanup2

panic7:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cfc7e3c64bddf4b111ddf77b60f83efd) #24
          to label %unreachable unwind label %cleanup2

bb30:                                             ; preds = %bb29
  %_52.0 = sub i64 %j, 1
  %_52.1 = icmp ult i64 %j, 1
  br i1 %_52.1, label %panic8, label %bb31

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE"(ptr align 8 %_46, i64 %_52.0, ptr align 8 @alloc_a7820674b4dc75777f0d085fc1a160fd)
          to label %bb32 unwind label %cleanup2

panic8:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a2520c2c66e00c913aaa9b20c9b76b98) #24
          to label %unreachable unwind label %cleanup2

bb32:                                             ; preds = %bb31
  %_44 = load i32, ptr %_45, align 4
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_44, i32 1)
  %_53.0 = extractvalue { i32, i1 } %29, 0
  %_53.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_53.1, label %panic9, label %bb33

bb33:                                             ; preds = %bb32
  %_57 = load i64, ptr %curr_row, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_55 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haea19c70ec93adc2E"(ptr align 8 %len, i64 %_57, ptr align 8 @alloc_6624f1b308b14116cc11365dcd6de720)
          to label %bb34 unwind label %cleanup2

panic9:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9b60c7085d0d7e3f73407d2fdecaf44b) #24
          to label %unreachable unwind label %cleanup2

bb34:                                             ; preds = %bb33
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_54 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE"(ptr align 8 %_55, i64 %j, ptr align 8 @alloc_2edd0f8ae47cffc1c50dca07b62fb4c7)
          to label %bb35 unwind label %cleanup2

bb35:                                             ; preds = %bb34
  store i32 %_53.0, ptr %_54, align 4
  %_59 = load i32, ptr %result, align 4
  %_64 = load i64, ptr %curr_row, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82cc4e6e6add43c0E"(ptr align 8 %len, i64 %_64, ptr align 8 @alloc_981730ccf74103bbf71fad159e60d430)
          to label %bb36 unwind label %cleanup2

bb36:                                             ; preds = %bb35
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h998d3f7fac42bfefE"(ptr align 8 %_62, i64 %j, ptr align 8 @alloc_24ec1ed47324100026173cae137aed23)
          to label %bb37 unwind label %cleanup2

bb37:                                             ; preds = %bb36
  %_60 = load i32, ptr %_61, align 4
; invoke core::cmp::max
  %_58 = invoke i32 @_ZN4core3cmp3max17h2d6cf99464eb22ebE(i32 %_59, i32 %_60)
          to label %bb38 unwind label %cleanup2

bb38:                                             ; preds = %bb37
  store i32 %_58, ptr %result, align 4
  br label %bb15

bb21:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_29 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha2621ba6468edffcE"(ptr align 8 %_30, i64 %j, ptr align 8 @alloc_463264553f6ea60623796dd40c414753)
          to label %bb22 unwind label %cleanup2

bb22:                                             ; preds = %bb21
  store i32 0, ptr %_29, align 4
  br label %bb15

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb48, %bb47, %bb46
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb49:                                             ; preds = %bb48
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr inbounds i8, ptr %0, i64 8
  %33 = load i32, ptr %32, align 8
  %34 = insertvalue { ptr, i32 } poison, ptr %31, 0
  %35 = insertvalue { ptr, i32 } %34, i32 %33, 1
  resume { ptr, i32 } %35
}
