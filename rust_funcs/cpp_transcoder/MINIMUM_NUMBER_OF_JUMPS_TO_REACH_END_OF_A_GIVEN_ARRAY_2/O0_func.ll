define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_52 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_17 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %min = alloca [4 x i8], align 4
  %jumps = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hf753d264234264a7E(ptr sret([24 x i8]) align 8 %jumps, i32 0, i64 %_4)
  %_9 = sext i32 %n to i64
  %_10.0 = sub i64 %_9, 1
  %_10.1 = icmp ult i64 %_9, 1
  br i1 %_10.1, label %panic, label %bb2

bb2:                                              ; preds = %start
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E"(ptr align 8 %jumps, i64 %_10.0, ptr align 8 @alloc_02c8a5bbb45a7759b873788dabc04fe1)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fc292b96debe85b7dd03e71f0806db64) #24
          to label %unreachable unwind label %cleanup

bb42:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha35a428d957e14ffE"(ptr align 8 %jumps) #22
          to label %bb43 unwind label %terminate

cleanup:                                          ; preds = %bb13, %bb19, %bb33, %bb30, %bb37, %panic11, %bb36, %bb28, %bb26, %bb25, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %bb11, %bb7, %bb5, %bb4, %panic2, %bb2, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb42

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb3:                                              ; preds = %bb2
  store i32 0, ptr %_6, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_15.0 = extractvalue { i32, i1 } %7, 0
  %_15.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_15.1, label %panic2, label %bb4

bb4:                                              ; preds = %bb3
; invoke core::iter::traits::iterator::Iterator::rev
  %8 = invoke { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17he3de684e439f85caE(i32 0, i32 %_15.0)
          to label %bb5 unwind label %cleanup

panic2:                                           ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5ab83f9085dc57b77dcadd436b3c6ab0) #24
          to label %unreachable unwind label %cleanup

bb5:                                              ; preds = %bb4
  %_12.0 = extractvalue { i32, i32 } %8, 0
  %_12.1 = extractvalue { i32, i32 } %8, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %9 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd66e7b1f5192dfaeE"(i32 %_12.0, i32 %_12.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_11.0 = extractvalue { i32, i32 } %9, 0
  %_11.1 = extractvalue { i32, i32 } %9, 1
  store i32 %_11.0, ptr %iter, align 4
  %10 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_11.1, ptr %10, align 4
  br label %bb7

bb7:                                              ; preds = %bb14, %bb20, %bb38, %bb39, %bb6
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %11 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd97fec774648d914E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_17, align 4
  %14 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_17, align 4
  %16 = getelementptr inbounds i8, ptr %_17, i64 4
  %17 = load i32, ptr %16, align 4
  %_19 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_19 to i1
  br i1 %18, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %19 = getelementptr inbounds i8, ptr %_17, i64 4
  %i = load i32, ptr %19, align 4
  %_23 = sext i32 %i to i64
  %_24 = icmp ult i64 %_23, 2
  br i1 %_24, label %bb12, label %panic3

bb11:                                             ; preds = %bb8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_77 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E"(ptr align 8 %jumps, i64 0, ptr align 8 @alloc_860983f6b6fe46b5a79cf87bc55cf544)
          to label %bb40 unwind label %cleanup

bb40:                                             ; preds = %bb11
  %_0 = load i32, ptr %_77, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha35a428d957e14ffE"(ptr align 8 %jumps)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %20 = getelementptr inbounds nuw i32, ptr %arr, i64 %_23
  %_22 = load i32, ptr %20, align 4
  %_21 = icmp eq i32 %_22, 0
  br i1 %_21, label %bb13, label %bb15

panic3:                                           ; preds = %bb10
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 2, ptr align 8 @alloc_e87b4aa6c1a014a5b27ea247b003662c) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb12
  %_30 = sext i32 %i to i64
  %_31 = icmp ult i64 %_30, 2
  br i1 %_31, label %bb16, label %panic4

bb13:                                             ; preds = %bb12
  %_27 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_25 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E"(ptr align 8 %jumps, i64 %_27, ptr align 8 @alloc_27cf2f929f48d3e6c610894ac0f2af30)
          to label %bb14 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %21 = getelementptr inbounds nuw i32, ptr %arr, i64 %_30
  %_29 = load i32, ptr %21, align 4
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %i)
  %_34.0 = extractvalue { i32, i1 } %22, 0
  %_34.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_34.1, label %panic5, label %bb17

panic4:                                           ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_30, i64 2, ptr align 8 @alloc_a6990d5541f36f4490b41b36574d6c27) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_34.0, i32 1)
  %_35.0 = extractvalue { i32, i1 } %23, 0
  %_35.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_35.1, label %panic6, label %bb18

panic5:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_81a93dc4580e908d74e78fcc0b5cd2fd) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_28 = icmp sge i32 %_29, %_35.0
  br i1 %_28, label %bb19, label %bb21

panic6:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_81a93dc4580e908d74e78fcc0b5cd2fd) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb18
  store i32 2147483647, ptr %min, align 4
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_42.0 = extractvalue { i32, i1 } %24, 0
  %_42.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_42.1, label %panic7, label %bb22

bb19:                                             ; preds = %bb18
  %_38 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_36 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E"(ptr align 8 %jumps, i64 %_38, ptr align 8 @alloc_8a99b88fe17d73a2021cbfc79d72a2de)
          to label %bb20 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_47 = sext i32 %i to i64
  %_48 = icmp ult i64 %_47, 2
  br i1 %_48, label %bb23, label %panic8

panic7:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4ac217236344dded118006ff0f241506) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %25 = getelementptr inbounds nuw i32, ptr %arr, i64 %_47
  %_46 = load i32, ptr %25, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %_46)
  %_49.0 = extractvalue { i32, i1 } %26, 0
  %_49.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_49.1, label %panic9, label %bb24

panic8:                                           ; preds = %bb22
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_47, i64 2, ptr align 8 @alloc_ec48faf3b8489522754db1c41d15b34b) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_49.0, i32 %i)
  %_50.0 = extractvalue { i32, i1 } %27, 0
  %_50.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_50.1, label %panic10, label %bb25

panic9:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ce59e334ffbdb4eebfe016b87025f85d) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
; invoke core::cmp::Ord::min
  %_43 = invoke i32 @_ZN4core3cmp3Ord3min17h490ea31760ac98beE(i32 %n, i32 %_50.0)
          to label %bb26 unwind label %cleanup

panic10:                                          ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ce59e334ffbdb4eebfe016b87025f85d) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %28 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he6b0fe98b3461b00E"(i32 %_42.0, i32 %_43)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_39.0 = extractvalue { i32, i32 } %28, 0
  %_39.1 = extractvalue { i32, i32 } %28, 1
  store i32 %_39.0, ptr %iter1, align 4
  %29 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_39.1, ptr %29, align 4
  br label %bb28

bb28:                                             ; preds = %bb34, %bb32, %bb27
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %30 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hccc78ebc6a29987dE"(ptr align 4 %iter1)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = extractvalue { i32, i32 } %30, 1
  store i32 %31, ptr %_52, align 4
  %33 = getelementptr inbounds i8, ptr %_52, i64 4
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %_52, align 4
  %35 = getelementptr inbounds i8, ptr %_52, i64 4
  %36 = load i32, ptr %35, align 4
  %_54 = zext i32 %34 to i64
  %37 = trunc nuw i64 %_54 to i1
  br i1 %37, label %bb30, label %bb31

bb30:                                             ; preds = %bb29
  %38 = getelementptr inbounds i8, ptr %_52, i64 4
  %j = load i32, ptr %38, align 4
  %_57 = load i32, ptr %min, align 4
  %_61 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_59 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E"(ptr align 8 %jumps, i64 %_61, ptr align 8 @alloc_ef0edacf03aaa8c94e576a24ec1a90ea)
          to label %bb32 unwind label %cleanup

bb31:                                             ; preds = %bb29
  %_67 = load i32, ptr %min, align 4
  %_66 = icmp ne i32 %_67, 2147483647
  br i1 %_66, label %bb35, label %bb36

bb36:                                             ; preds = %bb31
  %_73 = load i32, ptr %min, align 4
  %_76 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_74 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E"(ptr align 8 %jumps, i64 %_76, ptr align 8 @alloc_23cbb11e7242fcd05b4b16eab77c1b8f)
          to label %bb39 unwind label %cleanup

bb35:                                             ; preds = %bb31
  %_68 = load i32, ptr %min, align 4
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_68, i32 1)
  %_69.0 = extractvalue { i32, i1 } %39, 0
  %_69.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_69.1, label %panic11, label %bb37

bb39:                                             ; preds = %bb36
  store i32 %_73, ptr %_74, align 4
  br label %bb7

bb37:                                             ; preds = %bb35
  %_72 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_70 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h100204178fc99c57E"(ptr align 8 %jumps, i64 %_72, ptr align 8 @alloc_de6d0e5aa5b4d63b62e4eada8b0f727c)
          to label %bb38 unwind label %cleanup

panic11:                                          ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ef82a6b3265ecdcbf301b2f5b90dc8e5) #24
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb37
  store i32 %_69.0, ptr %_70, align 4
  br label %bb7

bb32:                                             ; preds = %bb30
  %_58 = load i32, ptr %_59, align 4
  %_56 = icmp sgt i32 %_57, %_58
  br i1 %_56, label %bb33, label %bb28

bb33:                                             ; preds = %bb32
  %_65 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfaa8230883010c71E"(ptr align 8 %jumps, i64 %_65, ptr align 8 @alloc_d140cce96d8064aa40446e157f100152)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  %_62 = load i32, ptr %_63, align 4
  store i32 %_62, ptr %min, align 4
  br label %bb28

bb20:                                             ; preds = %bb19
  store i32 1, ptr %_36, align 4
  br label %bb7

bb14:                                             ; preds = %bb13
  store i32 2147483647, ptr %_25, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb42
  %40 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb43:                                             ; preds = %bb42
  %41 = load ptr, ptr %1, align 8
  %42 = getelementptr inbounds i8, ptr %1, i64 8
  %43 = load i32, ptr %42, align 8
  %44 = insertvalue { ptr, i32 } poison, ptr %41, 0
  %45 = insertvalue { ptr, i32 } %44, i32 %43, 1
  resume { ptr, i32 } %45
}
