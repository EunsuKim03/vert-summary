define i32 @f_gold(i64 %0, i64 %1, i32 %n, i32 %W) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_20 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_17 = alloca [12 x i8], align 4
  %_16 = alloca [12 x i8], align 4
  %_12 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %wt = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %val = alloca [8 x i8], align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %val, ptr align 8 %4, i64 8, i1 false)
  store i64 %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %wt, ptr align 8 %3, i64 8, i1 false)
  %_7 = sext i32 %W to i64
  %_8.0 = add i64 %_7, 1
  %_8.1 = icmp ult i64 %_8.0, %_7
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h3e5a0015cd066d19E(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_8.0)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3a5baed853ace39dE"(i32 0, i32 %n)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c3a8c81b34625c32f1f7908c4416d4ec) #23
  unreachable

bb25:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h34117bb54cdfefd5E"(ptr align 8 %dp) #22
          to label %bb26 unwind label %terminate

cleanup:                                          ; preds = %bb21, %bb20, %panic5, %bb18, %panic4, %panic3, %panic2, %bb14, %bb12, %bb10, %bb9, %bb7, %bb8, %bb4, %bb1
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb25

bb3:                                              ; preds = %bb1
  %_9.0 = extractvalue { i32, i32 } %5, 0
  %_9.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_9.0, ptr %iter, align 4
  %10 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_9.1, ptr %10, align 4
  br label %bb4

bb4:                                              ; preds = %bb13, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0f578b392cf7c69aE"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_12, align 4
  %14 = getelementptr inbounds i8, ptr %_12, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_12, align 4
  %16 = getelementptr inbounds i8, ptr %_12, i64 4
  %17 = load i32, ptr %16, align 4
  %_14 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_14 to i1
  br i1 %18, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %19 = getelementptr inbounds i8, ptr %_12, i64 4
  %i = load i32, ptr %19, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h17924c5a9728db68E"(ptr sret([12 x i8]) align 4 %_18, i32 0, i32 %W)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
  %_48 = sext i32 %W to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE"(ptr align 8 %dp, i64 %_48, ptr align 8 @alloc_b99b913ed02dc500fd5777c192fdb56e)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb8
  %_0 = load i32, ptr %_46, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h34117bb54cdfefd5E"(ptr align 8 %dp)
  ret i32 %_0

bb9:                                              ; preds = %bb7
; invoke core::iter::traits::iterator::Iterator::rev
  invoke void @_ZN4core4iter6traits8iterator8Iterator3rev17h63bf6bf99fbf3d1cE(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hec15b482b434e383E"(ptr sret([12 x i8]) align 4 %_16, ptr align 4 %_17)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_16, i64 12, i1 false)
  br label %bb12

bb12:                                             ; preds = %bb22, %bb11
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %20 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8f0a2b622678510E"(ptr align 4 %iter1)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_20, align 4
  %23 = getelementptr inbounds i8, ptr %_20, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_20, align 4
  %25 = getelementptr inbounds i8, ptr %_20, i64 4
  %26 = load i32, ptr %25, align 4
  %_22 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_22 to i1
  br i1 %27, label %bb14, label %bb4

bb14:                                             ; preds = %bb13
  %28 = getelementptr inbounds i8, ptr %_20, i64 4
  %j = load i32, ptr %28, align 4
  %_28 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_26 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE"(ptr align 8 %dp, i64 %_28, ptr align 8 @alloc_8b8181c69e903ca20614752db504a40b)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_25 = load i32, ptr %_26, align 4
  %_31 = sext i32 %i to i64
  %_32 = icmp ult i64 %_31, 2
  br i1 %_32, label %bb16, label %panic2

bb16:                                             ; preds = %bb15
  %29 = getelementptr inbounds nuw i32, ptr %val, i64 %_31
  %_30 = load i32, ptr %29, align 4
  %_39 = sext i32 %i to i64
  %_40 = icmp ult i64 %_39, 2
  br i1 %_40, label %bb17, label %panic3

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 2, ptr align 8 @alloc_4a2d00eee1a837ad5dc0935e5f40c6d0) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2
  unreachable

bb17:                                             ; preds = %bb16
  %30 = getelementptr inbounds nuw i32, ptr %wt, i64 %_39
  %_38 = load i32, ptr %30, align 4
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %_38)
  %_41.0 = extractvalue { i32, i1 } %31, 0
  %_41.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_41.1, label %panic4, label %bb18

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_39, i64 2, ptr align 8 @alloc_abba690ac8a7998b12fe182ae0a7d5c1) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_36 = sext i32 %_41.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE"(ptr align 8 %dp, i64 %_36, ptr align 8 @alloc_e15b6233bf0b434cad09b21fff085c7c)
          to label %bb19 unwind label %cleanup

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ec618333e5e2615e271cddf5fb21c332) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_33 = load i32, ptr %_34, align 4
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_30, i32 %_33)
  %_42.0 = extractvalue { i32, i1 } %32, 0
  %_42.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_42.1, label %panic5, label %bb20

bb20:                                             ; preds = %bb19
; invoke core::cmp::max
  %_24 = invoke i32 @_ZN4core3cmp3max17hc94c3e90916108d1E(i32 %_25, i32 %_42.0)
          to label %bb21 unwind label %cleanup

panic5:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4a2d00eee1a837ad5dc0935e5f40c6d0) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_45 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_43 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h73a1e7a675d1f603E"(ptr align 8 %dp, i64 %_45, ptr align 8 @alloc_5cfc26ee85791da17185b43be1de9fe1)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_24, ptr %_43, align 4
  br label %bb12

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb25
  %33 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb26:                                             ; preds = %bb25
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds i8, ptr %2, i64 8
  %36 = load i32, ptr %35, align 8
  %37 = insertvalue { ptr, i32 } poison, ptr %34, 0
  %38 = insertvalue { ptr, i32 } %37, i32 %36, 1
  resume { ptr, i32 } %38
}
