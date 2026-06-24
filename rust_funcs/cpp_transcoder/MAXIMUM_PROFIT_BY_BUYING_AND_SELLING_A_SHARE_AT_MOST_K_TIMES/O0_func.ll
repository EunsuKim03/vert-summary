define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_76 = alloca [1 x i8], align 1
  %_30 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %max_so_far = alloca [4 x i8], align 4
  %_22 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_5 = alloca [24 x i8], align 8
  %profit = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %price = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %price, ptr align 8 %2, i64 8, i1 false)
  store i8 0, ptr %_76, align 1
  %_7 = sext i32 %n to i64
  %_8.0 = add i64 %_7, 1
  %_8.1 = icmp ult i64 %_8.0, %_7
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_76, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hf22cdc516ef73a09E(ptr sret([24 x i8]) align 8 %_5, i32 0, i64 %_8.0)
  %_10 = sext i32 %k to i64
  %_11.0 = add i64 %_10, 1
  %_11.1 = icmp ult i64 %_11.0, %_10
  br i1 %_11.1, label %panic3, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_88ef5be59c11ce7ff51406866819c5fa) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_76, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17heefbc696542dd82bE(ptr sret([24 x i8]) align 8 %profit, ptr align 8 %_5, i64 %_11.0)
          to label %bb4 unwind label %cleanup

panic3:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ee2d5ab5e6bf6b3e817015c3f784269e) #24
          to label %unreachable unwind label %cleanup

bb42:                                             ; preds = %cleanup
  %3 = load i8, ptr %_76, align 1
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb41, label %bb40

cleanup:                                          ; preds = %bb3, %panic3
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %1, align 8
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb42

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic3
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_76, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17haceae806753fbaaeE"(ptr sret([12 x i8]) align 4 %_13, i32 1, i32 %k)
          to label %bb5 unwind label %cleanup4

bb39:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17ha7b4e261e82a415dE"(ptr align 8 %profit) #22
          to label %bb40 unwind label %terminate

cleanup4:                                         ; preds = %bb27, %panic11, %bb25, %bb24, %panic10, %panic9, %panic8, %panic7, %bb33, %bb32, %bb31, %bb30, %panic6, %bb20, %bb17, %bb15, %bb13, %bb10, %bb36, %panic5, %bb11, %bb7, %bb5, %bb4
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %1, align 8
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %11, ptr %12, align 8
  br label %bb39

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h948276f4a1da0c08E"(ptr sret([12 x i8]) align 4 %_12, ptr align 4 %_13)
          to label %bb6 unwind label %cleanup4

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_12, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb14, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %13 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hc06584ef492d1df7E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup4

bb8:                                              ; preds = %bb7
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  store i32 %14, ptr %_15, align 4
  %16 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %_15, align 4
  %18 = getelementptr inbounds i8, ptr %_15, i64 4
  %19 = load i32, ptr %18, align 4
  %_17 = zext i32 %17 to i64
  %20 = trunc nuw i64 %_17 to i1
  br i1 %20, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %21 = getelementptr inbounds i8, ptr %_15, i64 4
  %i = load i32, ptr %21, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %22 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9a5fb4bbd8c525d4E"(i32 1, i32 %n)
          to label %bb12 unwind label %cleanup4

bb11:                                             ; preds = %bb8
  %_72 = sext i32 %k to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE"(ptr align 8 %profit, i64 %_72, ptr align 8 @alloc_f8d9581fe936e953ac51a7e8b5687314)
          to label %bb35 unwind label %cleanup4

bb35:                                             ; preds = %bb11
  %_74 = sext i32 %n to i64
  %_75.0 = sub i64 %_74, 1
  %_75.1 = icmp ult i64 %_74, 1
  br i1 %_75.1, label %panic5, label %bb36

bb36:                                             ; preds = %bb35
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_69 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E"(ptr align 8 %_70, i64 %_75.0, ptr align 8 @alloc_b274709009eb3d9c8a1df5bbf890cf53)
          to label %bb37 unwind label %cleanup4

panic5:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8120fd412669c891cb757d7f0f4ce41e) #24
          to label %unreachable unwind label %cleanup4

bb37:                                             ; preds = %bb36
  %_0 = load i32, ptr %_69, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17ha7b4e261e82a415dE"(ptr align 8 %profit)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %_19.0 = extractvalue { i32, i32 } %22, 0
  %_19.1 = extractvalue { i32, i32 } %22, 1
  store i32 %_19.0, ptr %iter1, align 4
  %23 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_19.1, ptr %23, align 4
  br label %bb13

bb13:                                             ; preds = %bb34, %bb12
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %24 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h1135e85670903f24E"(ptr align 4 %iter1)
          to label %bb14 unwind label %cleanup4

bb14:                                             ; preds = %bb13
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = extractvalue { i32, i32 } %24, 1
  store i32 %25, ptr %_22, align 4
  %27 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %_22, align 4
  %29 = getelementptr inbounds i8, ptr %_22, i64 4
  %30 = load i32, ptr %29, align 4
  %_24 = zext i32 %28 to i64
  %31 = trunc nuw i64 %_24 to i1
  br i1 %31, label %bb15, label %bb7

bb15:                                             ; preds = %bb14
  %32 = getelementptr inbounds i8, ptr %_22, i64 4
  %j = load i32, ptr %32, align 4
  store i32 -2147483648, ptr %max_so_far, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %33 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9a5fb4bbd8c525d4E"(i32 0, i32 %j)
          to label %bb16 unwind label %cleanup4

bb16:                                             ; preds = %bb15
  %_27.0 = extractvalue { i32, i32 } %33, 0
  %_27.1 = extractvalue { i32, i32 } %33, 1
  store i32 %_27.0, ptr %iter2, align 4
  %34 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_27.1, ptr %34, align 4
  br label %bb17

bb17:                                             ; preds = %bb28, %bb16
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %35 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h1135e85670903f24E"(ptr align 4 %iter2)
          to label %bb18 unwind label %cleanup4

bb18:                                             ; preds = %bb17
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = extractvalue { i32, i32 } %35, 1
  store i32 %36, ptr %_30, align 4
  %38 = getelementptr inbounds i8, ptr %_30, i64 4
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %_30, align 4
  %40 = getelementptr inbounds i8, ptr %_30, i64 4
  %41 = load i32, ptr %40, align 4
  %_32 = zext i32 %39 to i64
  %42 = trunc nuw i64 %_32 to i1
  br i1 %42, label %bb19, label %bb20

bb19:                                             ; preds = %bb18
  %43 = getelementptr inbounds i8, ptr %_30, i64 4
  %m = load i32, ptr %43, align 4
  %_35 = load i32, ptr %max_so_far, align 4
  %_39 = sext i32 %j to i64
  %_40 = icmp ult i64 %_39, 2
  br i1 %_40, label %bb21, label %panic7

bb20:                                             ; preds = %bb18
  %_59 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE"(ptr align 8 %profit, i64 %_59, ptr align 8 @alloc_ef9d9bf0a09eaaed94e6d012d83d0504)
          to label %bb29 unwind label %cleanup4

bb29:                                             ; preds = %bb20
  %_61 = sext i32 %j to i64
  %_62.0 = sub i64 %_61, 1
  %_62.1 = icmp ult i64 %_61, 1
  br i1 %_62.1, label %panic6, label %bb30

bb30:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E"(ptr align 8 %_57, i64 %_62.0, ptr align 8 @alloc_cee765cebe5878ed92c5ed05969ec737)
          to label %bb31 unwind label %cleanup4

panic6:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cfe44bb39bb562d0f567e18e88fcc26f) #24
          to label %unreachable unwind label %cleanup4

bb31:                                             ; preds = %bb30
  %_55 = load i32, ptr %_56, align 4
  %_63 = load i32, ptr %max_so_far, align 4
; invoke core::cmp::Ord::max
  %_54 = invoke i32 @_ZN4core3cmp3Ord3max17hf86d24580fa860b6E(i32 %_55, i32 %_63)
          to label %bb32 unwind label %cleanup4

bb32:                                             ; preds = %bb31
  %_67 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_65 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h668acb7cddd9acd1E"(ptr align 8 %profit, i64 %_67, ptr align 8 @alloc_0b239dbac74659e6a93f115b8b477ae1)
          to label %bb33 unwind label %cleanup4

bb33:                                             ; preds = %bb32
  %_68 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_64 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h248d9376b938329eE"(ptr align 8 %_65, i64 %_68, ptr align 8 @alloc_8e894ee9319548fe6c2e6bef8a98c9b5)
          to label %bb34 unwind label %cleanup4

bb34:                                             ; preds = %bb33
  store i32 %_54, ptr %_64, align 4
  br label %bb13

bb21:                                             ; preds = %bb19
  %44 = getelementptr inbounds nuw i32, ptr %price, i64 %_39
  %_38 = load i32, ptr %44, align 4
  %_42 = sext i32 %m to i64
  %_43 = icmp ult i64 %_42, 2
  br i1 %_43, label %bb22, label %panic8

panic7:                                           ; preds = %bb19
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_39, i64 2, ptr align 8 @alloc_35486b20b5ff856ebd8392742e3b3ccd) #24
          to label %unreachable unwind label %cleanup4

bb22:                                             ; preds = %bb21
  %45 = getelementptr inbounds nuw i32, ptr %price, i64 %_42
  %_41 = load i32, ptr %45, align 4
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_38, i32 %_41)
  %_44.0 = extractvalue { i32, i1 } %46, 0
  %_44.1 = extractvalue { i32, i1 } %46, 1
  br i1 %_44.1, label %panic9, label %bb23

panic8:                                           ; preds = %bb21
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_42, i64 2, ptr align 8 @alloc_c6dfac406bddf881f39ec0ec5f496a7a) #24
          to label %unreachable unwind label %cleanup4

bb23:                                             ; preds = %bb22
  %_50 = sext i32 %i to i64
  %_51.0 = sub i64 %_50, 1
  %_51.1 = icmp ult i64 %_50, 1
  br i1 %_51.1, label %panic10, label %bb24

panic9:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_35486b20b5ff856ebd8392742e3b3ccd) #24
          to label %unreachable unwind label %cleanup4

bb24:                                             ; preds = %bb23
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h12f5d26ed68b8a8aE"(ptr align 8 %profit, i64 %_51.0, ptr align 8 @alloc_28aa43d5f64527ce4a67b49f9d52d122)
          to label %bb25 unwind label %cleanup4

panic10:                                          ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e4cd9bce310eb3ee07842e56139ea43f) #24
          to label %unreachable unwind label %cleanup4

bb25:                                             ; preds = %bb24
  %_52 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6959243476963922E"(ptr align 8 %_47, i64 %_52, ptr align 8 @alloc_209afce7b4c06ca5af88a1c704ecd021)
          to label %bb26 unwind label %cleanup4

bb26:                                             ; preds = %bb25
  %_45 = load i32, ptr %_46, align 4
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_44.0, i32 %_45)
  %_53.0 = extractvalue { i32, i1 } %47, 0
  %_53.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_53.1, label %panic11, label %bb27

bb27:                                             ; preds = %bb26
; invoke core::cmp::Ord::max
  %_34 = invoke i32 @_ZN4core3cmp3Ord3max17hf86d24580fa860b6E(i32 %_35, i32 %_53.0)
          to label %bb28 unwind label %cleanup4

panic11:                                          ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_35486b20b5ff856ebd8392742e3b3ccd) #24
          to label %unreachable unwind label %cleanup4

bb28:                                             ; preds = %bb27
  store i32 %_34, ptr %max_so_far, align 4
  br label %bb17

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb41, %bb39
  %48 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb40:                                             ; preds = %bb41, %bb42, %bb39
  %49 = load ptr, ptr %1, align 8
  %50 = getelementptr inbounds i8, ptr %1, i64 8
  %51 = load i32, ptr %50, align 8
  %52 = insertvalue { ptr, i32 } poison, ptr %49, 0
  %53 = insertvalue { ptr, i32 } %52, i32 %51, 1
  resume { ptr, i32 } %53

bb41:                                             ; preds = %bb42
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E"(ptr align 8 %_5) #22
          to label %bb40 unwind label %terminate
}
