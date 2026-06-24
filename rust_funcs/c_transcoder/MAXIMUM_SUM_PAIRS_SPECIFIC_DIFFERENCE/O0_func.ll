define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %N, i32 %K) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_5 = sext i32 %N to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_5)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_f46c3f8913f37ef97bbb91a0e0d6ce55)
          to label %bb2 unwind label %cleanup

bb39:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"(ptr align 8 %dp) #22
          to label %bb40 unwind label %terminate

cleanup:                                          ; preds = %bb26, %bb25, %panic15, %panic14, %panic13, %panic12, %panic11, %bb19, %panic10, %bb17, %bb34, %bb33, %panic9, %panic8, %panic7, %panic6, %bb28, %panic5, %panic4, %panic3, %panic2, %bb10, %bb9, %panic1, %bb36, %panic, %bb4, %bb2, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb39

bb2:                                              ; preds = %start
  store i32 0, ptr %_6, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h37652e45957793dcE"(i32 1, i32 %N)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_8.0 = extractvalue { i32, i32 } %5, 0
  %_8.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_8.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %6, align 4
  br label %bb4

bb4:                                              ; preds = %bb27, %bb35, %bb15, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hcb80fdba19ef433cE"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_11, align 4
  %10 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_11, align 4
  %12 = getelementptr inbounds i8, ptr %_11, i64 4
  %13 = load i32, ptr %12, align 4
  %_13 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_13 to i1
  br i1 %14, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_20.0 = extractvalue { i32, i1 } %16, 0
  %_20.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_20.1, label %panic1, label %bb9

bb8:                                              ; preds = %bb5
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %N, i32 1)
  %_96.0 = extractvalue { i32, i1 } %17, 0
  %_96.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_96.1, label %panic, label %bb36

bb36:                                             ; preds = %bb8
  %_94 = sext i32 %_96.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_92 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %_94, ptr align 8 @alloc_c5c889d463ed5b5d69db8e9f852bb891)
          to label %bb37 unwind label %cleanup

panic:                                            ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_48e49b354b0391c3dd6ba06a24eeef0b) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb37:                                             ; preds = %bb36
  %_0 = load i32, ptr %_92, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"(ptr align 8 %dp)
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %_18 = sext i32 %_20.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_16 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %_18, ptr align 8 @alloc_c44a0033a772df99b6fa043eefb2842f)
          to label %bb10 unwind label %cleanup

panic1:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_21515091eaaad7c3541c829e031c0715) #24
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %bb9
  %_15 = load i32, ptr %_16, align 4
  %_23 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_21 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E"(ptr align 8 %dp, i64 %_23, ptr align 8 @alloc_e957ca94de3c61ac3fc44f18655c0b81)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  store i32 %_15, ptr %_21, align 4
  %_27 = sext i32 %i to i64
  %_30 = icmp ult i64 %_27, %arr.1
  br i1 %_30, label %bb12, label %panic2

bb12:                                             ; preds = %bb11
  %18 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_27
  %_26 = load i32, ptr %18, align 4
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_34.0 = extractvalue { i32, i1 } %19, 0
  %_34.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_34.1, label %panic3, label %bb13

panic2:                                           ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 %arr.1, ptr align 8 @alloc_1d1ed3e5f4919f21fc13b06080a333b1) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_32 = sext i32 %_34.0 to i64
  %_37 = icmp ult i64 %_32, %arr.1
  br i1 %_37, label %bb14, label %panic4

panic3:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f22a2cbfe0596c2b3213eca6659343fb) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %20 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_32
  %_31 = load i32, ptr %20, align 4
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_26, i32 %_31)
  %_38.0 = extractvalue { i32, i1 } %21, 0
  %_38.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_38.1, label %panic5, label %bb15

panic4:                                           ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 %arr.1, ptr align 8 @alloc_00f674012c761949724301d1465db9b4) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_24 = icmp slt i32 %_38.0, %K
  br i1 %_24, label %bb16, label %bb4

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1d1ed3e5f4919f21fc13b06080a333b1) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_39 = icmp sge i32 %i, 2
  br i1 %_39, label %bb17, label %bb28

bb28:                                             ; preds = %bb16
  %_74 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_72 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %_74, ptr align 8 @alloc_7f0b4d2ed883bb6e50a3cad471ec47e7)
          to label %bb29 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_44 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_42 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %_44, ptr align 8 @alloc_33e7dea2061b0c3fdd153f819ad9ebdb)
          to label %bb18 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_71 = load i32, ptr %_72, align 4
  %_77 = sext i32 %i to i64
  %_80 = icmp ult i64 %_77, %arr.1
  br i1 %_80, label %bb30, label %panic6

bb30:                                             ; preds = %bb29
  %22 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_77
  %_76 = load i32, ptr %22, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_84.0 = extractvalue { i32, i1 } %23, 0
  %_84.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_84.1, label %panic7, label %bb31

panic6:                                           ; preds = %bb29
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_77, i64 %arr.1, ptr align 8 @alloc_7904947ef0762cc65215b4592182cb43) #24
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_82 = sext i32 %_84.0 to i64
  %_87 = icmp ult i64 %_82, %arr.1
  br i1 %_87, label %bb32, label %panic8

panic7:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ab7b1b9bec2a3d28f42003e9c3c02752) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %24 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_82
  %_81 = load i32, ptr %24, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_76, i32 %_81)
  %_88.0 = extractvalue { i32, i1 } %25, 0
  %_88.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_88.1, label %panic9, label %bb33

panic8:                                           ; preds = %bb31
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_82, i64 %arr.1, ptr align 8 @alloc_9b197a8e4ebd2ee09b02df059385900b) #24
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  %_70 = invoke i32 @max(i32 %_71, i32 %_88.0)
          to label %bb34 unwind label %cleanup

panic9:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7904947ef0762cc65215b4592182cb43) #24
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %bb33
  %_91 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_89 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E"(ptr align 8 %dp, i64 %_91, ptr align 8 @alloc_847892156ba162a0393337a3e713a303)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb34
  store i32 %_70, ptr %_89, align 4
  br label %bb4

bb18:                                             ; preds = %bb17
  %_41 = load i32, ptr %_42, align 4
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 2)
  %_52.0 = extractvalue { i32, i1 } %26, 0
  %_52.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_52.1, label %panic10, label %bb19

bb19:                                             ; preds = %bb18
  %_50 = sext i32 %_52.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %_50, ptr align 8 @alloc_e169278defc96cb8afd3f57242c20aff)
          to label %bb20 unwind label %cleanup

panic10:                                          ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_936c8536d653e4641d0afa9ab73b9a09) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_47 = load i32, ptr %_48, align 4
  %_54 = sext i32 %i to i64
  %_57 = icmp ult i64 %_54, %arr.1
  br i1 %_57, label %bb21, label %panic11

bb21:                                             ; preds = %bb20
  %27 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_54
  %_53 = load i32, ptr %27, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_47, i32 %_53)
  %_58.0 = extractvalue { i32, i1 } %28, 0
  %_58.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_58.1, label %panic12, label %bb22

panic11:                                          ; preds = %bb20
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_54, i64 %arr.1, ptr align 8 @alloc_aef7c2f8ad11932212a9afea41d67e45) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_62.0 = extractvalue { i32, i1 } %29, 0
  %_62.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_62.1, label %panic13, label %bb23

panic12:                                          ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_863572a6070ff0465996bc3f6a18acee) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_60 = sext i32 %_62.0 to i64
  %_65 = icmp ult i64 %_60, %arr.1
  br i1 %_65, label %bb24, label %panic14

panic13:                                          ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_51725e2d91dcb8d7dc830ec6197cd656) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %30 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_60
  %_59 = load i32, ptr %30, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_58.0, i32 %_59)
  %_66.0 = extractvalue { i32, i1 } %31, 0
  %_66.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_66.1, label %panic15, label %bb25

panic14:                                          ; preds = %bb23
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_60, i64 %arr.1, ptr align 8 @alloc_0aedefddc938015c02aecfe15d0f7429) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_40 = invoke i32 @max(i32 %_41, i32 %_66.0)
          to label %bb26 unwind label %cleanup

panic15:                                          ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_863572a6070ff0465996bc3f6a18acee) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_69 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_67 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E"(ptr align 8 %dp, i64 %_69, ptr align 8 @alloc_bb65e5052ea290e0a1a6e547b6584e87)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  store i32 %_40, ptr %_67, align 4
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb39
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb40:                                             ; preds = %bb39
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8
  %36 = insertvalue { ptr, i32 } poison, ptr %33, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37
}
