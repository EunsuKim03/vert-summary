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
  %_9 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8853a14c92c9b57dE"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_2003974181c9866eeed3c1787bc30a41)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_22a67b1a3d7b032cf4fd0a431e7df258) #23
  unreachable

bb35:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf56f1e6dc68fe613E"(ptr align 8 %dp) #22
          to label %bb36 unwind label %terminate

cleanup:                                          ; preds = %bb31, %panic9, %bb29, %panic8, %bb27, %panic7, %bb25, %bb24, %panic6, %bb22, %panic5, %bb20, %panic4, %bb18, %bb17, %panic3, %bb15, %panic2, %bb13, %panic1, %bb11, %bb8, %bb9, %bb5, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb35

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

bb5:                                              ; preds = %bb32, %bb10, %bb4
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
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_22, ptr align 8 @alloc_6034a038965d58ecb9ca78594a09c562)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
  %_79 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_77 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_79, ptr align 8 @alloc_fe1a27f7b4eaca354eb9ac3f4f408432)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb9
  %_0 = load i32, ptr %_77, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf56f1e6dc68fe613E"(ptr align 8 %dp)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_19 = load i32, ptr %_20, align 4
  %_18 = icmp ne i32 %_19, -1
  br i1 %_18, label %bb11, label %bb5

bb11:                                             ; preds = %bb10
  %_27 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_25 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_27, ptr align 8 @alloc_357f78b848dd369f83b5c79f9918ef70)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_24 = load i32, ptr %_25, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %a)
  %_34.0 = extractvalue { i32, i1 } %16, 0
  %_34.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_34.1, label %panic1, label %bb13

bb13:                                             ; preds = %bb12
  %_32 = sext i32 %_34.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_30 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_32, ptr align 8 @alloc_c12d4808943bee0749b5f51b9dc956d0)
          to label %bb14 unwind label %cleanup

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_68569d077fe7a717a6f5ebc9739d6f85) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb14:                                             ; preds = %bb13
  %_29 = load i32, ptr %_30, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_29, i32 1)
  %_35.0 = extractvalue { i32, i1 } %17, 0
  %_35.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_35.1, label %panic2, label %bb15

bb15:                                             ; preds = %bb14
; invoke core::cmp::Ord::max
  %_23 = invoke i32 @_ZN4core3cmp3Ord3max17h487a396d72d0e8b1E(i32 %_24, i32 %_35.0)
          to label %bb16 unwind label %cleanup

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_231bd26aa14b2b21f9d1846dd07e6f3b) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %a)
  %_40.0 = extractvalue { i32, i1 } %18, 0
  %_40.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_40.1, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
  %_38 = sext i32 %_40.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_36 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8853a14c92c9b57dE"(ptr align 8 %dp, i64 %_38, ptr align 8 @alloc_87a72a1a10c5a13efcd129d281584882)
          to label %bb18 unwind label %cleanup

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a8583ffa95e14604952ef3f6efe30106) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  store i32 %_23, ptr %_36, align 4
  %_45 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_45, ptr align 8 @alloc_369644180f04f774b2372828e58e0415)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_42 = load i32, ptr %_43, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %b)
  %_52.0 = extractvalue { i32, i1 } %19, 0
  %_52.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_52.1, label %panic4, label %bb20

bb20:                                             ; preds = %bb19
  %_50 = sext i32 %_52.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_50, ptr align 8 @alloc_2a761fed099a947291cab6730ee7b80e)
          to label %bb21 unwind label %cleanup

panic4:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5f5c48541518c9cf32fe068e5ebbf49b) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_47 = load i32, ptr %_48, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_47, i32 1)
  %_53.0 = extractvalue { i32, i1 } %20, 0
  %_53.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_53.1, label %panic5, label %bb22

bb22:                                             ; preds = %bb21
; invoke core::cmp::Ord::max
  %_41 = invoke i32 @_ZN4core3cmp3Ord3max17h487a396d72d0e8b1E(i32 %_42, i32 %_53.0)
          to label %bb23 unwind label %cleanup

panic5:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_044b5cba8c7f8c16de737124dbd880a9) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %b)
  %_58.0 = extractvalue { i32, i1 } %21, 0
  %_58.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_58.1, label %panic6, label %bb24

bb24:                                             ; preds = %bb23
  %_56 = sext i32 %_58.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_54 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8853a14c92c9b57dE"(ptr align 8 %dp, i64 %_56, ptr align 8 @alloc_dae340ae601cb6b4166850b588f9b121)
          to label %bb25 unwind label %cleanup

panic6:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cad92bf6b166eacb822d7dfdee760267) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  store i32 %_41, ptr %_54, align 4
  %_63 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_63, ptr align 8 @alloc_cb3df49b9860cd89125e3d3d9e9789cc)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_60 = load i32, ptr %_61, align 4
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %c)
  %_70.0 = extractvalue { i32, i1 } %22, 0
  %_70.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_70.1, label %panic7, label %bb27

bb27:                                             ; preds = %bb26
  %_68 = sext i32 %_70.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d9cdd7f424c2681E"(ptr align 8 %dp, i64 %_68, ptr align 8 @alloc_efc831102a8895606078422a5b1c4e03)
          to label %bb28 unwind label %cleanup

panic7:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a1b929043f0c64d8ea44131248cd93c9) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_65 = load i32, ptr %_66, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_65, i32 1)
  %_71.0 = extractvalue { i32, i1 } %23, 0
  %_71.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_71.1, label %panic8, label %bb29

bb29:                                             ; preds = %bb28
; invoke core::cmp::Ord::max
  %_59 = invoke i32 @_ZN4core3cmp3Ord3max17h487a396d72d0e8b1E(i32 %_60, i32 %_71.0)
          to label %bb30 unwind label %cleanup

panic8:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dfaff28f3a6e592d9b4369eece577cfe) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %c)
  %_76.0 = extractvalue { i32, i1 } %24, 0
  %_76.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_76.1, label %panic9, label %bb31

bb31:                                             ; preds = %bb30
  %_74 = sext i32 %_76.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_72 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8853a14c92c9b57dE"(ptr align 8 %dp, i64 %_74, ptr align 8 @alloc_5b4a9a5003f0279164d10e926812af39)
          to label %bb32 unwind label %cleanup

panic9:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_679d56c90acf82a3e10f3a684b1e6385) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  store i32 %_59, ptr %_72, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb35
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb36:                                             ; preds = %bb35
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds i8, ptr %0, i64 8
  %28 = load i32, ptr %27, align 8
  %29 = insertvalue { ptr, i32 } poison, ptr %26, 0
  %30 = insertvalue { ptr, i32 } %29, i32 %28, 1
  resume { ptr, i32 } %30
}
