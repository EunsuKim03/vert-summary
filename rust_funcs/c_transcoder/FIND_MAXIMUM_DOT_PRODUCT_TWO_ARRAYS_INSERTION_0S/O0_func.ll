define i32 @f_gold(i64 %0, i64 %1, i32 %m, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_60 = alloca [1 x i8], align 1
  %_23 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_21 = alloca [12 x i8], align 4
  %_20 = alloca [12 x i8], align 4
  %_16 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_14 = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_6 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %B = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %A = alloca [8 x i8], align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 8 %4, i64 8, i1 false)
  store i64 %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %B, ptr align 8 %3, i64 8, i1 false)
  store i8 0, ptr %_60, align 1
  %_8 = sext i32 %m to i64
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_60, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h423b000839164473E(ptr sret([24 x i8]) align 8 %_6, i32 0, i64 %_9.0)
  %_11 = sext i32 %n to i64
  %_12.0 = add i64 %_11, 1
  %_12.1 = icmp ult i64 %_12.0, %_11
  br i1 %_12.1, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_db8817e85dca6cbd95942ff790b35469) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_60, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hc349d933828f9fc3E(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_6, i64 %_12.0)
          to label %bb4 unwind label %cleanup

panic2:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0e58e83b868eddc90b456af706d09190) #24
          to label %unreachable unwind label %cleanup

bb35:                                             ; preds = %cleanup
  %5 = load i8, ptr %_60, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb34, label %bb33

cleanup:                                          ; preds = %bb3, %panic2
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %2, align 8
  %10 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb35

unreachable:                                      ; preds = %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic2
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_60, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h8b340598c6b1172eE"(ptr sret([12 x i8]) align 4 %_14, i32 1, i32 %n)
          to label %bb5 unwind label %cleanup3

bb32:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3017f06d6f81789aE"(ptr align 8 %dp) #22
          to label %bb33 unwind label %terminate

cleanup3:                                         ; preds = %bb27, %bb26, %bb25, %panic10, %panic9, %panic8, %panic7, %panic6, %bb19, %panic5, %bb17, %panic4, %bb14, %bb12, %bb10, %bb29, %bb11, %bb7, %bb5, %bb4
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  store ptr %12, ptr %2, align 8
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb32

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hebdabf4c2fd20204E"(ptr sret([12 x i8]) align 4 %_13, ptr align 4 %_14)
          to label %bb6 unwind label %cleanup3

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_13, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb15, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %15 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h25bad6393eb89dafE"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup3

bb8:                                              ; preds = %bb7
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_16, align 4
  %18 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_16, align 4
  %20 = getelementptr inbounds i8, ptr %_16, i64 4
  %21 = load i32, ptr %20, align 4
  %_18 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_18 to i1
  br i1 %22, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %23 = getelementptr inbounds i8, ptr %_16, i64 4
  %i = load i32, ptr %23, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h8b340598c6b1172eE"(ptr sret([12 x i8]) align 4 %_21, i32 %i, i32 %m)
          to label %bb12 unwind label %cleanup3

bb11:                                             ; preds = %bb8
  %_58 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E"(ptr align 8 %dp, i64 %_58, ptr align 8 @alloc_cb52d429e2dce7656763cec6d8dda9c7)
          to label %bb29 unwind label %cleanup3

bb29:                                             ; preds = %bb11
  %_59 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2592bd69386694e2E"(ptr align 8 %_56, i64 %_59, ptr align 8 @alloc_5c967810f868ed812be24b4df1e076e3)
          to label %bb30 unwind label %cleanup3

bb30:                                             ; preds = %bb29
  %_0 = load i32, ptr %_55, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3017f06d6f81789aE"(ptr align 8 %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hebdabf4c2fd20204E"(ptr sret([12 x i8]) align 4 %_20, ptr align 4 %_21)
          to label %bb13 unwind label %cleanup3

bb13:                                             ; preds = %bb12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_20, i64 12, i1 false)
  br label %bb14

bb14:                                             ; preds = %bb28, %bb13
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %24 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h25bad6393eb89dafE"(ptr align 4 %iter1)
          to label %bb15 unwind label %cleanup3

bb15:                                             ; preds = %bb14
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = extractvalue { i32, i32 } %24, 1
  store i32 %25, ptr %_23, align 4
  %27 = getelementptr inbounds i8, ptr %_23, i64 4
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %_23, align 4
  %29 = getelementptr inbounds i8, ptr %_23, i64 4
  %30 = load i32, ptr %29, align 4
  %_25 = zext i32 %28 to i64
  %31 = trunc nuw i64 %_25 to i1
  br i1 %31, label %bb16, label %bb7

bb16:                                             ; preds = %bb15
  %32 = getelementptr inbounds i8, ptr %_23, i64 4
  %j = load i32, ptr %32, align 4
  %_33 = sext i32 %i to i64
  %_34.0 = sub i64 %_33, 1
  %_34.1 = icmp ult i64 %_33, 1
  br i1 %_34.1, label %panic4, label %bb17

bb17:                                             ; preds = %bb16
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_30 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6a644db4465ab694E"(ptr align 8 %dp, i64 %_34.0, ptr align 8 @alloc_4c01ead1c2d45492ad555d8479d12bc6)
          to label %bb18 unwind label %cleanup3

panic4:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0b4649aaf13dd0f5baa9cc394ce1d940) #24
          to label %unreachable unwind label %cleanup3

bb18:                                             ; preds = %bb17
  %_36 = sext i32 %j to i64
  %_37.0 = sub i64 %_36, 1
  %_37.1 = icmp ult i64 %_36, 1
  br i1 %_37.1, label %panic5, label %bb19

bb19:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2592bd69386694e2E"(ptr align 8 %_30, i64 %_37.0, ptr align 8 @alloc_e77b3bc922347aba9c581db160d3d686)
          to label %bb20 unwind label %cleanup3

panic5:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f7ebe3e11d9608e765cd0d63a43c7228) #24
          to label %unreachable unwind label %cleanup3

bb20:                                             ; preds = %bb19
  %_28 = load i32, ptr %_29, align 4
  %_41 = sext i32 %j to i64
  %_42.0 = sub i64 %_41, 1
  %_42.1 = icmp ult i64 %_41, 1
  br i1 %_42.1, label %panic6, label %bb21

bb21:                                             ; preds = %bb20
  %_43 = icmp ult i64 %_42.0, 2
  br i1 %_43, label %bb22, label %panic7

panic6:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_38ff05a2e16ca4813e678a8b1175b8d7) #24
          to label %unreachable unwind label %cleanup3

bb22:                                             ; preds = %bb21
  %33 = getelementptr inbounds nuw i32, ptr %A, i64 %_42.0
  %_39 = load i32, ptr %33, align 4
  %_46 = sext i32 %i to i64
  %_47.0 = sub i64 %_46, 1
  %_47.1 = icmp ult i64 %_46, 1
  br i1 %_47.1, label %panic8, label %bb23

panic7:                                           ; preds = %bb21
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_42.0, i64 2, ptr align 8 @alloc_1ba2814f37f2d13717660e56bee9b61f) #24
          to label %unreachable unwind label %cleanup3

bb23:                                             ; preds = %bb22
  %_48 = icmp ult i64 %_47.0, 2
  br i1 %_48, label %bb24, label %panic9

panic8:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9189ca38b788ddd3c87c3f18fef7f53b) #24
          to label %unreachable unwind label %cleanup3

bb24:                                             ; preds = %bb23
  %34 = getelementptr inbounds nuw i32, ptr %B, i64 %_47.0
  %_44 = load i32, ptr %34, align 4
  %35 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_39, i32 %_44)
  %_49.0 = extractvalue { i32, i1 } %35, 0
  %_49.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_49.1, label %panic10, label %bb25

panic9:                                           ; preds = %bb23
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_47.0, i64 2, ptr align 8 @alloc_c259ae0edd27e98661744ff63fef8537) #24
          to label %unreachable unwind label %cleanup3

bb25:                                             ; preds = %bb24
; invoke core::cmp::Ord::max
  %_27 = invoke i32 @_ZN4core3cmp3Ord3max17he5af568255450a80E(i32 %_28, i32 %_49.0)
          to label %bb26 unwind label %cleanup3

panic10:                                          ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_36521ae6702c1c6eb5b2f65b486a061a) #24
          to label %unreachable unwind label %cleanup3

bb26:                                             ; preds = %bb25
  %_53 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_51 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5807702df1733eb7E"(ptr align 8 %dp, i64 %_53, ptr align 8 @alloc_37b0748993523ed2d57b6614aab8d926)
          to label %bb27 unwind label %cleanup3

bb27:                                             ; preds = %bb26
  %_54 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_50 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0446192730943029E"(ptr align 8 %_51, i64 %_54, ptr align 8 @alloc_8ad2094554c434cc4d1fccc83d887e49)
          to label %bb28 unwind label %cleanup3

bb28:                                             ; preds = %bb27
  store i32 %_27, ptr %_50, align 4
  br label %bb14

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb34, %bb32
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb33:                                             ; preds = %bb34, %bb35, %bb32
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds i8, ptr %2, i64 8
  %39 = load i32, ptr %38, align 8
  %40 = insertvalue { ptr, i32 } poison, ptr %37, 0
  %41 = insertvalue { ptr, i32 } %40, i32 %39, 1
  resume { ptr, i32 } %41

bb34:                                             ; preds = %bb35
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hee41de0ccbff9b00E"(ptr align 8 %_6) #22
          to label %bb33 unwind label %terminate
}
