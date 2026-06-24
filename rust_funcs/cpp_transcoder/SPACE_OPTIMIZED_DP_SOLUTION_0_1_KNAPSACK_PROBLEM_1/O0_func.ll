define i32 @f_gold(i64 %0, i64 %1, i32 %n, i32 %W) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_22 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
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
  %_11 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7601bc414c022f49E"(i64 0, i64 %_11)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_48005afce13d6402d5d4a1181992007f) #23
  unreachable

bb24:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h34117bb54cdfefd5E"(ptr align 8 %dp) #22
          to label %bb25 unwind label %terminate

cleanup:                                          ; preds = %bb20, %bb19, %panic6, %bb17, %panic5, %panic4, %panic3, %bb13, %bb11, %bb9, %panic2, %bb8, %bb4, %bb1
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb24

bb3:                                              ; preds = %bb1
  %_9.0 = extractvalue { i64, i64 } %5, 0
  %_9.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_9.0, ptr %iter, align 8
  %10 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_9.1, ptr %10, align 8
  br label %bb4

bb4:                                              ; preds = %bb12, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hddd6a73dc56570dbE"(ptr align 8 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %_13, align 8
  %14 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %13, ptr %14, align 8
  %_15 = load i64, ptr %_13, align 8
  %15 = getelementptr inbounds i8, ptr %_13, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = trunc nuw i64 %_15 to i1
  br i1 %17, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %18 = getelementptr inbounds i8, ptr %_13, i64 8
  %i = load i64, ptr %18, align 8
  %_20 = icmp ult i64 %i, 2
  br i1 %_20, label %bb9, label %panic2

bb8:                                              ; preds = %bb5
  %_48 = sext i32 %W to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE"(ptr align 8 %dp, i64 %_48, ptr align 8 @alloc_14575f03b3f5bb9ec325ea7c37c719ad)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb8
  %_0 = load i32, ptr %_46, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h34117bb54cdfefd5E"(ptr align 8 %dp)
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %19 = getelementptr inbounds nuw i32, ptr %wt, i64 %i
  %_19 = load i32, ptr %19, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %20 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3a5baed853ace39dE"(i32 %W, i32 %_19)
          to label %bb10 unwind label %cleanup

panic2:                                           ; preds = %bb7
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_dfef050c8d8a9c0d11faf6997d41f563) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic6, %panic5, %panic4, %panic3, %panic2
  unreachable

bb10:                                             ; preds = %bb9
  %_17.0 = extractvalue { i32, i32 } %20, 0
  %_17.1 = extractvalue { i32, i32 } %20, 1
  store i32 %_17.0, ptr %iter1, align 4
  %21 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_17.1, ptr %21, align 4
  br label %bb11

bb11:                                             ; preds = %bb21, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %22 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0f578b392cf7c69aE"(ptr align 4 %iter1)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = extractvalue { i32, i32 } %22, 1
  store i32 %23, ptr %_22, align 4
  %25 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %_22, align 4
  %27 = getelementptr inbounds i8, ptr %_22, i64 4
  %28 = load i32, ptr %27, align 4
  %_24 = zext i32 %26 to i64
  %29 = trunc nuw i64 %_24 to i1
  br i1 %29, label %bb13, label %bb4

bb13:                                             ; preds = %bb12
  %30 = getelementptr inbounds i8, ptr %_22, i64 4
  %j = load i32, ptr %30, align 4
  %_30 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE"(ptr align 8 %dp, i64 %_30, ptr align 8 @alloc_15d611e86a8a3ec04b4b85fa4a700ae1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_27 = load i32, ptr %_28, align 4
  %_33 = icmp ult i64 %i, 2
  br i1 %_33, label %bb15, label %panic3

bb15:                                             ; preds = %bb14
  %31 = getelementptr inbounds nuw i32, ptr %val, i64 %i
  %_32 = load i32, ptr %31, align 4
  %_40 = icmp ult i64 %i, 2
  br i1 %_40, label %bb16, label %panic4

panic3:                                           ; preds = %bb14
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_3991556a9f3c1aefa5e7112af678ca5b) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %32 = getelementptr inbounds nuw i32, ptr %wt, i64 %i
  %_39 = load i32, ptr %32, align 4
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %_39)
  %_41.0 = extractvalue { i32, i1 } %33, 0
  %_41.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_41.1, label %panic5, label %bb17

panic4:                                           ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_79dbccacdbf6e7869afd329d28276ad4) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_37 = sext i32 %_41.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc443f87132c5da7eE"(ptr align 8 %dp, i64 %_37, ptr align 8 @alloc_bd4d7725266ceaad623f5114d068d38d)
          to label %bb18 unwind label %cleanup

panic5:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_11434c86a0462fb8e52b38a7cdadb95b) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_34 = load i32, ptr %_35, align 4
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 %_34)
  %_42.0 = extractvalue { i32, i1 } %34, 0
  %_42.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_42.1, label %panic6, label %bb19

bb19:                                             ; preds = %bb18
  %_26 = invoke i32 @max(i32 %_27, i32 %_42.0)
          to label %bb20 unwind label %cleanup

panic6:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3991556a9f3c1aefa5e7112af678ca5b) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_45 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_43 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h73a1e7a675d1f603E"(ptr align 8 %dp, i64 %_45, ptr align 8 @alloc_42d4756ed1dcb67a3f3d45b8e897c72d)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 %_26, ptr %_43, align 4
  br label %bb11

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb24
  %35 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb25:                                             ; preds = %bb24
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds i8, ptr %2, i64 8
  %38 = load i32, ptr %37, align 8
  %39 = insertvalue { ptr, i32 } poison, ptr %36, 0
  %40 = insertvalue { ptr, i32 } %39, i32 %38, 1
  resume { ptr, i32 } %40
}
