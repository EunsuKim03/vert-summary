define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_22 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_20 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %fibo = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp sle i32 %n, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb25

bb3:                                              ; preds = %bb2
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hcaeeefafffcc5a7eE(ptr sret([24 x i8]) align 8 %fibo, i32 0, i64 %_6.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_7 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E"(ptr align 8 %fibo, i64 0, ptr align 8 @alloc_15d58a38861be63cb63fc010f00bc4e6)
          to label %bb5 unwind label %cleanup

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_370c0b1b0ab2616ed5e06157419014e2) #23
  unreachable

bb26:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70ef48ce4e7dd2f2E"(ptr align 8 %fibo) #22
          to label %bb27 unwind label %terminate

cleanup:                                          ; preds = %panic5, %bb22, %bb21, %panic4, %bb19, %panic3, %bb17, %panic2, %bb12, %bb10, %bb9, %panic1, %bb7, %bb6, %bb5, %bb3
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb26

bb5:                                              ; preds = %bb3
  store i32 0, ptr %_7, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_9 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E"(ptr align 8 %fibo, i64 1, ptr align 8 @alloc_1f691eea4819ef7be7d552ec2721e0e1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i32 1, ptr %_9, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_13 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE"(ptr align 8 %fibo, i64 0, ptr align 8 @alloc_b3106fa55768ff4c6571f48cb250981c)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %_12 = load i32, ptr %_13, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_16 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE"(ptr align 8 %fibo, i64 1, ptr align 8 @alloc_6937b0df28be6307a5ddad3edae49a79)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_15 = load i32, ptr %_16, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_12, i32 %_15)
  %_18.0 = extractvalue { i32, i1 } %5, 0
  %_18.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_18.1, label %panic1, label %bb9

bb9:                                              ; preds = %bb8
  store i32 %_18.0, ptr %sum, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9f125d45bdd5d4f2E"(ptr sret([12 x i8]) align 4 %_20, i32 2, i32 %n)
          to label %bb10 unwind label %cleanup

panic1:                                           ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_17ae50346d94ec6a73c77c67b8aff6e3) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb10:                                             ; preds = %bb9
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha6c6a91017fd7818E"(ptr sret([12 x i8]) align 4 %_19, ptr align 4 %_20)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_19, i64 12, i1 false)
  br label %bb12

bb12:                                             ; preds = %bb24, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %6 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h841dc036d0c022c5E"(ptr align 4 %iter)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_22, align 4
  %9 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_22, align 4
  %11 = getelementptr inbounds i8, ptr %_22, i64 4
  %12 = load i32, ptr %11, align 4
  %_24 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_24 to i1
  br i1 %13, label %bb15, label %bb16

bb15:                                             ; preds = %bb13
  %14 = getelementptr inbounds i8, ptr %_22, i64 4
  %i = load i32, ptr %14, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_31.0 = extractvalue { i32, i1 } %15, 0
  %_31.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_31.1, label %panic2, label %bb17

bb16:                                             ; preds = %bb13
  %16 = load i32, ptr %sum, align 4
  store i32 %16, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70ef48ce4e7dd2f2E"(ptr align 8 %fibo)
  br label %bb25

bb25:                                             ; preds = %bb1, %bb16
  %17 = load i32, ptr %_0, align 4
  ret i32 %17

bb17:                                             ; preds = %bb15
  %_29 = sext i32 %_31.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE"(ptr align 8 %fibo, i64 %_29, ptr align 8 @alloc_d8478ecaff731d6caff188c2e569141c)
          to label %bb18 unwind label %cleanup

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6fa87a4e76974730ff21c2f82c4ba205) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_26 = load i32, ptr %_27, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 2)
  %_37.0 = extractvalue { i32, i1 } %18, 0
  %_37.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_37.1, label %panic3, label %bb19

bb19:                                             ; preds = %bb18
  %_35 = sext i32 %_37.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE"(ptr align 8 %fibo, i64 %_35, ptr align 8 @alloc_d11c1e83d0030d26884eaa3a568757fc)
          to label %bb20 unwind label %cleanup

panic3:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8b4574ed24f15c8fb26ee293d580674c) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_32 = load i32, ptr %_33, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_26, i32 %_32)
  %_38.0 = extractvalue { i32, i1 } %19, 0
  %_38.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_38.1, label %panic4, label %bb21

bb21:                                             ; preds = %bb20
  %_41 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b6a83856e31f03E"(ptr align 8 %fibo, i64 %_41, ptr align 8 @alloc_718bb9fd91155ec1dd97a8bad79a70d3)
          to label %bb22 unwind label %cleanup

panic4:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_693d232646bb58dfd5d978bf62b50ce5) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_38.0, ptr %_39, align 4
  %_45 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1d9770d40442f6ebE"(ptr align 8 %fibo, i64 %_45, ptr align 8 @alloc_c324cd36ea769ef439f44941ec3e8973)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_42 = load i32, ptr %_43, align 4
  %20 = load i32, ptr %sum, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 %_42)
  %_46.0 = extractvalue { i32, i1 } %21, 0
  %_46.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_46.1, label %panic5, label %bb24

bb24:                                             ; preds = %bb23
  store i32 %_46.0, ptr %sum, align 4
  br label %bb12

panic5:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_56ddc3bccf0765bcab0b071938ef1577) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb26
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb27:                                             ; preds = %bb26
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds i8, ptr %0, i64 8
  %25 = load i32, ptr %24, align 8
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27
}
