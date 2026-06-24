define i32 @f_gold(ptr align 8 %str, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_49 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_27 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
; invoke alloc::string::String::len
  %len = invoke i64 @_ZN5alloc6string6String3len17h2762c85ae4957d5fE(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb52:                                             ; preds = %bb51, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h596bf5775a548fceE"(ptr align 8 %str) #22
          to label %bb53 unwind label %terminate

cleanup:                                          ; preds = %bb48, %bb2, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb52

bb1:                                              ; preds = %start
  %_7 = sext i32 %n to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hc15f78ee36200089E(ptr sret([24 x i8]) align 8 %_6, i32 0, i64 %_7)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hb55682f705c01e5aE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_6, i64 %len)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_9 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_bdf3931a460671aeeed275c2378e41bd)
          to label %bb4 unwind label %cleanup2

bb51:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbb39638943c8d54cE"(ptr align 8 %dp) #22
          to label %bb52 unwind label %terminate

cleanup2:                                         ; preds = %panic19, %bb43, %panic18, %panic17, %panic16, %panic15, %bb38, %panic14, %bb36, %bb35, %bb34, %panic13, %panic12, %bb31, %bb30, %bb29, %bb28, %panic11, %bb25, %bb23, %panic10, %bb21, %panic9, %panic8, %panic7, %bb17, %bb15, %bb47, %bb46, %panic6, %bb12, %bb10, %panic5, %bb8, %panic4, %panic3, %panic, %bb4, %bb3
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb51

bb4:                                              ; preds = %bb3
; invoke alloc::string::String::as_bytes
  %9 = invoke { ptr, i64 } @_ZN5alloc6string6String8as_bytes17hdbaacbdbe265628fE(ptr align 8 %str)
          to label %bb5 unwind label %cleanup2

bb5:                                              ; preds = %bb4
  %_15.0 = extractvalue { ptr, i64 } %9, 0
  %_15.1 = extractvalue { ptr, i64 } %9, 1
  %_19 = icmp ult i64 0, %_15.1
  br i1 %_19, label %bb6, label %panic

bb6:                                              ; preds = %bb5
  %10 = getelementptr inbounds nuw i8, ptr %_15.0, i64 0
  %_14 = load i8, ptr %10, align 1
  %_20.0 = sub i8 %_14, 48
  %_20.1 = icmp ult i8 %_14, 48
  br i1 %_20.1, label %panic3, label %bb7

panic:                                            ; preds = %bb5
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %_15.1, ptr align 8 @alloc_d09248569f8b3cdbf62cd639b51892bf) #24
          to label %unreachable unwind label %cleanup2

unreachable:                                      ; preds = %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic
  unreachable

bb7:                                              ; preds = %bb6
  %_12 = zext i8 %_20.0 to i64
  %_21 = sext i32 %n to i64
  %_22 = icmp eq i64 %_21, 0
  br i1 %_22, label %panic4, label %bb8

panic3:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d9020416cf4c17ccf4816ff7d2dbc84e) #24
          to label %unreachable unwind label %cleanup2

bb8:                                              ; preds = %bb7
  %_11 = urem i64 %_12, %_21
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E"(ptr align 8 %_9, i64 %_11, ptr align 8 @alloc_390d12d247582ccf9e7b3ab6a346ac19)
          to label %bb9 unwind label %cleanup2

panic4:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_d9020416cf4c17ccf4816ff7d2dbc84e) #24
          to label %unreachable unwind label %cleanup2

bb9:                                              ; preds = %bb8
  %11 = load i32, ptr %_8, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 1)
  %_23.0 = extractvalue { i32, i1 } %12, 0
  %_23.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_23.1, label %panic5, label %bb10

bb10:                                             ; preds = %bb9
  store i32 %_23.0, ptr %_8, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd4686481d3ebe14fE"(i64 1, i64 %len)
          to label %bb11 unwind label %cleanup2

panic5:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_473f868068864d6d8a3935b040e56070) #24
          to label %unreachable unwind label %cleanup2

bb11:                                             ; preds = %bb10
  %_24.0 = extractvalue { i64, i64 } %13, 0
  %_24.1 = extractvalue { i64, i64 } %13, 1
  store i64 %_24.0, ptr %iter, align 8
  %14 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_24.1, ptr %14, align 8
  br label %bb12

bb12:                                             ; preds = %bb26, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4ebeede7698ba38bE"(ptr align 8 %iter)
          to label %bb13 unwind label %cleanup2

bb13:                                             ; preds = %bb12
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  store i64 %16, ptr %_27, align 8
  %18 = getelementptr inbounds i8, ptr %_27, i64 8
  store i64 %17, ptr %18, align 8
  %_29 = load i64, ptr %_27, align 8
  %19 = getelementptr inbounds i8, ptr %_27, i64 8
  %20 = load i64, ptr %19, align 8
  %21 = trunc nuw i64 %_29 to i1
  br i1 %21, label %bb15, label %bb16

bb15:                                             ; preds = %bb13
  %22 = getelementptr inbounds i8, ptr %_27, i64 8
  %i = load i64, ptr %22, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_32 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_d1a680acec439a3168a347ebce64ebaa)
          to label %bb17 unwind label %cleanup2

bb16:                                             ; preds = %bb13
  %_96.0 = sub i64 %len, 1
  %_96.1 = icmp ult i64 %len, 1
  br i1 %_96.1, label %panic6, label %bb46

bb46:                                             ; preds = %bb16
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_93 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E"(ptr align 8 %dp, i64 %_96.0, ptr align 8 @alloc_1521b96a261b253deaa459eb31a92544)
          to label %bb47 unwind label %cleanup2

panic6:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c167f39a9cecaba635b100d7a7b2adfc) #24
          to label %unreachable unwind label %cleanup2

bb47:                                             ; preds = %bb46
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_92 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E"(ptr align 8 %_93, i64 0, ptr align 8 @alloc_f24cd11875f84467635e79aa9592747e)
          to label %bb48 unwind label %cleanup2

bb48:                                             ; preds = %bb47
  %_0 = load i32, ptr %_92, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbb39638943c8d54cE"(ptr align 8 %dp)
          to label %bb49 unwind label %cleanup

bb49:                                             ; preds = %bb48
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h596bf5775a548fceE"(ptr align 8 %str)
  ret i32 %_0

bb17:                                             ; preds = %bb15
; invoke alloc::string::String::as_bytes
  %23 = invoke { ptr, i64 } @_ZN5alloc6string6String8as_bytes17hdbaacbdbe265628fE(ptr align 8 %str)
          to label %bb18 unwind label %cleanup2

bb18:                                             ; preds = %bb17
  %_38.0 = extractvalue { ptr, i64 } %23, 0
  %_38.1 = extractvalue { ptr, i64 } %23, 1
  %_41 = icmp ult i64 %i, %_38.1
  br i1 %_41, label %bb19, label %panic7

bb19:                                             ; preds = %bb18
  %24 = getelementptr inbounds nuw i8, ptr %_38.0, i64 %i
  %_37 = load i8, ptr %24, align 1
  %_42.0 = sub i8 %_37, 48
  %_42.1 = icmp ult i8 %_37, 48
  br i1 %_42.1, label %panic8, label %bb20

panic7:                                           ; preds = %bb18
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %_38.1, ptr align 8 @alloc_3450e43cd9a8c7c719ac9c36e788c625) #24
          to label %unreachable unwind label %cleanup2

bb20:                                             ; preds = %bb19
  %_35 = zext i8 %_42.0 to i64
  %_43 = sext i32 %n to i64
  %_44 = icmp eq i64 %_43, 0
  br i1 %_44, label %panic9, label %bb21

panic8:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9031ae3b84880cdb12e1ee946ec686ae) #24
          to label %unreachable unwind label %cleanup2

bb21:                                             ; preds = %bb20
  %_34 = urem i64 %_35, %_43
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_31 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E"(ptr align 8 %_32, i64 %_34, ptr align 8 @alloc_b1b37c7782e4e6cb4597f292e11f4ee8)
          to label %bb22 unwind label %cleanup2

panic9:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_9031ae3b84880cdb12e1ee946ec686ae) #24
          to label %unreachable unwind label %cleanup2

bb22:                                             ; preds = %bb21
  %25 = load i32, ptr %_31, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 1)
  %_45.0 = extractvalue { i32, i1 } %26, 0
  %_45.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_45.1, label %panic10, label %bb23

bb23:                                             ; preds = %bb22
  store i32 %_45.0, ptr %_31, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %27 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2c7bed2ab704dab5E"(i32 0, i32 %n)
          to label %bb24 unwind label %cleanup2

panic10:                                          ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8215f83c3367b7a78430e471598ec30d) #24
          to label %unreachable unwind label %cleanup2

bb24:                                             ; preds = %bb23
  %_46.0 = extractvalue { i32, i32 } %27, 0
  %_46.1 = extractvalue { i32, i32 } %27, 1
  store i32 %_46.0, ptr %iter1, align 4
  %28 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_46.1, ptr %28, align 4
  br label %bb25

bb25:                                             ; preds = %bb45, %bb24
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6f5157d3b30bdb57E"(ptr align 4 %iter1)
          to label %bb26 unwind label %cleanup2

bb26:                                             ; preds = %bb25
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_49, align 4
  %32 = getelementptr inbounds i8, ptr %_49, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_49, align 4
  %34 = getelementptr inbounds i8, ptr %_49, i64 4
  %35 = load i32, ptr %34, align 4
  %_51 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_51 to i1
  br i1 %36, label %bb27, label %bb12

bb27:                                             ; preds = %bb26
  %37 = getelementptr inbounds i8, ptr %_49, i64 4
  %j = load i32, ptr %37, align 4
  %_58.0 = sub i64 %i, 1
  %_58.1 = icmp ult i64 %i, 1
  br i1 %_58.1, label %panic11, label %bb28

bb28:                                             ; preds = %bb27
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E"(ptr align 8 %dp, i64 %_58.0, ptr align 8 @alloc_d20f6ce92c21502222327bc7975236ef)
          to label %bb29 unwind label %cleanup2

panic11:                                          ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b6517c57818cc6e0fc8c2e2c54052835) #24
          to label %unreachable unwind label %cleanup2

bb29:                                             ; preds = %bb28
  %_59 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_54 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E"(ptr align 8 %_55, i64 %_59, ptr align 8 @alloc_f688a195bdb62474b00d80c3462d68ba)
          to label %bb30 unwind label %cleanup2

bb30:                                             ; preds = %bb29
  %_53 = load i32, ptr %_54, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_61 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_6843b76cd13ecd9b34ec8a4f95b97ba9)
          to label %bb31 unwind label %cleanup2

bb31:                                             ; preds = %bb30
  %_63 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E"(ptr align 8 %_61, i64 %_63, ptr align 8 @alloc_e4260f00f61be59df837d67b4fc34189)
          to label %bb32 unwind label %cleanup2

bb32:                                             ; preds = %bb31
  %38 = load i32, ptr %_60, align 4
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %_53)
  %_64.0 = extractvalue { i32, i1 } %39, 0
  %_64.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_64.1, label %panic12, label %bb33

bb33:                                             ; preds = %bb32
  store i32 %_64.0, ptr %_60, align 4
  %_70.0 = sub i64 %i, 1
  %_70.1 = icmp ult i64 %i, 1
  br i1 %_70.1, label %panic13, label %bb34

panic12:                                          ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fdf5adf2ca1d1a413ec41bd42746b101) #24
          to label %unreachable unwind label %cleanup2

bb34:                                             ; preds = %bb33
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4881cc66da039a73E"(ptr align 8 %dp, i64 %_70.0, ptr align 8 @alloc_1326b1f5f83e68288b3897ba6dc7e9f0)
          to label %bb35 unwind label %cleanup2

panic13:                                          ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_02ceb4cdce77a25ab2e896edc37adfa1) #24
          to label %unreachable unwind label %cleanup2

bb35:                                             ; preds = %bb34
  %_71 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7297bcbeb3038a07E"(ptr align 8 %_67, i64 %_71, ptr align 8 @alloc_55f33d4e9119dc18f6e55eb5230cd057)
          to label %bb36 unwind label %cleanup2

bb36:                                             ; preds = %bb35
  %_65 = load i32, ptr %_66, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_73 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3b448b801ff7b155E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_b0efe8837264838c914721ed778c3c8e)
          to label %bb37 unwind label %cleanup2

bb37:                                             ; preds = %bb36
  %40 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %j, i32 10)
  %_79.0 = extractvalue { i32, i1 } %40, 0
  %_79.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_79.1, label %panic14, label %bb38

bb38:                                             ; preds = %bb37
; invoke alloc::string::String::as_bytes
  %41 = invoke { ptr, i64 } @_ZN5alloc6string6String8as_bytes17hdbaacbdbe265628fE(ptr align 8 %str)
          to label %bb39 unwind label %cleanup2

panic14:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d0fbda09355159ad8632c0994aff52ae) #24
          to label %unreachable unwind label %cleanup2

bb39:                                             ; preds = %bb38
  %_83.0 = extractvalue { ptr, i64 } %41, 0
  %_83.1 = extractvalue { ptr, i64 } %41, 1
  %_86 = icmp ult i64 %i, %_83.1
  br i1 %_86, label %bb40, label %panic15

bb40:                                             ; preds = %bb39
  %42 = getelementptr inbounds nuw i8, ptr %_83.0, i64 %i
  %_82 = load i8, ptr %42, align 1
  %_87.0 = sub i8 %_82, 48
  %_87.1 = icmp ult i8 %_82, 48
  br i1 %_87.1, label %panic16, label %bb41

panic15:                                          ; preds = %bb39
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %_83.1, ptr align 8 @alloc_ed1ca8cedcbd67ec0a3b75dc4c2ab995) #24
          to label %unreachable unwind label %cleanup2

bb41:                                             ; preds = %bb40
  %_80 = zext i8 %_87.0 to i32
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_79.0, i32 %_80)
  %_88.0 = extractvalue { i32, i1 } %43, 0
  %_88.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_88.1, label %panic17, label %bb42

panic16:                                          ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_47adf889661c2eb6780be015564cbec1) #24
          to label %unreachable unwind label %cleanup2

bb42:                                             ; preds = %bb41
  %_76 = sext i32 %_88.0 to i64
  %_89 = sext i32 %n to i64
  %_90 = icmp eq i64 %_89, 0
  br i1 %_90, label %panic18, label %bb43

panic17:                                          ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c193a7ff4b97d563914af25fa97f9917) #24
          to label %unreachable unwind label %cleanup2

bb43:                                             ; preds = %bb42
  %_75 = urem i64 %_76, %_89
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_72 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7b84ba994d8621e1E"(ptr align 8 %_73, i64 %_75, ptr align 8 @alloc_2b3f18b93afb77df816dfe79e70614e4)
          to label %bb44 unwind label %cleanup2

panic18:                                          ; preds = %bb42
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_c193a7ff4b97d563914af25fa97f9917) #24
          to label %unreachable unwind label %cleanup2

bb44:                                             ; preds = %bb43
  %44 = load i32, ptr %_72, align 4
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %44, i32 %_65)
  %_91.0 = extractvalue { i32, i1 } %45, 0
  %_91.1 = extractvalue { i32, i1 } %45, 1
  br i1 %_91.1, label %panic19, label %bb45

bb45:                                             ; preds = %bb44
  store i32 %_91.0, ptr %_72, align 4
  br label %bb25

panic19:                                          ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_40f85b04d6a5e3996dc6fdcd9c2aa15f) #24
          to label %unreachable unwind label %cleanup2

bb14:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb52, %bb51
  %46 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb53:                                             ; preds = %bb52
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds i8, ptr %0, i64 8
  %49 = load i32, ptr %48, align 8
  %50 = insertvalue { ptr, i32 } poison, ptr %47, 0
  %51 = insertvalue { ptr, i32 } %50, i32 %49, 1
  resume { ptr, i32 } %51
}
