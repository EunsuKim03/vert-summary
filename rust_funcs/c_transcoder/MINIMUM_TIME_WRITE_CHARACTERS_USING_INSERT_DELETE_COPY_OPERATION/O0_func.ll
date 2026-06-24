define i32 @f_gold(i32 %N, i32 %insert, i32 %remove, i32 %copy) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %_5 = icmp eq i32 %N, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_6 = icmp eq i32 %N, 1
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb39

bb4:                                              ; preds = %bb2
  %_9 = sext i32 %N to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic, label %bb5

bb3:                                              ; preds = %bb2
  store i32 %insert, ptr %_0, align 4
  br label %bb39

bb5:                                              ; preds = %bb4
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hb58941cf2f976412E(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_10.0)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hd0f1c02d49e2febcE"(ptr sret([12 x i8]) align 4 %_12, i32 1, i32 %N)
          to label %bb7 unwind label %cleanup

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b25b5de7d65a9def8645f162dbab31de) #23
  unreachable

bb40:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE"(ptr align 8 %dp) #22
          to label %bb41 unwind label %terminate

cleanup:                                          ; preds = %bb24, %panic11, %bb22, %panic10, %bb20, %panic9, %bb17, %panic8, %bb36, %panic7, %bb34, %panic6, %panic5, %bb31, %panic4, %panic3, %bb27, %panic2, %panic1, %bb13, %bb9, %bb7, %bb5
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb40

bb7:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9acf4f1193599f69E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb9

bb9:                                              ; preds = %bb25, %bb37, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1365986639c098bbE"(ptr align 4 %iter)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_14, align 4
  %8 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_14, align 4
  %10 = getelementptr inbounds i8, ptr %_14, i64 4
  %11 = load i32, ptr %10, align 4
  %_16 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_16 to i1
  br i1 %12, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %13 = getelementptr inbounds i8, ptr %_14, i64 4
  %i = load i32, ptr %13, align 4
  br label %bb14

bb13:                                             ; preds = %bb10
  %_74 = sext i32 %N to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_72 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_74, ptr align 8 @alloc_cb864bbe9de1183d4fb3dd70ba3432a1)
          to label %bb38 unwind label %cleanup

bb38:                                             ; preds = %bb13
  %14 = load i32, ptr %_72, align 4
  store i32 %14, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE"(ptr align 8 %dp)
  br label %bb39

bb39:                                             ; preds = %bb1, %bb3, %bb38
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb14:                                             ; preds = %bb12
  %_22 = icmp eq i32 %i, -2147483648
  %_23 = and i1 false, %_22
  br i1 %_23, label %panic1, label %bb15

bb15:                                             ; preds = %bb14
  %_19 = srem i32 %i, 2
  %_18 = icmp eq i32 %_19, 0
  br i1 %_18, label %bb16, label %bb26

panic1:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_f56b7f09ff8cd87ae6e5e41ba781cb55) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb26:                                             ; preds = %bb15
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_51.0 = extractvalue { i32, i1 } %16, 0
  %_51.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_51.1, label %panic2, label %bb27

bb16:                                             ; preds = %bb15
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_29.0 = extractvalue { i32, i1 } %17, 0
  %_29.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_29.1, label %panic8, label %bb17

bb27:                                             ; preds = %bb26
  %_49 = sext i32 %_51.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_49, ptr align 8 @alloc_c9053690c813750e966f2d0961ba9d1d)
          to label %bb28 unwind label %cleanup

panic2:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_20e592715b13bc5c7053ec0af88c7df8) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_46 = load i32, ptr %_47, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_61.0 = extractvalue { i32, i1 } %18, 0
  %_61.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_61.1, label %panic3, label %bb29

bb29:                                             ; preds = %bb28
  br label %bb30

panic3:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_73cdb7c7b1ee308f5c2622f7f9ea3501) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_64 = icmp eq i32 %_61.0, -2147483648
  %_65 = and i1 false, %_64
  br i1 %_65, label %panic4, label %bb31

bb31:                                             ; preds = %bb30
  %_59 = sdiv i32 %_61.0, 2
  %_58 = sext i32 %_59 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_58, ptr align 8 @alloc_0c2cca98555e779888e68565a081e255)
          to label %bb32 unwind label %cleanup

panic4:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_0c883c93af9963827096bca8bc114b61) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_55 = load i32, ptr %_56, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_55, i32 %copy)
  %_66.0 = extractvalue { i32, i1 } %19, 0
  %_66.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_66.1, label %panic5, label %bb33

bb33:                                             ; preds = %bb32
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_66.0, i32 %remove)
  %_67.0 = extractvalue { i32, i1 } %20, 0
  %_67.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_67.1, label %panic6, label %bb34

panic5:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8354dc432b943b2f2ce1202d2bca46eb) #24
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %bb33
; invoke core::cmp::Ord::min
  %_52 = invoke i32 @_ZN4core3cmp3Ord3min17h47441591a09372b6E(i32 %insert, i32 %_67.0)
          to label %bb35 unwind label %cleanup

panic6:                                           ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8354dc432b943b2f2ce1202d2bca46eb) #24
          to label %unreachable unwind label %cleanup

bb35:                                             ; preds = %bb34
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_46, i32 %_52)
  %_68.0 = extractvalue { i32, i1 } %21, 0
  %_68.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_68.1, label %panic7, label %bb36

bb36:                                             ; preds = %bb35
  %_71 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_69 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE"(ptr align 8 %dp, i64 %_71, ptr align 8 @alloc_dfe111779e39601df6ea898a8b9008b6)
          to label %bb37 unwind label %cleanup

panic7:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_19ea58d519e525104fb32b3a096501ef) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %bb36
  store i32 %_68.0, ptr %_69, align 4
  br label %bb9

bb17:                                             ; preds = %bb16
  %_27 = sext i32 %_29.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_25 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_27, ptr align 8 @alloc_5a315c1d3637a61de6b3479dd54b62c9)
          to label %bb18 unwind label %cleanup

panic8:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3cfe8174c32056ac164d7d60dcc46cca) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_24 = load i32, ptr %_25, align 4
  br label %bb19

bb19:                                             ; preds = %bb18
  %_39 = icmp eq i32 %i, -2147483648
  %_40 = and i1 false, %_39
  br i1 %_40, label %panic9, label %bb20

bb20:                                             ; preds = %bb19
  %_36 = sdiv i32 %i, 2
  %_35 = sext i32 %_36 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_35, ptr align 8 @alloc_8cedce4506ee0c620fde347025a1b377)
          to label %bb21 unwind label %cleanup

panic9:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_cf3de6910306b598a9a646a4cd126520) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_32 = load i32, ptr %_33, align 4
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 %copy)
  %_41.0 = extractvalue { i32, i1 } %22, 0
  %_41.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_41.1, label %panic10, label %bb22

bb22:                                             ; preds = %bb21
; invoke core::cmp::Ord::min
  %_30 = invoke i32 @_ZN4core3cmp3Ord3min17h47441591a09372b6E(i32 %insert, i32 %_41.0)
          to label %bb23 unwind label %cleanup

panic10:                                          ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7d0947a58fcea23927ef3a7dd825ff29) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_24, i32 %_30)
  %_42.0 = extractvalue { i32, i1 } %23, 0
  %_42.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_42.1, label %panic11, label %bb24

bb24:                                             ; preds = %bb23
  %_45 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_43 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE"(ptr align 8 %dp, i64 %_45, ptr align 8 @alloc_b077da47b33a5807ad4fe2622c82a287)
          to label %bb25 unwind label %cleanup

panic11:                                          ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3cae7f8effc77934a6238275d7b79781) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  store i32 %_42.0, ptr %_43, align 4
  br label %bb9

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb40
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb41:                                             ; preds = %bb40
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = insertvalue { ptr, i32 } poison, ptr %25, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}
