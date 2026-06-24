define i32 @f_gold(i64 %0, i32 %N, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_22 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %MS = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_5 = sext i32 %N to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17had6ac58c0ad0fbd1E(ptr sret([24 x i8]) align 8 %MS, i32 0, i64 %_5)
  %_8 = sext i32 %N to i64
  %_9.0 = sub i64 %_8, 1
  %_9.1 = icmp ult i64 %_8, 1
  br i1 %_9.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_10 = icmp ult i64 %_9.0, 2
  br i1 %_10, label %bb3, label %panic1

panic:                                            ; preds = %start
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d52242cd718f8c84249ec0b640752454) #24
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h82fd9b3a4d426c68E"(ptr align 8 %MS) #22
          to label %bb35 unwind label %terminate

cleanup:                                          ; preds = %bb20, %bb19, %bb18, %panic12, %panic11, %bb30, %panic10, %bb28, %bb27, %panic9, %bb25, %panic8, %panic7, %panic6, %panic5, %panic4, %bb13, %bb9, %bb7, %bb6, %panic3, %bb4, %panic2, %panic1, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb34

unreachable:                                      ; preds = %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %_9.0
  %_6 = load i32, ptr %7, align 4
  %_14 = sext i32 %N to i64
  %_15.0 = sub i64 %_14, 1
  %_15.1 = icmp ult i64 %_14, 1
  br i1 %_15.1, label %panic2, label %bb4

panic1:                                           ; preds = %bb2
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_9.0, i64 2, ptr align 8 @alloc_82beaa4e32699d39d53e1c2c4ce0afc3) #24
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_11 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfe2aa4810f05c521E"(ptr align 8 %MS, i64 %_15.0, ptr align 8 @alloc_376996516e3995a4a85a3c64982d5390)
          to label %bb5 unwind label %cleanup

panic2:                                           ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_46901aa2d799447b7557659ac5e38c27) #24
          to label %unreachable unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 %_6, ptr %_11, align 4
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %N, i32 1)
  %_20.0 = extractvalue { i32, i1 } %8, 0
  %_20.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_20.1, label %panic3, label %bb6

bb6:                                              ; preds = %bb5
; invoke core::iter::traits::iterator::Iterator::rev
  %9 = invoke { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17hf3296b56436c38c5E(i32 0, i32 %_20.0)
          to label %bb7 unwind label %cleanup

panic3:                                           ; preds = %bb5
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0a53cb87b338e235d86ba8301f7a4bed) #24
          to label %unreachable unwind label %cleanup

bb7:                                              ; preds = %bb6
  %_17.0 = extractvalue { i32, i32 } %9, 0
  %_17.1 = extractvalue { i32, i32 } %9, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %10 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha684034da51c42c3E"(i32 %_17.0, i32 %_17.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_16.0 = extractvalue { i32, i32 } %10, 0
  %_16.1 = extractvalue { i32, i32 } %10, 1
  store i32 %_16.0, ptr %iter, align 4
  %11 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_16.1, ptr %11, align 4
  br label %bb9

bb9:                                              ; preds = %bb21, %bb31, %bb8
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %12 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ae59279e7d4025fE"(ptr align 4 %iter)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  store i32 %13, ptr %_22, align 4
  %15 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %_22, align 4
  %17 = getelementptr inbounds i8, ptr %_22, i64 4
  %18 = load i32, ptr %17, align 4
  %_24 = zext i32 %16 to i64
  %19 = trunc nuw i64 %_24 to i1
  br i1 %19, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %20 = getelementptr inbounds i8, ptr %_22, i64 4
  %i = load i32, ptr %20, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %k)
  %_29.0 = extractvalue { i32, i1 } %21, 0
  %_29.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_29.1, label %panic4, label %bb14

bb13:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E"(ptr align 8 %MS, i64 0, ptr align 8 @alloc_884045d8870b1591caefab4ed70cc999)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb13
  %_0 = load i32, ptr %_67, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h82fd9b3a4d426c68E"(ptr align 8 %MS)
  ret i32 %_0

bb14:                                             ; preds = %bb12
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_29.0, i32 1)
  %_30.0 = extractvalue { i32, i1 } %22, 0
  %_30.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_30.1, label %panic5, label %bb15

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0464b84ca29d2ed7a15cceeb1d694dcf) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_26 = icmp sge i32 %_30.0, %N
  br i1 %_26, label %bb16, label %bb22

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0464b84ca29d2ed7a15cceeb1d694dcf) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb15
  %_45 = sext i32 %i to i64
  %_46 = icmp ult i64 %_45, 2
  br i1 %_46, label %bb23, label %panic6

bb16:                                             ; preds = %bb15
  %_33 = sext i32 %i to i64
  %_34 = icmp ult i64 %_33, 2
  br i1 %_34, label %bb17, label %panic11

bb23:                                             ; preds = %bb22
  %23 = getelementptr inbounds nuw i32, ptr %arr, i64 %_45
  %_44 = load i32, ptr %23, align 4
  %_53 = sext i32 %i to i64
  %_54 = sext i32 %k to i64
  %_55.0 = add i64 %_53, %_54
  %_55.1 = icmp ult i64 %_55.0, %_53
  br i1 %_55.1, label %panic7, label %bb24

panic6:                                           ; preds = %bb22
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_45, i64 2, ptr align 8 @alloc_807e8347ac6b9c7926349e2d02dda384) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_56.0 = add i64 %_55.0, 1
  %_56.1 = icmp ult i64 %_56.0, %_55.0
  br i1 %_56.1, label %panic8, label %bb25

panic7:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8355a366ef30b303dd5f238d199a36d3) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E"(ptr align 8 %MS, i64 %_56.0, ptr align 8 @alloc_c8d2aeb487ccf9fd9b09859cf68ffe85)
          to label %bb26 unwind label %cleanup

panic8:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8355a366ef30b303dd5f238d199a36d3) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_48 = load i32, ptr %_49, align 4
  %_61 = sext i32 %i to i64
  %_62.0 = add i64 %_61, 1
  %_62.1 = icmp ult i64 %_62.0, %_61
  br i1 %_62.1, label %panic9, label %bb27

bb27:                                             ; preds = %bb26
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_58 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E"(ptr align 8 %MS, i64 %_62.0, ptr align 8 @alloc_5b2ae08f4e83eb5d36049e451f35c054)
          to label %bb28 unwind label %cleanup

panic9:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_18699b9bb8970e31232c3ef6602b760c) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_57 = load i32, ptr %_58, align 4
; invoke core::cmp::Ord::max
  %_47 = invoke i32 @_ZN4core3cmp3Ord3max17h93f3530b937e9538E(i32 %_48, i32 %_57)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_44, i32 %_47)
  %_63.0 = extractvalue { i32, i1 } %24, 0
  %_63.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_63.1, label %panic10, label %bb30

bb30:                                             ; preds = %bb29
  %_66 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_64 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfe2aa4810f05c521E"(ptr align 8 %MS, i64 %_66, ptr align 8 @alloc_3e76074350353739b98edf6a35138c50)
          to label %bb31 unwind label %cleanup

panic10:                                          ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_807e8347ac6b9c7926349e2d02dda384) #24
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30
  store i32 %_63.0, ptr %_64, align 4
  br label %bb9

bb17:                                             ; preds = %bb16
  %25 = getelementptr inbounds nuw i32, ptr %arr, i64 %_33
  %_32 = load i32, ptr %25, align 4
  %_39 = sext i32 %i to i64
  %_40.0 = add i64 %_39, 1
  %_40.1 = icmp ult i64 %_40.0, %_39
  br i1 %_40.1, label %panic12, label %bb18

panic11:                                          ; preds = %bb16
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_33, i64 2, ptr align 8 @alloc_37c001e1b30c7dbdbabb9fffbd5bafd8) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha117a60a55299512E"(ptr align 8 %MS, i64 %_40.0, ptr align 8 @alloc_5e9ae3eb7ed99a1e1399b44f4acbbb7d)
          to label %bb19 unwind label %cleanup

panic12:                                          ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d0a0e3c51aea0c5303c92b43654f235a) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_35 = load i32, ptr %_36, align 4
; invoke core::cmp::Ord::max
  %_31 = invoke i32 @_ZN4core3cmp3Ord3max17h93f3530b937e9538E(i32 %_32, i32 %_35)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_43 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_41 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfe2aa4810f05c521E"(ptr align 8 %MS, i64 %_43, ptr align 8 @alloc_5d48756761b390c0c7cc8af34ba9301e)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 %_31, ptr %_41, align 4
  br label %bb9

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb34
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb35:                                             ; preds = %bb34
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds i8, ptr %1, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = insertvalue { ptr, i32 } poison, ptr %27, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %29, 1
  resume { ptr, i32 } %31
}
