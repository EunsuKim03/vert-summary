define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %b = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  %_3 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h27f6b48e13800d53E(ptr sret([24 x i8]) align 8 %a, i32 1, i64 %_3)
  %_5 = sext i32 %n to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h27f6b48e13800d53E(ptr sret([24 x i8]) align 8 %b, i32 1, i64 %_5)
          to label %bb2 unwind label %cleanup

bb26:                                             ; preds = %bb25, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hfc119e9e2c3931b3E"(ptr align 8 %a) #22
          to label %bb27 unwind label %terminate

cleanup:                                          ; preds = %bb22, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb26

bb2:                                              ; preds = %start
  %_8 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9054a85acf94583bE"(i64 1, i64 %_8)
          to label %bb3 unwind label %cleanup1

bb25:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hfc119e9e2c3931b3E"(ptr align 8 %b) #22
          to label %bb26 unwind label %terminate

cleanup1:                                         ; preds = %bb16, %bb15, %panic7, %bb13, %panic6, %bb11, %panic5, %bb9, %panic4, %panic3, %bb20, %panic2, %bb18, %panic, %bb4, %bb2
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb25

bb3:                                              ; preds = %bb2
  %_6.0 = extractvalue { i64, i64 } %5, 0
  %_6.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_6.0, ptr %iter, align 8
  %10 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %10, align 8
  br label %bb4

bb4:                                              ; preds = %bb17, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6f4c975956f01922E"(ptr align 8 %iter)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %_10, align 8
  %14 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %13, ptr %14, align 8
  %_12 = load i64, ptr %_10, align 8
  %15 = getelementptr inbounds i8, ptr %_10, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = trunc nuw i64 %_12 to i1
  br i1 %17, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %18 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %18, align 8
  %_18.0 = sub i64 %i, 1
  %_18.1 = icmp ult i64 %i, 1
  br i1 %_18.1, label %panic4, label %bb9

bb8:                                              ; preds = %bb5
  %_38 = sext i32 %n to i64
  %_39.0 = sub i64 %_38, 1
  %_39.1 = icmp ult i64 %_38, 1
  br i1 %_39.1, label %panic, label %bb18

bb18:                                             ; preds = %bb8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aadf744eb3d7cdeE"(ptr align 8 %a, i64 %_39.0, ptr align 8 @alloc_ee050228a30a0445f82832821672d805)
          to label %bb19 unwind label %cleanup1

panic:                                            ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5c1e6e86ff74203ca1e336fb48d4f96a) #24
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb19:                                             ; preds = %bb18
  %_34 = load i32, ptr %_35, align 4
  %_44 = sext i32 %n to i64
  %_45.0 = sub i64 %_44, 1
  %_45.1 = icmp ult i64 %_44, 1
  br i1 %_45.1, label %panic2, label %bb20

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_41 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aadf744eb3d7cdeE"(ptr align 8 %b, i64 %_45.0, ptr align 8 @alloc_286c2b8966a37c63ce4fe58f2f504f2c)
          to label %bb21 unwind label %cleanup1

panic2:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0958bff3bbc23a4973a186076a1f0005) #24
          to label %unreachable unwind label %cleanup1

bb21:                                             ; preds = %bb20
  %_40 = load i32, ptr %_41, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_34, i32 %_40)
  %_46.0 = extractvalue { i32, i1 } %19, 0
  %_46.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_46.1, label %panic3, label %bb22

bb22:                                             ; preds = %bb21
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hfc119e9e2c3931b3E"(ptr align 8 %b)
          to label %bb23 unwind label %cleanup

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_646c3dcb2be48ff4cc4fb20487e8f8b4) #24
          to label %unreachable unwind label %cleanup1

bb23:                                             ; preds = %bb22
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hfc119e9e2c3931b3E"(ptr align 8 %a)
  ret i32 %_46.0

bb9:                                              ; preds = %bb7
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_15 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aadf744eb3d7cdeE"(ptr align 8 %a, i64 %_18.0, ptr align 8 @alloc_bc2c856a629871e9ecf9621876a8637d)
          to label %bb10 unwind label %cleanup1

panic4:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2de63081f57989ec87bb4e8568175647) #24
          to label %unreachable unwind label %cleanup1

bb10:                                             ; preds = %bb9
  %_14 = load i32, ptr %_15, align 4
  %_23.0 = sub i64 %i, 1
  %_23.1 = icmp ult i64 %i, 1
  br i1 %_23.1, label %panic5, label %bb11

bb11:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aadf744eb3d7cdeE"(ptr align 8 %b, i64 %_23.0, ptr align 8 @alloc_eb176afe86d078758d5b4d009d3d4fa8)
          to label %bb12 unwind label %cleanup1

panic5:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c484064d600bb61c4861788c2166f8b8) #24
          to label %unreachable unwind label %cleanup1

bb12:                                             ; preds = %bb11
  %_19 = load i32, ptr %_20, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_14, i32 %_19)
  %_24.0 = extractvalue { i32, i1 } %20, 0
  %_24.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_24.1, label %panic6, label %bb13

bb13:                                             ; preds = %bb12
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_25 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h980932d87502d2efE"(ptr align 8 %a, i64 %i, ptr align 8 @alloc_efc39dc3897609cf51aa3f4482833d95)
          to label %bb14 unwind label %cleanup1

panic6:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_385f6ac49e905cfec4111f2e73cbb8fe) #24
          to label %unreachable unwind label %cleanup1

bb14:                                             ; preds = %bb13
  store i32 %_24.0, ptr %_25, align 4
  %_31.0 = sub i64 %i, 1
  %_31.1 = icmp ult i64 %i, 1
  br i1 %_31.1, label %panic7, label %bb15

bb15:                                             ; preds = %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aadf744eb3d7cdeE"(ptr align 8 %a, i64 %_31.0, ptr align 8 @alloc_63fa17605e9eb3d9c65f822884dc9e7e)
          to label %bb16 unwind label %cleanup1

panic7:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f56cd490e24e0c8f57f30ef9ff8c5e06) #24
          to label %unreachable unwind label %cleanup1

bb16:                                             ; preds = %bb15
  %_27 = load i32, ptr %_28, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_32 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h980932d87502d2efE"(ptr align 8 %b, i64 %i, ptr align 8 @alloc_44f84c0e4300e392843102532b09451f)
          to label %bb17 unwind label %cleanup1

bb17:                                             ; preds = %bb16
  store i32 %_27, ptr %_32, align 4
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb26, %bb25
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb27:                                             ; preds = %bb26
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  %24 = load i32, ptr %23, align 8
  %25 = insertvalue { ptr, i32 } poison, ptr %22, 0
  %26 = insertvalue { ptr, i32 } %25, i32 %24, 1
  resume { ptr, i32 } %26
}
