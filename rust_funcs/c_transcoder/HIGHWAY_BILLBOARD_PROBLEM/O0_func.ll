define i32 @f_gold(i32 %m, i64 %0, i64 %1, i32 %n, i32 %t) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %nxtbb = alloca [4 x i8], align 4
  %max_rev = alloca [24 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %revenue = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 8 %4, i64 8, i1 false)
  store i64 %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %revenue, ptr align 8 %3, i64 8, i1 false)
  %_8 = sext i32 %m to i64
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h5c2c4d128151d18dE(ptr sret([24 x i8]) align 8 %max_rev, i32 0, i64 %_9.0)
  store i32 0, ptr %nxtbb, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hddbae6801a670f2eE"(ptr sret([12 x i8]) align 4 %_12, i32 1, i32 %m)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4cbaffc45b1e17f556b32506977644bb) #23
  unreachable

bb41:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb25f0935414a1de3E"(ptr align 8 %max_rev) #22
          to label %bb42 unwind label %terminate

cleanup:                                          ; preds = %bb14, %bb13, %panic11, %panic10, %bb21, %bb20, %panic9, %bb18, %panic8, %bb31, %bb30, %bb29, %panic7, %panic6, %panic5, %bb25, %panic4, %panic3, %panic2, %bb37, %bb36, %panic1, %bb9, %bb5, %bb3, %bb1
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb41

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf9a828d52ba9d7bdE"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb15, %bb34, %bb38, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %9 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hea90321226d0c2ceE"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_14, align 4
  %12 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_14, align 4
  %14 = getelementptr inbounds i8, ptr %_14, i64 4
  %15 = load i32, ptr %14, align 4
  %_16 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_16 to i1
  br i1 %16, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %17 = getelementptr inbounds i8, ptr %_14, i64 4
  %i = load i32, ptr %17, align 4
  %_19 = load i32, ptr %nxtbb, align 4
  %_18 = icmp slt i32 %_19, %n
  br i1 %_18, label %bb10, label %bb35

bb9:                                              ; preds = %bb6
  %_85 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_83 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E"(ptr align 8 %max_rev, i64 %_85, ptr align 8 @alloc_536f2742b82e356298628f02acbdc513)
          to label %bb39 unwind label %cleanup

bb39:                                             ; preds = %bb9
  %_0 = load i32, ptr %_83, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb25f0935414a1de3E"(ptr align 8 %max_rev)
  ret i32 %_0

bb35:                                             ; preds = %bb8
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_79.0 = extractvalue { i32, i1 } %18, 0
  %_79.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_79.1, label %panic1, label %bb36

bb10:                                             ; preds = %bb8
  %_23 = load i32, ptr %nxtbb, align 4
  %_22 = sext i32 %_23 to i64
  %_24 = icmp ult i64 %_22, 2
  br i1 %_24, label %bb11, label %panic2

bb36:                                             ; preds = %bb35
  %_77 = sext i32 %_79.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E"(ptr align 8 %max_rev, i64 %_77, ptr align 8 @alloc_f69e59c62709a2b35b52782215373c56)
          to label %bb37 unwind label %cleanup

panic1:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_80b635efdad806589de9a74ba95472d1) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb37:                                             ; preds = %bb36
  %_74 = load i32, ptr %_75, align 4
  %_82 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_80 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E"(ptr align 8 %max_rev, i64 %_82, ptr align 8 @alloc_e878cae4730fdfb82d1e8204768a81ec)
          to label %bb38 unwind label %cleanup

bb38:                                             ; preds = %bb37
  store i32 %_74, ptr %_80, align 4
  br label %bb5

bb11:                                             ; preds = %bb10
  %19 = getelementptr inbounds nuw i32, ptr %x, i64 %_22
  %_21 = load i32, ptr %19, align 4
  %_20 = icmp ne i32 %_21, %i
  br i1 %_20, label %bb12, label %bb16

panic2:                                           ; preds = %bb10
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_16f2540286b2fb06b3b1a2ae5091d25c) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb11
  %_34 = icmp sle i32 %i, %t
  br i1 %_34, label %bb17, label %bb23

bb12:                                             ; preds = %bb11
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_30.0 = extractvalue { i32, i1 } %20, 0
  %_30.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_30.1, label %panic11, label %bb13

bb23:                                             ; preds = %bb16
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %t)
  %_57.0 = extractvalue { i32, i1 } %21, 0
  %_57.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_57.1, label %panic3, label %bb24

bb17:                                             ; preds = %bb16
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_41.0 = extractvalue { i32, i1 } %22, 0
  %_41.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_41.1, label %panic8, label %bb18

bb24:                                             ; preds = %bb23
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_57.0, i32 1)
  %_58.0 = extractvalue { i32, i1 } %23, 0
  %_58.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_58.1, label %panic4, label %bb25

panic3:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c7716cf2fa08fa6fce36fe8622d3f796) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_54 = sext i32 %_58.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_52 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E"(ptr align 8 %max_rev, i64 %_54, ptr align 8 @alloc_7031c29a128e8113c21ecacc0e42152a)
          to label %bb26 unwind label %cleanup

panic4:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c0d086cf687fdc3ee956c9f7a27b8527) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_51 = load i32, ptr %_52, align 4
  %_61 = load i32, ptr %nxtbb, align 4
  %_60 = sext i32 %_61 to i64
  %_62 = icmp ult i64 %_60, 2
  br i1 %_62, label %bb27, label %panic5

bb27:                                             ; preds = %bb26
  %24 = getelementptr inbounds nuw i32, ptr %revenue, i64 %_60
  %_59 = load i32, ptr %24, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_51, i32 %_59)
  %_63.0 = extractvalue { i32, i1 } %25, 0
  %_63.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_63.1, label %panic6, label %bb28

panic5:                                           ; preds = %bb26
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_60, i64 2, ptr align 8 @alloc_a21e769ac988377094591aae9adc806c) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_69.0 = extractvalue { i32, i1 } %26, 0
  %_69.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_69.1, label %panic7, label %bb29

panic6:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f8482e3cc08a255025281005139dfcdd) #24
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_67 = sext i32 %_69.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_65 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E"(ptr align 8 %max_rev, i64 %_67, ptr align 8 @alloc_99c267bd3f86329db36ec8dcb431e339)
          to label %bb30 unwind label %cleanup

panic7:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_73fc921ee2126655a333323d1e979519) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_64 = load i32, ptr %_65, align 4
  %_49 = invoke i32 @max(i32 %_63.0, i32 %_64)
          to label %bb31 unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_72 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_70 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E"(ptr align 8 %max_rev, i64 %_72, ptr align 8 @alloc_723c3865e6155afcf96c6cbae8511924)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb31
  store i32 %_49, ptr %_70, align 4
  br label %bb33

bb33:                                             ; preds = %bb22, %bb32
  %27 = load i32, ptr %nxtbb, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1)
  %_73.0 = extractvalue { i32, i1 } %28, 0
  %_73.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_73.1, label %panic10, label %bb34

bb18:                                             ; preds = %bb17
  %_39 = sext i32 %_41.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E"(ptr align 8 %max_rev, i64 %_39, ptr align 8 @alloc_14cf765e187977fde38349a60d7dd1e6)
          to label %bb19 unwind label %cleanup

panic8:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_412c6b0f7ee34ab4695a9dfb7ba06eb3) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_36 = load i32, ptr %_37, align 4
  %_44 = load i32, ptr %nxtbb, align 4
  %_43 = sext i32 %_44 to i64
  %_45 = icmp ult i64 %_43, 2
  br i1 %_45, label %bb20, label %panic9

bb20:                                             ; preds = %bb19
  %29 = getelementptr inbounds nuw i32, ptr %revenue, i64 %_43
  %_42 = load i32, ptr %29, align 4
  %_35 = invoke i32 @max(i32 %_36, i32 %_42)
          to label %bb21 unwind label %cleanup

panic9:                                           ; preds = %bb19
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_43, i64 2, ptr align 8 @alloc_d027e7eeea9cd4897874c841c4422a25) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_48 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_46 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E"(ptr align 8 %max_rev, i64 %_48, ptr align 8 @alloc_76be888b18e78490d4a9f5680151dba5)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_35, ptr %_46, align 4
  br label %bb33

bb34:                                             ; preds = %bb33
  store i32 %_73.0, ptr %nxtbb, align 4
  br label %bb5

panic10:                                          ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d23046ca34eea01e17b6566157a9b2a6) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_28 = sext i32 %_30.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_26 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2d8fbf49de91de00E"(ptr align 8 %max_rev, i64 %_28, ptr align 8 @alloc_bc933fe1ba23bbd69f495b428da4a369)
          to label %bb14 unwind label %cleanup

panic11:                                          ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f3af389a3b950d803f9ae75c2c69beb6) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_25 = load i32, ptr %_26, align 4
  %_33 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_31 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbccda8dbe8236019E"(ptr align 8 %max_rev, i64 %_33, ptr align 8 @alloc_2ff016569fc7c08ad7356a631862c77d)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  store i32 %_25, ptr %_31, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb41
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb42:                                             ; preds = %bb41
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds i8, ptr %2, i64 8
  %33 = load i32, ptr %32, align 8
  %34 = insertvalue { ptr, i32 } poison, ptr %31, 0
  %35 = insertvalue { ptr, i32 } %34, i32 %33, 1
  resume { ptr, i32 } %35
}
