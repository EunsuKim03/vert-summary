define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %jumps = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h05ba91f93e722f7aE(ptr sret([24 x i8]) align 8 %jumps, i32 0, i64 %_4)
  %n2 = sext i32 %n to i64
  %_6 = icmp eq i64 %n2, 0
  br i1 %_6, label %bb4, label %bb2

bb2:                                              ; preds = %start
  br label %bb3

bb4:                                              ; preds = %bb3, %start
  store i32 2147483647, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb4561ff1eaf87ee6E"(ptr align 8 %jumps)
  br label %bb30

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_8 = load i32, ptr %3, align 4
  %_7 = icmp eq i32 %_8, 0
  br i1 %_7, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_11 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE"(ptr align 8 %jumps, i64 0, ptr align 8 @alloc_d6e544822466e9d9bd9b7824c0f4b659)
          to label %bb6 unwind label %cleanup

bb31:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb4561ff1eaf87ee6E"(ptr align 8 %jumps) #22
          to label %bb32 unwind label %terminate

cleanup:                                          ; preds = %bb26, %bb25, %panic5, %bb23, %bb22, %bb20, %panic4, %panic3, %bb15, %bb13, %bb11, %bb28, %panic, %bb8, %bb6, %bb5
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb31

bb6:                                              ; preds = %bb5
  store i32 0, ptr %_11, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %8 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1d0dfcbda7916857E"(i64 1, i64 %n2)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %_13.0 = extractvalue { i64, i64 } %8, 0
  %_13.1 = extractvalue { i64, i64 } %8, 1
  store i64 %_13.0, ptr %iter, align 8
  %9 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_13.1, ptr %9, align 8
  br label %bb8

bb8:                                              ; preds = %bb27, %bb16, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %10 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h26609f92704adafaE"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  store i64 %11, ptr %_16, align 8
  %13 = getelementptr inbounds i8, ptr %_16, i64 8
  store i64 %12, ptr %13, align 8
  %_18 = load i64, ptr %_16, align 8
  %14 = getelementptr inbounds i8, ptr %_16, i64 8
  %15 = load i64, ptr %14, align 8
  %16 = trunc nuw i64 %_18 to i1
  br i1 %16, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %17 = getelementptr inbounds i8, ptr %_16, i64 8
  %i = load i64, ptr %17, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_20 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE"(ptr align 8 %jumps, i64 %i, ptr align 8 @alloc_dd22ba1095dbe895d2e3af478ef230af)
          to label %bb13 unwind label %cleanup

bb12:                                             ; preds = %bb9
  %_53.0 = sub i64 %n2, 1
  %_53.1 = icmp ult i64 %n2, 1
  br i1 %_53.1, label %panic, label %bb28

bb28:                                             ; preds = %bb12
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E"(ptr align 8 %jumps, i64 %_53.0, ptr align 8 @alloc_c1a85876da51583727a8658cc311a67e)
          to label %bb29 unwind label %cleanup

panic:                                            ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bd866515efe3ae42323b2b7443994fa1) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic
  unreachable

bb29:                                             ; preds = %bb28
  %18 = load i32, ptr %_50, align 4
  store i32 %18, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb4561ff1eaf87ee6E"(ptr align 8 %jumps)
  br label %bb30

bb30:                                             ; preds = %bb4, %bb29
  %19 = load i32, ptr %_0, align 4
  ret i32 %19

bb13:                                             ; preds = %bb11
  store i32 2147483647, ptr %_20, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %20 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1d0dfcbda7916857E"(i64 0, i64 %i)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_22.0 = extractvalue { i64, i64 } %20, 0
  %_22.1 = extractvalue { i64, i64 } %20, 1
  store i64 %_22.0, ptr %iter1, align 8
  %21 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_22.1, ptr %21, align 8
  br label %bb15

bb15:                                             ; preds = %bb21, %bb19, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %22 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h26609f92704adafaE"(ptr align 8 %iter1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  store i64 %23, ptr %_25, align 8
  %25 = getelementptr inbounds i8, ptr %_25, i64 8
  store i64 %24, ptr %25, align 8
  %_27 = load i64, ptr %_25, align 8
  %26 = getelementptr inbounds i8, ptr %_25, i64 8
  %27 = load i64, ptr %26, align 8
  %28 = trunc nuw i64 %_27 to i1
  br i1 %28, label %bb17, label %bb8

bb17:                                             ; preds = %bb16
  %29 = getelementptr inbounds i8, ptr %_25, i64 8
  %j = load i64, ptr %29, align 8
  %_33 = icmp ult i64 %j, 2
  br i1 %_33, label %bb18, label %panic3

bb18:                                             ; preds = %bb17
  %30 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_32 = load i32, ptr %30, align 4
  %_31 = sext i32 %_32 to i64
  %_34.0 = add i64 %j, %_31
  %_34.1 = icmp ult i64 %_34.0, %j
  br i1 %_34.1, label %panic4, label %bb19

panic3:                                           ; preds = %bb17
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_d2cd035e3faf4f5d69b15d817ff26c8a) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_29 = icmp ule i64 %i, %_34.0
  br i1 %_29, label %bb20, label %bb15

panic4:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1517793b44be2c6d9415689198bfd7e2) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E"(ptr align 8 %jumps, i64 %j, ptr align 8 @alloc_eec47f9a74e5a91fa4ba9f3c0e23aea6)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_36 = load i32, ptr %_37, align 4
  %_35 = icmp ne i32 %_36, 2147483647
  br i1 %_35, label %bb22, label %bb15

bb22:                                             ; preds = %bb21
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_41 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E"(ptr align 8 %jumps, i64 %i, ptr align 8 @alloc_d4de831250d3fb2044f8fa96b653be93)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_40 = load i32, ptr %_41, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h408b0c0fe04f5a90E"(ptr align 8 %jumps, i64 %j, ptr align 8 @alloc_e3a347fb956f01c6f916a6558184954d)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_44 = load i32, ptr %_45, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_44, i32 1)
  %_47.0 = extractvalue { i32, i1 } %31, 0
  %_47.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_47.1, label %panic5, label %bb25

bb25:                                             ; preds = %bb24
  %_39 = invoke i32 @min(i32 %_40, i32 %_47.0)
          to label %bb26 unwind label %cleanup

panic5:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0a1ca756e349ccf6698f36ea752a4954) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_48 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h98eb72256816576bE"(ptr align 8 %jumps, i64 %i, ptr align 8 @alloc_14c0d8e02a72e0f866e318ec7b0ef291)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  store i32 %_39, ptr %_48, align 4
  br label %bb8

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb31
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb32:                                             ; preds = %bb31
  %33 = load ptr, ptr %1, align 8
  %34 = getelementptr inbounds i8, ptr %1, i64 8
  %35 = load i32, ptr %34, align 8
  %36 = insertvalue { ptr, i32 } poison, ptr %33, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37
}
