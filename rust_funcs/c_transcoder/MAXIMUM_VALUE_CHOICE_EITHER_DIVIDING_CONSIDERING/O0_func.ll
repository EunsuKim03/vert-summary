define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %res = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE(ptr sret([24 x i8]) align 8 %res, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E"(ptr align 8 %res, i64 0, ptr align 8 @alloc_856d0050389957213856bf4110369f9b)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5f1a404b88e560992df8d8ab10c0d7f8) #23
  unreachable

bb31:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he397cdff1ab61c43E"(ptr align 8 %res) #22
          to label %bb32 unwind label %terminate

cleanup:                                          ; preds = %bb27, %bb26, %panic7, %bb24, %panic6, %panic5, %bb20, %panic4, %panic3, %bb16, %panic2, %bb13, %panic1, %bb11, %bb7, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb31

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_6, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E"(ptr align 8 %res, i64 1, ptr align 8 @alloc_a5689cd88f5fccdaf2e2d8a638544e02)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_8, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17heb0dd712bc6b83d2E"(ptr sret([12 x i8]) align 4 %_11, i32 2, i32 %n)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8cf25bd4b1e68aa5E"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb28, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2f8f57792f3be234E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_13, align 4
  %8 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_13, align 4
  %10 = getelementptr inbounds i8, ptr %_13, i64 4
  %11 = load i32, ptr %10, align 4
  %_15 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_15 to i1
  br i1 %12, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %13 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %13, align 4
  br label %bb12

bb11:                                             ; preds = %bb8
  %_65 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE"(ptr align 8 %res, i64 %_65, ptr align 8 @alloc_922d3e5dd449da4004e4c265f404d79b)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb11
  %_0 = load i32, ptr %_63, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he397cdff1ab61c43E"(ptr align 8 %res)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %_28 = icmp eq i32 %i, -2147483648
  %_29 = and i1 false, %_28
  br i1 %_29, label %panic1, label %bb13

bb13:                                             ; preds = %bb12
  %_25 = sdiv i32 %i, 2
  %_24 = sext i32 %_25 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_22 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE"(ptr align 8 %res, i64 %_24, ptr align 8 @alloc_a0dd2f1b59cc390a0791f197661fee9a)
          to label %bb14 unwind label %cleanup

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_e0d5b654a89a631812750313247511b3) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb14:                                             ; preds = %bb13
  %_21 = load i32, ptr %_22, align 4
  br label %bb15

bb15:                                             ; preds = %bb14
  %_37 = icmp eq i32 %i, -2147483648
  %_38 = and i1 false, %_37
  br i1 %_38, label %panic2, label %bb16

bb16:                                             ; preds = %bb15
  %_34 = sdiv i32 %i, 3
  %_33 = sext i32 %_34 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_31 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE"(ptr align 8 %res, i64 %_33, ptr align 8 @alloc_935d792ba2260ee0c5a716a042b48504)
          to label %bb17 unwind label %cleanup

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_c616fb21d26f9fc6aa8711af76dc901b) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_30 = load i32, ptr %_31, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_21, i32 %_30)
  %_39.0 = extractvalue { i32, i1 } %14, 0
  %_39.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_39.1, label %panic3, label %bb18

bb18:                                             ; preds = %bb17
  br label %bb19

panic3:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cd3f0aa308678e485194402df9d5cb70) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_47 = icmp eq i32 %i, -2147483648
  %_48 = and i1 false, %_47
  br i1 %_48, label %panic4, label %bb20

bb20:                                             ; preds = %bb19
  %_44 = sdiv i32 %i, 4
  %_43 = sext i32 %_44 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_41 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE"(ptr align 8 %res, i64 %_43, ptr align 8 @alloc_6c521137228d9fe891010eda7fa4d56c)
          to label %bb21 unwind label %cleanup

panic4:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_d8b87544809e88f51bcaed034fd5ff62) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_40 = load i32, ptr %_41, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_39.0, i32 %_40)
  %_49.0 = extractvalue { i32, i1 } %15, 0
  %_49.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_49.1, label %panic5, label %bb22

bb22:                                             ; preds = %bb21
  br label %bb23

panic5:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cd3f0aa308678e485194402df9d5cb70) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_57 = icmp eq i32 %i, -2147483648
  %_58 = and i1 false, %_57
  br i1 %_58, label %panic6, label %bb24

bb24:                                             ; preds = %bb23
  %_54 = sdiv i32 %i, 5
  %_53 = sext i32 %_54 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE"(ptr align 8 %res, i64 %_53, ptr align 8 @alloc_cdf144296feb38428557865e2f326cf2)
          to label %bb25 unwind label %cleanup

panic6:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_86cf81f7f2cd6116a4fa82c02a712517) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_50 = load i32, ptr %_51, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_49.0, i32 %_50)
  %_59.0 = extractvalue { i32, i1 } %16, 0
  %_59.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_59.1, label %panic7, label %bb26

bb26:                                             ; preds = %bb25
; invoke core::cmp::max
  %_17 = invoke i32 @_ZN4core3cmp3max17h02d21dd8cecebb17E(i32 %i, i32 %_59.0)
          to label %bb27 unwind label %cleanup

panic7:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cd3f0aa308678e485194402df9d5cb70) #24
          to label %unreachable unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_62 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E"(ptr align 8 %res, i64 %_62, ptr align 8 @alloc_c6131cda3da35b7101277a1d2443691e)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  store i32 %_17, ptr %_60, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb31
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb32:                                             ; preds = %bb31
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 8
  %21 = insertvalue { ptr, i32 } poison, ptr %18, 0
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1
  resume { ptr, i32 } %22
}
