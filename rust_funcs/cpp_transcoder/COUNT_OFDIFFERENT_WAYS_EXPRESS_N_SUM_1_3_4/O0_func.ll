define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_17 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_15 = alloca [12 x i8], align 4
  %_14 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::Vec<T>::with_capacity
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h8bc6c0906f91ce8cE"(ptr sret([24 x i8]) align 8 %dp, i64 %_5.0) #17
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E"(ptr align 8 %dp, i32 1)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a388c055bd8e8a8209b2cf18b68de59b) #22
  unreachable

bb24:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5a73d4b1d587d495E"(ptr align 8 %dp) #21
          to label %bb25 unwind label %terminate

cleanup:                                          ; preds = %bb21, %panic5, %bb19, %panic4, %panic3, %bb16, %panic2, %bb14, %panic1, %bb13, %bb9, %bb7, %bb6, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb24

bb3:                                              ; preds = %bb1
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E"(ptr align 8 %dp, i32 1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E"(ptr align 8 %dp, i32 1)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E"(ptr align 8 %dp, i32 2)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17ha4699490fd04f65eE"(ptr sret([12 x i8]) align 4 %_15, i32 4, i32 %n)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hac4332ea5b01dba2E"(ptr sret([12 x i8]) align 4 %_14, ptr align 4 %_15)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_14, i64 12, i1 false)
  br label %bb9

bb9:                                              ; preds = %bb26, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha1a5195ddcf7ebc7E"(ptr align 4 %iter)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_17, align 4
  %8 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_17, align 4
  %10 = getelementptr inbounds i8, ptr %_17, i64 4
  %11 = load i32, ptr %10, align 4
  %_19 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_19 to i1
  br i1 %12, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %13 = getelementptr inbounds i8, ptr %_17, i64 4
  %i = load i32, ptr %13, align 4
  %_29 = sext i32 %i to i64
  %_30.0 = sub i64 %_29, 1
  %_30.1 = icmp ult i64 %_29, 1
  br i1 %_30.1, label %panic1, label %bb14

bb13:                                             ; preds = %bb10
  %_47 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E"(ptr align 8 %dp, i64 %_47, ptr align 8 @alloc_a4382073e4b3b81fe497466a41567024)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb13
  %_0 = load i32, ptr %_45, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5a73d4b1d587d495E"(ptr align 8 %dp)
  ret i32 %_0

bb14:                                             ; preds = %bb12
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_26 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E"(ptr align 8 %dp, i64 %_30.0, ptr align 8 @alloc_9b3bf443d4edb47bc1e1a0d5db0e2aea)
          to label %bb15 unwind label %cleanup

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a4536d94d1f7acd6e8db0ac8c782a9d5) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb15:                                             ; preds = %bb14
  %_25 = load i32, ptr %_26, align 4
  %_35 = sext i32 %i to i64
  %_36.0 = sub i64 %_35, 3
  %_36.1 = icmp ult i64 %_35, 3
  br i1 %_36.1, label %panic2, label %bb16

bb16:                                             ; preds = %bb15
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_32 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E"(ptr align 8 %dp, i64 %_36.0, ptr align 8 @alloc_7461fe806288c95339fe9466ff2bc776)
          to label %bb17 unwind label %cleanup

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7e8de4c447c281ea147037276618bd5c) #23
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_31 = load i32, ptr %_32, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_25, i32 %_31)
  %_37.0 = extractvalue { i32, i1 } %14, 0
  %_37.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_37.1, label %panic3, label %bb18

bb18:                                             ; preds = %bb17
  %_42 = sext i32 %i to i64
  %_43.0 = sub i64 %_42, 4
  %_43.1 = icmp ult i64 %_42, 4
  br i1 %_43.1, label %panic4, label %bb19

panic3:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4de2ef1e0e960ff8cf204341f4d319a4) #23
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_39 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E"(ptr align 8 %dp, i64 %_43.0, ptr align 8 @alloc_48c57c3c186518a791aaa56691556a05)
          to label %bb20 unwind label %cleanup

panic4:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_eca33b6331857d3a1ef076a701007cdb) #23
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_38 = load i32, ptr %_39, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_37.0, i32 %_38)
  %_44.0 = extractvalue { i32, i1 } %15, 0
  %_44.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_44.1, label %panic5, label %bb21

bb21:                                             ; preds = %bb20
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E"(ptr align 8 %dp, i32 %_44.0)
          to label %bb26 unwind label %cleanup

panic5:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4de2ef1e0e960ff8cf204341f4d319a4) #23
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb21
  br label %bb9

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb24
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb25:                                             ; preds = %bb24
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  %19 = load i32, ptr %18, align 8
  %20 = insertvalue { ptr, i32 } poison, ptr %17, 0
  %21 = insertvalue { ptr, i32 } %20, i32 %19, 1
  resume { ptr, i32 } %21
}
