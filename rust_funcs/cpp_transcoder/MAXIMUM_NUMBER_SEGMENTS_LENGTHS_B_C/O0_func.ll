define i32 @f_gold(i32 %n, i32 %a, i32 %b, i32 %c) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_7 = sext i32 %n to i64
  %_8.0 = add i64 %_7, 1
  %_8.1 = icmp ult i64 %_8.0, %_7
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h7aa882fae2c1aec5E(ptr sret([24 x i8]) align 8 %dp, i32 -1, i64 %_8.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_9 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8853a14c92c9b57dE"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_21cb9bc060c1f7c0a586c6e938d052a8)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_70ea6f1cf73004489f95b0e879192fea) #23
  unreachable

bb43:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf56f1e6dc68fe613E"(ptr align 8 %dp) #22
          to label %bb44 unwind label %terminate

cleanup:                                          ; preds = %bb39, %panic12, %bb37, %panic11, %bb35, %panic10, %bb33, %panic9, %bb29, %panic8, %bb27, %panic7, %bb25, %panic6, %bb23, %panic5, %bb19, %panic4, %bb17, %panic3, %bb15, %panic2, %bb13, %panic1, %bb8, %bb9, %bb5, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb43

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_9, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h42340fceac542ff9E"(i32 0, i32 %n)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_11.0 = extractvalue { i32, i32 } %5, 0
  %_11.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_11.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_11.1, ptr %6, align 4
  br label %bb5

bb5:                                              ; preds = %bb40, %bb32, %bb10, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he1824fe5712b9e4eE"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_14, align 4
  %10 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_14, align 4
  %12 = getelementptr inbounds i8, ptr %_14, i64 4
  %13 = load i32, ptr %12, align 4
  %_16 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_16 to i1
  br i1 %14, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %15 = getelementptr inbounds i8, ptr %_14, i64 4
  %i = load i32, ptr %15, align 4
  %_22 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_22, ptr align 8 @alloc_2f2fdb8d9b83b737fb3bab9ff0755ce7)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
  %_88 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_86 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_88, ptr align 8 @alloc_c0110d6db079ccfb04fdb0b06ed027a7)
          to label %bb41 unwind label %cleanup

bb41:                                             ; preds = %bb9
  %_0 = load i32, ptr %_86, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf56f1e6dc68fe613E"(ptr align 8 %dp)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_19 = load i32, ptr %_20, align 4
  %_18 = icmp ne i32 %_19, -1
  br i1 %_18, label %bb11, label %bb5

bb11:                                             ; preds = %bb10
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %a)
  %_25.0 = extractvalue { i32, i1 } %16, 0
  %_25.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_25.1, label %panic1, label %bb12

bb12:                                             ; preds = %bb11
  %_23 = icmp sle i32 %_25.0, %n
  br i1 %_23, label %bb13, label %bb21

panic1:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_19f9c3b57951b215b2b41b1d5c1ab446) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb21:                                             ; preds = %bb20, %bb12
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %b)
  %_46.0 = extractvalue { i32, i1 } %17, 0
  %_46.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_46.1, label %panic5, label %bb22

bb13:                                             ; preds = %bb12
  %_30 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_30, ptr align 8 @alloc_614b7b8ad910a13d48586f8824031a57)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_27 = load i32, ptr %_28, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %a)
  %_37.0 = extractvalue { i32, i1 } %18, 0
  %_37.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_37.1, label %panic2, label %bb15

bb15:                                             ; preds = %bb14
  %_35 = sext i32 %_37.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_35, ptr align 8 @alloc_3b92100d882032e2737b8dc64db839ad)
          to label %bb16 unwind label %cleanup

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c937a19c9961d076a5c8f9b1f4a1a2c3) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_32 = load i32, ptr %_33, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 1)
  %_38.0 = extractvalue { i32, i1 } %19, 0
  %_38.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_38.1, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
; invoke core::cmp::Ord::max
  %_26 = invoke i32 @_ZN4core3cmp3Ord3max17h487a396d72d0e8b1E(i32 %_27, i32 %_38.0)
          to label %bb18 unwind label %cleanup

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5a3c84cabb2ec6aba43002c9e3fec051) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %a)
  %_43.0 = extractvalue { i32, i1 } %20, 0
  %_43.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_43.1, label %panic4, label %bb19

bb19:                                             ; preds = %bb18
  %_41 = sext i32 %_43.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8853a14c92c9b57dE"(ptr align 8 %dp, i64 %_41, ptr align 8 @alloc_f79cc422cd11ce1009a0e9f6a72bb4e0)
          to label %bb20 unwind label %cleanup

panic4:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1d980edf46b3763e23542e59496fb9f1) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i32 %_26, ptr %_39, align 4
  br label %bb21

bb22:                                             ; preds = %bb21
  %_44 = icmp sle i32 %_46.0, %n
  br i1 %_44, label %bb23, label %bb31

panic5:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_972aabc345418bac155ac83a6633d588) #24
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30, %bb22
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %c)
  %_67.0 = extractvalue { i32, i1 } %21, 0
  %_67.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_67.1, label %panic9, label %bb32

bb23:                                             ; preds = %bb22
  %_51 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_51, ptr align 8 @alloc_31b710564fd53fa57e039806c7174bb9)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_48 = load i32, ptr %_49, align 4
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %b)
  %_58.0 = extractvalue { i32, i1 } %22, 0
  %_58.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_58.1, label %panic6, label %bb25

bb25:                                             ; preds = %bb24
  %_56 = sext i32 %_58.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_54 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_56, ptr align 8 @alloc_879de453d19057933db2bb8482a867d0)
          to label %bb26 unwind label %cleanup

panic6:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c8c1d819975c5188970b56faebb2c904) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_53 = load i32, ptr %_54, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_53, i32 1)
  %_59.0 = extractvalue { i32, i1 } %23, 0
  %_59.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_59.1, label %panic7, label %bb27

bb27:                                             ; preds = %bb26
; invoke core::cmp::Ord::max
  %_47 = invoke i32 @_ZN4core3cmp3Ord3max17h487a396d72d0e8b1E(i32 %_48, i32 %_59.0)
          to label %bb28 unwind label %cleanup

panic7:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f16ea862a944269a0332ab3e19f62a1a) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %b)
  %_64.0 = extractvalue { i32, i1 } %24, 0
  %_64.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_64.1, label %panic8, label %bb29

bb29:                                             ; preds = %bb28
  %_62 = sext i32 %_64.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8853a14c92c9b57dE"(ptr align 8 %dp, i64 %_62, ptr align 8 @alloc_8bda176568244cf624cfa73deacef539)
          to label %bb30 unwind label %cleanup

panic8:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5bb59630055ba3a78f938d13e8c7d4cc) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  store i32 %_47, ptr %_60, align 4
  br label %bb31

bb32:                                             ; preds = %bb31
  %_65 = icmp sle i32 %_67.0, %n
  br i1 %_65, label %bb33, label %bb5

panic9:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ee380c69de8463468f6d7b65f991b429) #24
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  %_72 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_72, ptr align 8 @alloc_60273c1cb7671d9f448df947ded8d8f4)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  %_69 = load i32, ptr %_70, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %c)
  %_79.0 = extractvalue { i32, i1 } %25, 0
  %_79.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_79.1, label %panic10, label %bb35

bb35:                                             ; preds = %bb34
  %_77 = sext i32 %_79.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_77, ptr align 8 @alloc_2ce06a65bc2092a38a7af927201bc2ae)
          to label %bb36 unwind label %cleanup

panic10:                                          ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ae3759ff0979860b22cd83331f348954) #24
          to label %unreachable unwind label %cleanup

bb36:                                             ; preds = %bb35
  %_74 = load i32, ptr %_75, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_74, i32 1)
  %_80.0 = extractvalue { i32, i1 } %26, 0
  %_80.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_80.1, label %panic11, label %bb37

bb37:                                             ; preds = %bb36
; invoke core::cmp::Ord::max
  %_68 = invoke i32 @_ZN4core3cmp3Ord3max17h487a396d72d0e8b1E(i32 %_69, i32 %_80.0)
          to label %bb38 unwind label %cleanup

panic11:                                          ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7993c98d27cc95767fa551b66ee3062d) #24
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb37
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %c)
  %_85.0 = extractvalue { i32, i1 } %27, 0
  %_85.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_85.1, label %panic12, label %bb39

bb39:                                             ; preds = %bb38
  %_83 = sext i32 %_85.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_81 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8853a14c92c9b57dE"(ptr align 8 %dp, i64 %_83, ptr align 8 @alloc_236577a53b16ea7b9e78809875611e5a)
          to label %bb40 unwind label %cleanup

panic12:                                          ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4cf586cc0ee8962fe81c68ff003f7249) #24
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %bb39
  store i32 %_68, ptr %_81, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb43
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb44:                                             ; preds = %bb43
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}
