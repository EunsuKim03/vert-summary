define i32 @f_gold(i32 %n, i32 %insert, i32 %remove, i32 %copy) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %_5 = icmp eq i32 %n, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_6 = icmp eq i32 %n, 1
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb43

bb4:                                              ; preds = %bb2
  %_9 = sext i32 %n to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic, label %bb5

bb3:                                              ; preds = %bb2
  store i32 %insert, ptr %_0, align 4
  br label %bb43

bb5:                                              ; preds = %bb4
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hb58941cf2f976412E(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_10.0)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hd0f1c02d49e2febcE"(ptr sret([12 x i8]) align 4 %_12, i32 1, i32 %n)
          to label %bb7 unwind label %cleanup

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c5c74d2345955c32aba52cfa3e9c4219) #23
  unreachable

bb44:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE"(ptr align 8 %dp) #22
          to label %bb45 unwind label %terminate

cleanup:                                          ; preds = %bb26, %bb25, %panic11, %bb23, %panic10, %bb20, %bb19, %panic9, %bb17, %panic8, %bb40, %bb39, %panic7, %panic6, %bb36, %panic5, %panic4, %bb32, %bb31, %panic3, %bb29, %panic2, %panic1, %bb13, %bb9, %bb7, %bb5
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb44

bb7:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9acf4f1193599f69E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb9

bb9:                                              ; preds = %bb27, %bb41, %bb8
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
  %_88 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_86 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_88, ptr align 8 @alloc_d7a8e2adc7ec0f56c5780171e97fb02d)
          to label %bb42 unwind label %cleanup

bb42:                                             ; preds = %bb13
  %14 = load i32, ptr %_86, align 4
  store i32 %14, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE"(ptr align 8 %dp)
  br label %bb43

bb43:                                             ; preds = %bb1, %bb3, %bb42
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb14:                                             ; preds = %bb12
  %_22 = icmp eq i32 %i, -2147483648
  %_23 = and i1 false, %_22
  br i1 %_23, label %panic1, label %bb15

bb15:                                             ; preds = %bb14
  %_19 = srem i32 %i, 2
  %_18 = icmp eq i32 %_19, 0
  br i1 %_18, label %bb16, label %bb28

panic1:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_ff59606768ecfb108ee9973d6129508c) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb28:                                             ; preds = %bb15
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_58.0 = extractvalue { i32, i1 } %16, 0
  %_58.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_58.1, label %panic2, label %bb29

bb16:                                             ; preds = %bb15
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_29.0 = extractvalue { i32, i1 } %17, 0
  %_29.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_29.1, label %panic8, label %bb17

bb29:                                             ; preds = %bb28
  %_56 = sext i32 %_58.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_54 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_56, ptr align 8 @alloc_fe4b15ced38097695000c15ed93061d6)
          to label %bb30 unwind label %cleanup

panic2:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_064dbe740ace50c36797c45224c3c80a) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_53 = load i32, ptr %_54, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_53, i32 %insert)
  %_59.0 = extractvalue { i32, i1 } %18, 0
  %_59.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_59.1, label %panic3, label %bb31

bb31:                                             ; preds = %bb30
  %_62 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE"(ptr align 8 %dp, i64 %_62, ptr align 8 @alloc_53d7ddfc3fb0fef0792666f9b24fb355)
          to label %bb32 unwind label %cleanup

panic3:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c94d472e0bc1a01957cd3a0f25b585e2) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  store i32 %_59.0, ptr %_60, align 4
  %_67 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_65 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_67, ptr align 8 @alloc_18372fd498fd6bdccf84f1241b7f5de0)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb32
  %_64 = load i32, ptr %_65, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_76.0 = extractvalue { i32, i1 } %19, 0
  %_76.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_76.1, label %panic4, label %bb34

bb34:                                             ; preds = %bb33
  br label %bb35

panic4:                                           ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7874a2eda3c40324ffcf968ba1d182a6) #24
          to label %unreachable unwind label %cleanup

bb35:                                             ; preds = %bb34
  %_79 = icmp eq i32 %_76.0, -2147483648
  %_80 = and i1 false, %_79
  br i1 %_80, label %panic5, label %bb36

bb36:                                             ; preds = %bb35
  %_74 = sdiv i32 %_76.0, 2
  %_73 = sext i32 %_74 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_71 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_73, ptr align 8 @alloc_eb6ecc6d1757dd01ec3512c961bd2b31)
          to label %bb37 unwind label %cleanup

panic5:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_14de221f32689f5a6bcfc07ecda30025) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %bb36
  %_70 = load i32, ptr %_71, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_70, i32 %copy)
  %_81.0 = extractvalue { i32, i1 } %20, 0
  %_81.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_81.1, label %panic6, label %bb38

bb38:                                             ; preds = %bb37
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_81.0, i32 %remove)
  %_82.0 = extractvalue { i32, i1 } %21, 0
  %_82.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_82.1, label %panic7, label %bb39

panic6:                                           ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d892541551a245f3b15fd19edc422c11) #24
          to label %unreachable unwind label %cleanup

bb39:                                             ; preds = %bb38
; invoke core::cmp::min
  %_63 = invoke i32 @_ZN4core3cmp3min17h041f411007400edcE(i32 %_64, i32 %_82.0)
          to label %bb40 unwind label %cleanup

panic7:                                           ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d892541551a245f3b15fd19edc422c11) #24
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %bb39
  %_85 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_83 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE"(ptr align 8 %dp, i64 %_85, ptr align 8 @alloc_a6c6215016f16659f182acaf39bdf2ec)
          to label %bb41 unwind label %cleanup

bb41:                                             ; preds = %bb40
  store i32 %_63, ptr %_83, align 4
  br label %bb9

bb17:                                             ; preds = %bb16
  %_27 = sext i32 %_29.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_25 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_27, ptr align 8 @alloc_ffb41230b81c253686b828f337e688af)
          to label %bb18 unwind label %cleanup

panic8:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_178d61b8cbe8c9d8e9011b65072a7766) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_24 = load i32, ptr %_25, align 4
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_24, i32 %insert)
  %_30.0 = extractvalue { i32, i1 } %22, 0
  %_30.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_30.1, label %panic9, label %bb19

bb19:                                             ; preds = %bb18
  %_33 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_31 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE"(ptr align 8 %dp, i64 %_33, ptr align 8 @alloc_c3efc25e74d281167c8465fa10ee9beb)
          to label %bb20 unwind label %cleanup

panic9:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6c382ffeb82fbf1af46257ebe69c4d81) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i32 %_30.0, ptr %_31, align 4
  %_38 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_38, ptr align 8 @alloc_4c5f045056744bd5bc8e014f2edb4275)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_35 = load i32, ptr %_36, align 4
  br label %bb22

bb22:                                             ; preds = %bb21
  %_47 = icmp eq i32 %i, -2147483648
  %_48 = and i1 false, %_47
  br i1 %_48, label %panic10, label %bb23

bb23:                                             ; preds = %bb22
  %_44 = sdiv i32 %i, 2
  %_43 = sext i32 %_44 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_41 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0b6fcdfdae930024E"(ptr align 8 %dp, i64 %_43, ptr align 8 @alloc_35352c2ff09062dcf5bbfae369e0b004)
          to label %bb24 unwind label %cleanup

panic10:                                          ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_7ee0a8ea79312e49affd15e429ed43a7) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_40 = load i32, ptr %_41, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_40, i32 %copy)
  %_49.0 = extractvalue { i32, i1 } %23, 0
  %_49.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_49.1, label %panic11, label %bb25

bb25:                                             ; preds = %bb24
; invoke core::cmp::min
  %_34 = invoke i32 @_ZN4core3cmp3min17h041f411007400edcE(i32 %_35, i32 %_49.0)
          to label %bb26 unwind label %cleanup

panic11:                                          ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ec54faf23e23867e8712c738c629b6ba) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_52 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_50 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha0eedb74452b848eE"(ptr align 8 %dp, i64 %_52, ptr align 8 @alloc_6efd4fb374375bfe165a36d50b53ff14)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  store i32 %_34, ptr %_50, align 4
  br label %bb9

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb44
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb45:                                             ; preds = %bb44
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = insertvalue { ptr, i32 } poison, ptr %25, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}
