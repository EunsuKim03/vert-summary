define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_50 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %min_price = alloca [4 x i8], align 4
  %_16 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %max_price = alloca [4 x i8], align 4
  %profit = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %price = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %price, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17ha71d84429ea63026E(ptr sret([24 x i8]) align 8 %profit, i32 0, i64 %_4)
  %_7 = sext i32 %n to i64
  %_8.0 = sub i64 %_7, 1
  %_8.1 = icmp ult i64 %_7, 1
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ult i64 %_8.0, 2
  br i1 %_9, label %bb3, label %panic2

panic:                                            ; preds = %start
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e312e6e5d35d28f2ea169ee30ff92ca4) #24
          to label %unreachable unwind label %cleanup

bb43:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha9d5af3e1f3690b5E"(ptr align 8 %profit) #22
          to label %bb44 unwind label %terminate

cleanup:                                          ; preds = %bb20, %bb19, %panic16, %panic15, %bb16, %panic14, %panic13, %panic12, %bb38, %bb37, %panic10, %panic9, %panic8, %bb33, %bb32, %panic7, %panic6, %panic5, %bb40, %panic4, %bb24, %bb22, %bb7, %bb5, %bb4, %panic3, %panic2, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb43

unreachable:                                      ; preds = %panic16, %panic15, %panic14, %panic13, %panic12, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds nuw i32, ptr %price, i64 %_8.0
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %max_price, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_14.0 = extractvalue { i32, i1 } %9, 0
  %_14.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_14.1, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_8.0, i64 2, ptr align 8 @alloc_bbb2f000a1e32dbc0b1c6ebbb1709e06) #24
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke core::iter::traits::iterator::Iterator::rev
  %10 = invoke { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17he9e1b98c7fb464b7E(i32 0, i32 %_14.0)
          to label %bb5 unwind label %cleanup

panic3:                                           ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_eacefa1f3c8fb1878edb42e6c003b3cf) #24
          to label %unreachable unwind label %cleanup

bb5:                                              ; preds = %bb4
  %_11.0 = extractvalue { i32, i32 } %10, 0
  %_11.1 = extractvalue { i32, i32 } %10, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9ee776758e3ce84fE"(i32 %_11.0, i32 %_11.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_10.0 = extractvalue { i32, i32 } %11, 0
  %_10.1 = extractvalue { i32, i32 } %11, 1
  store i32 %_10.0, ptr %iter, align 4
  %12 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_10.1, ptr %12, align 4
  br label %bb7

bb7:                                              ; preds = %bb21, %bb6
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %13 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1bc5d2639fa86018E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  store i32 %14, ptr %_16, align 4
  %16 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %_16, align 4
  %18 = getelementptr inbounds i8, ptr %_16, i64 4
  %19 = load i32, ptr %18, align 4
  %_18 = zext i32 %17 to i64
  %20 = trunc nuw i64 %_18 to i1
  br i1 %20, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %21 = getelementptr inbounds i8, ptr %_16, i64 4
  %i11 = load i32, ptr %21, align 4
  %_22 = sext i32 %i11 to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb12, label %panic12

bb11:                                             ; preds = %bb8
  br label %bb22

bb22:                                             ; preds = %bb11
  %22 = getelementptr inbounds nuw i32, ptr %price, i64 0
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %min_price, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %24 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h82d2cf1cbc3ff3a7E"(i32 1, i32 %n)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_47.0 = extractvalue { i32, i32 } %24, 0
  %_47.1 = extractvalue { i32, i32 } %24, 1
  store i32 %_47.0, ptr %iter1, align 4
  %25 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_47.1, ptr %25, align 4
  br label %bb24

bb24:                                             ; preds = %bb39, %bb23
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %26 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3fc0f7617c3590c1E"(ptr align 4 %iter1)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = extractvalue { i32, i32 } %26, 1
  store i32 %27, ptr %_50, align 4
  %29 = getelementptr inbounds i8, ptr %_50, i64 4
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %_50, align 4
  %31 = getelementptr inbounds i8, ptr %_50, i64 4
  %32 = load i32, ptr %31, align 4
  %_52 = zext i32 %30 to i64
  %33 = trunc nuw i64 %_52 to i1
  br i1 %33, label %bb26, label %bb27

bb26:                                             ; preds = %bb25
  %34 = getelementptr inbounds i8, ptr %_50, i64 4
  %i = load i32, ptr %34, align 4
  %_56 = sext i32 %i to i64
  %_57 = icmp ult i64 %_56, 2
  br i1 %_57, label %bb28, label %panic5

bb27:                                             ; preds = %bb25
  %_87 = sext i32 %n to i64
  %_88.0 = sub i64 %_87, 1
  %_88.1 = icmp ult i64 %_87, 1
  br i1 %_88.1, label %panic4, label %bb40

bb40:                                             ; preds = %bb27
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_84 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E"(ptr align 8 %profit, i64 %_88.0, ptr align 8 @alloc_07b9f8e6d3493b01f00d015cb8ad895d)
          to label %bb41 unwind label %cleanup

panic4:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_328097c02c87abc695826edfb1b3d58c) #24
          to label %unreachable unwind label %cleanup

bb41:                                             ; preds = %bb40
  %_0 = load i32, ptr %_84, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha9d5af3e1f3690b5E"(ptr align 8 %profit)
  ret i32 %_0

bb28:                                             ; preds = %bb26
  %35 = getelementptr inbounds nuw i32, ptr %price, i64 %_56
  %_55 = load i32, ptr %35, align 4
  %_58 = load i32, ptr %min_price, align 4
  %_54 = icmp slt i32 %_55, %_58
  br i1 %_54, label %bb29, label %bb31

panic5:                                           ; preds = %bb26
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_56, i64 2, ptr align 8 @alloc_bdec367f6b7f326b9afaeb4f1c6d4050) #24
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30, %bb28
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_68.0 = extractvalue { i32, i1 } %36, 0
  %_68.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_68.1, label %panic7, label %bb32

bb29:                                             ; preds = %bb28
  %_60 = sext i32 %i to i64
  %_61 = icmp ult i64 %_60, 2
  br i1 %_61, label %bb30, label %panic6

bb30:                                             ; preds = %bb29
  %37 = getelementptr inbounds nuw i32, ptr %price, i64 %_60
  %_59 = load i32, ptr %37, align 4
  store i32 %_59, ptr %min_price, align 4
  br label %bb31

panic6:                                           ; preds = %bb29
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_60, i64 2, ptr align 8 @alloc_262b281e57a255160944c58556266330) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_66 = sext i32 %_68.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_64 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E"(ptr align 8 %profit, i64 %_66, ptr align 8 @alloc_61d322e1271bc0ae8c936c51b1ef0d89)
          to label %bb33 unwind label %cleanup

panic7:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8ca82830305c4e15a2f3f12c508e5d04) #24
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  %_63 = load i32, ptr %_64, align 4
  %_73 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_71 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E"(ptr align 8 %profit, i64 %_73, ptr align 8 @alloc_e2265bbd5cf3800347badb87c793300c)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  %_70 = load i32, ptr %_71, align 4
  %_76 = sext i32 %i to i64
  %_77 = icmp ult i64 %_76, 2
  br i1 %_77, label %bb35, label %panic8

bb35:                                             ; preds = %bb34
  %38 = getelementptr inbounds nuw i32, ptr %price, i64 %_76
  %_75 = load i32, ptr %38, align 4
  %_78 = load i32, ptr %min_price, align 4
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_75, i32 %_78)
  %_79.0 = extractvalue { i32, i1 } %39, 0
  %_79.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_79.1, label %panic9, label %bb36

panic8:                                           ; preds = %bb34
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_76, i64 2, ptr align 8 @alloc_5d5189022a04a22f2d595c81b95d4e99) #24
          to label %unreachable unwind label %cleanup

bb36:                                             ; preds = %bb35
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_70, i32 %_79.0)
  %_80.0 = extractvalue { i32, i1 } %40, 0
  %_80.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_80.1, label %panic10, label %bb37

panic9:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fbbab7b71277d89cb70e3078d98f5559) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %bb36
; invoke core::cmp::Ord::max
  %_62 = invoke i32 @_ZN4core3cmp3Ord3max17hfe82ab42029f2435E(i32 %_63, i32 %_80.0)
          to label %bb38 unwind label %cleanup

panic10:                                          ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c75eb3deec3370fe27383cb368271436) #24
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb37
  %_83 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_81 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6234fc4d0288715cE"(ptr align 8 %profit, i64 %_83, ptr align 8 @alloc_299e5912c8299045009236f74fec2fe3)
          to label %bb39 unwind label %cleanup

bb39:                                             ; preds = %bb38
  store i32 %_62, ptr %_81, align 4
  br label %bb24

bb12:                                             ; preds = %bb10
  %41 = getelementptr inbounds nuw i32, ptr %price, i64 %_22
  %_21 = load i32, ptr %41, align 4
  %_24 = load i32, ptr %max_price, align 4
  %_20 = icmp sgt i32 %_21, %_24
  br i1 %_20, label %bb13, label %bb15

panic12:                                          ; preds = %bb10
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_a0b9c846c3461fafeb330aed762617f0) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14, %bb12
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i11, i32 1)
  %_34.0 = extractvalue { i32, i1 } %42, 0
  %_34.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_34.1, label %panic14, label %bb16

bb13:                                             ; preds = %bb12
  %_26 = sext i32 %i11 to i64
  %_27 = icmp ult i64 %_26, 2
  br i1 %_27, label %bb14, label %panic13

bb14:                                             ; preds = %bb13
  %43 = getelementptr inbounds nuw i32, ptr %price, i64 %_26
  %_25 = load i32, ptr %43, align 4
  store i32 %_25, ptr %max_price, align 4
  br label %bb15

panic13:                                          ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 2, ptr align 8 @alloc_896e32825c38ab78a319592f696c650e) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_32 = sext i32 %_34.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_30 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha2bbe0c0d33704f9E"(ptr align 8 %profit, i64 %_32, ptr align 8 @alloc_fa3817924429c5168c13f62cd0ec56f6)
          to label %bb17 unwind label %cleanup

panic14:                                          ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9a1c490df2fc7a137abdb14a62f9fa62) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_29 = load i32, ptr %_30, align 4
  %_36 = load i32, ptr %max_price, align 4
  %_38 = sext i32 %i11 to i64
  %_39 = icmp ult i64 %_38, 2
  br i1 %_39, label %bb18, label %panic15

bb18:                                             ; preds = %bb17
  %44 = getelementptr inbounds nuw i32, ptr %price, i64 %_38
  %_37 = load i32, ptr %44, align 4
  %45 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_36, i32 %_37)
  %_40.0 = extractvalue { i32, i1 } %45, 0
  %_40.1 = extractvalue { i32, i1 } %45, 1
  br i1 %_40.1, label %panic16, label %bb19

panic15:                                          ; preds = %bb17
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_38, i64 2, ptr align 8 @alloc_b3a8fd6430c2e0b24d1ee5e81c19b335) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
; invoke core::cmp::Ord::max
  %_28 = invoke i32 @_ZN4core3cmp3Ord3max17hfe82ab42029f2435E(i32 %_29, i32 %_40.0)
          to label %bb20 unwind label %cleanup

panic16:                                          ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_522309233d8ce8d1e6f60cd491204b3d) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_43 = sext i32 %i11 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_41 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6234fc4d0288715cE"(ptr align 8 %profit, i64 %_43, ptr align 8 @alloc_569a466e2b4010d78878e096502ebf19)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 %_28, ptr %_41, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb43
  %46 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb44:                                             ; preds = %bb43
  %47 = load ptr, ptr %1, align 8
  %48 = getelementptr inbounds i8, ptr %1, i64 8
  %49 = load i32, ptr %48, align 8
  %50 = insertvalue { ptr, i32 } poison, ptr %47, 0
  %51 = insertvalue { ptr, i32 } %50, i32 %49, 1
  resume { ptr, i32 } %51
}
