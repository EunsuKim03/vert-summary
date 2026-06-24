define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_17 = alloca [12 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %table = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::Vec<T>::with_capacity
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h926ce94022576084E"(ptr sret([24 x i8]) align 8 %table, i64 %_5.0) #17
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h63201b1a2b88c424E"(ptr sret([12 x i8]) align 4 %_7, i32 0, i32 %n)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9e3297437039e5518cce2ac62938da69) #22
  unreachable

bb41:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h18f2e057463ede02E"(ptr align 8 %table) #21
          to label %bb42 unwind label %terminate

cleanup:                                          ; preds = %bb10, %panic7, %bb37, %bb35, %bb34, %panic5, %bb31, %panic4, %bb26, %bb24, %bb23, %panic3, %bb20, %panic2, %bb17, %bb14, %bb12, %bb11, %bb9, %bb5, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb41

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0fe6b81660fbe72aE"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb43, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hdcae459e0e708da8E"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_9, align 4
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_9, align 4
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  %11 = load i32, ptr %10, align 4
  %_11 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_11 to i1
  br i1 %12, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %13 = getelementptr inbounds i8, ptr %_9, i64 4
  %i6 = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %i6)
  %_16.0 = extractvalue { i32, i1 } %14, 0
  %_16.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_16.1, label %panic7, label %bb10

bb9:                                              ; preds = %bb6
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h63201b1a2b88c424E"(ptr sret([12 x i8]) align 4 %_19, i32 %n, i32 1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb9
; invoke core::iter::traits::iterator::Iterator::rev
  invoke void @_ZN4core4iter6traits8iterator8Iterator3rev17h12579f3b5d1753fdE(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17haf418534d36b2b3fE"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_17, i64 12, i1 false)
  br label %bb14

bb14:                                             ; preds = %bb38, %bb30, %bb13
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %15 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f6df088401fa7beE"(ptr align 4 %iter1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_21, align 4
  %18 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_21, align 4
  %20 = getelementptr inbounds i8, ptr %_21, i64 4
  %21 = load i32, ptr %20, align 4
  %_23 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_23 to i1
  br i1 %22, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %23 = getelementptr inbounds i8, ptr %_21, i64 4
  %i = load i32, ptr %23, align 4
  br label %bb18

bb17:                                             ; preds = %bb15
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_73 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE"(ptr align 8 %table, i64 1, ptr align 8 @alloc_8bdf5789f33bb978cfe120becd3cf96f)
          to label %bb39 unwind label %cleanup

bb39:                                             ; preds = %bb17
  %_0 = load i32, ptr %_73, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h18f2e057463ede02E"(ptr align 8 %table)
  ret i32 %_0

bb18:                                             ; preds = %bb16
  %_29 = icmp eq i32 %i, -2147483648
  %_30 = and i1 false, %_29
  br i1 %_30, label %panic2, label %bb19

bb19:                                             ; preds = %bb18
  %_26 = srem i32 %i, 2
  %_25 = icmp eq i32 %_26, 0
  br i1 %_25, label %bb20, label %bb28

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_99c2f27621cc6d6887dec64d6442c2e1) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic5, %panic4, %panic3, %panic2
  unreachable

bb28:                                             ; preds = %bb27, %bb19
  br label %bb29

bb20:                                             ; preds = %bb19
  %_36 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE"(ptr align 8 %table, i64 %_36, ptr align 8 @alloc_0d22174e785c8269e60d09f6e28a69e7)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_33 = load i32, ptr %_34, align 4
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_33, i32 1)
  %_37.0 = extractvalue { i32, i1 } %24, 0
  %_37.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_37.1, label %panic3, label %bb22

bb22:                                             ; preds = %bb21
  %_42 = sext i32 %i to i64
  br label %bb23

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3ee277c586cf1f537184d4f5ca4fec1e) #23
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_41 = udiv i64 %_42, 2
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_39 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE"(ptr align 8 %table, i64 %_41, ptr align 8 @alloc_ffff8fba67398c7a651f3c2159bad566)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_38 = load i32, ptr %_39, align 4
  %_31 = invoke i32 @min(i32 %_37.0, i32 %_38)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_47 = sext i32 %i to i64
  br label %bb26

bb26:                                             ; preds = %bb25
  %_46 = udiv i64 %_47, 2
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_44 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5f669fdb464b0b42E"(ptr align 8 %table, i64 %_46, ptr align 8 @alloc_72b68a595645b3140bcd1935f9d884ce)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  store i32 %_31, ptr %_44, align 4
  br label %bb28

bb29:                                             ; preds = %bb28
  %_53 = icmp eq i32 %i, -2147483648
  %_54 = and i1 false, %_53
  br i1 %_54, label %panic4, label %bb30

bb30:                                             ; preds = %bb29
  %_50 = srem i32 %i, 3
  %_49 = icmp eq i32 %_50, 0
  br i1 %_49, label %bb31, label %bb14

panic4:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c2d48acc644f481dedfedc4b752152b7) #23
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_60 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_58 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE"(ptr align 8 %table, i64 %_60, ptr align 8 @alloc_9af1ec02315128134e8a0329054695a4)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_57 = load i32, ptr %_58, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_57, i32 1)
  %_61.0 = extractvalue { i32, i1 } %25, 0
  %_61.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_61.1, label %panic5, label %bb33

bb33:                                             ; preds = %bb32
  %_66 = sext i32 %i to i64
  br label %bb34

panic5:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0bf4502e5728ea9c1bc0d749987f8f99) #23
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %bb33
  %_65 = udiv i64 %_66, 3
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd79e9e87dff6a02cE"(ptr align 8 %table, i64 %_65, ptr align 8 @alloc_6f4fd97a143b635a2905c7cab50a39eb)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb34
  %_62 = load i32, ptr %_63, align 4
  %_55 = invoke i32 @min(i32 %_61.0, i32 %_62)
          to label %bb36 unwind label %cleanup

bb36:                                             ; preds = %bb35
  %_71 = sext i32 %i to i64
  br label %bb37

bb37:                                             ; preds = %bb36
  %_70 = udiv i64 %_71, 3
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_68 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5f669fdb464b0b42E"(ptr align 8 %table, i64 %_70, ptr align 8 @alloc_85ee5ddb9a4df498cbb7c3de52788448)
          to label %bb38 unwind label %cleanup

bb38:                                             ; preds = %bb37
  store i32 %_55, ptr %_68, align 4
  br label %bb14

bb10:                                             ; preds = %bb8
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h63f09cb2323df1a3E"(ptr align 8 %table, i32 %_16.0)
          to label %bb43 unwind label %cleanup

panic7:                                           ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1cf508331dbcfaaf29a2e06997d167cf) #23
          to label %unreachable unwind label %cleanup

bb43:                                             ; preds = %bb10
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb41
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb42:                                             ; preds = %bb41
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = insertvalue { ptr, i32 } poison, ptr %27, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %29, 1
  resume { ptr, i32 } %31
}
