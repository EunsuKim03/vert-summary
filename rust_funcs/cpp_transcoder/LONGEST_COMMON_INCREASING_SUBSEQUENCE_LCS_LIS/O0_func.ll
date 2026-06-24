define i32 @f_gold(i64 %0, i32 %n, i64 %1, i32 %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_64 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  %_18 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %current = alloca [4 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %table = alloca [24 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %arr2 = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr1, ptr align 8 %4, i64 8, i1 false)
  store i64 %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr2, ptr align 8 %3, i64 8, i1 false)
  %_6 = sext i32 %m to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E(ptr sret([24 x i8]) align 8 %table, i32 0, i64 %_6)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h96b3d3457a86ece6E"(i32 0, i32 %n)
          to label %bb2 unwind label %cleanup

bb36:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h133522a0d230829eE"(ptr align 8 %table) #22
          to label %bb37 unwind label %terminate

cleanup:                                          ; preds = %bb25, %bb23, %panic8, %panic7, %bb18, %panic6, %bb15, %panic5, %panic4, %panic, %bb9, %bb6, %bb33, %bb30, %bb28, %bb7, %bb3, %start
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb36

bb2:                                              ; preds = %start
  %_7.0 = extractvalue { i32, i32 } %5, 0
  %_7.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_7.0, ptr %iter, align 4
  %10 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %10, align 4
  br label %bb3

bb3:                                              ; preds = %bb10, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2857b8430956be48E"(ptr align 4 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_10, align 4
  %14 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_10, align 4
  %16 = getelementptr inbounds i8, ptr %_10, i64 4
  %17 = load i32, ptr %16, align 4
  %_12 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_12 to i1
  br i1 %18, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %19 = getelementptr inbounds i8, ptr %_10, i64 4
  %i3 = load i32, ptr %19, align 4
  store i32 0, ptr %current, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %20 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h96b3d3457a86ece6E"(i32 0, i32 %m)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  store i32 0, ptr %result, align 4
  %_62 = sext i32 %m to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %21 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h78d0228088fd0b59E"(i64 0, i64 %_62)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb7
  %_60.0 = extractvalue { i64, i64 } %21, 0
  %_60.1 = extractvalue { i64, i64 } %21, 1
  store i64 %_60.0, ptr %iter2, align 8
  %22 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_60.1, ptr %22, align 8
  br label %bb28

bb28:                                             ; preds = %bb34, %bb32, %bb27
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %23 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f2296d77f235afdE"(ptr align 8 %iter2)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %24 = extractvalue { i64, i64 } %23, 0
  %25 = extractvalue { i64, i64 } %23, 1
  store i64 %24, ptr %_64, align 8
  %26 = getelementptr inbounds i8, ptr %_64, i64 8
  store i64 %25, ptr %26, align 8
  %_66 = load i64, ptr %_64, align 8
  %27 = getelementptr inbounds i8, ptr %_64, i64 8
  %28 = load i64, ptr %27, align 8
  %29 = trunc nuw i64 %_66 to i1
  br i1 %29, label %bb30, label %bb31

bb30:                                             ; preds = %bb29
  %30 = getelementptr inbounds i8, ptr %_64, i64 8
  %i = load i64, ptr %30, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE"(ptr align 8 %table, i64 %i, ptr align 8 @alloc_07c8cd8b7ef752a57c7fc5d68e6b7f3b)
          to label %bb32 unwind label %cleanup

bb31:                                             ; preds = %bb29
  %_0 = load i32, ptr %result, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h133522a0d230829eE"(ptr align 8 %table)
  ret i32 %_0

bb32:                                             ; preds = %bb30
  %_69 = load i32, ptr %_70, align 4
  %_72 = load i32, ptr %result, align 4
  %_68 = icmp sgt i32 %_69, %_72
  br i1 %_68, label %bb33, label %bb28

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_74 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE"(ptr align 8 %table, i64 %i, ptr align 8 @alloc_500152d548a2ccc8cc9387519abc583a)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  %_73 = load i32, ptr %_74, align 4
  store i32 %_73, ptr %result, align 4
  br label %bb28

bb8:                                              ; preds = %bb6
  %_15.0 = extractvalue { i32, i32 } %20, 0
  %_15.1 = extractvalue { i32, i32 } %20, 1
  store i32 %_15.0, ptr %iter1, align 4
  %31 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_15.1, ptr %31, align 4
  br label %bb9

bb9:                                              ; preds = %bb26, %bb24, %bb22, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %32 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2857b8430956be48E"(ptr align 4 %iter1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  store i32 %33, ptr %_18, align 4
  %35 = getelementptr inbounds i8, ptr %_18, i64 4
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %_18, align 4
  %37 = getelementptr inbounds i8, ptr %_18, i64 4
  %38 = load i32, ptr %37, align 4
  %_20 = zext i32 %36 to i64
  %39 = trunc nuw i64 %_20 to i1
  br i1 %39, label %bb11, label %bb3

bb11:                                             ; preds = %bb10
  %40 = getelementptr inbounds i8, ptr %_18, i64 4
  %j = load i32, ptr %40, align 4
  %_24 = sext i32 %i3 to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb12, label %panic

bb12:                                             ; preds = %bb11
  %41 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_24
  %_23 = load i32, ptr %41, align 4
  %_27 = sext i32 %j to i64
  %_28 = icmp ult i64 %_27, 2
  br i1 %_28, label %bb13, label %panic4

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_007194f7371b59395179ea9cdd103097) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %42 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_27
  %_26 = load i32, ptr %42, align 4
  %_22 = icmp eq i32 %_23, %_26
  br i1 %_22, label %bb14, label %bb20

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 2, ptr align 8 @alloc_078471357d30bf963784ffc15c482f58) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19, %bb16, %bb13
  %_44 = sext i32 %i3 to i64
  %_45 = icmp ult i64 %_44, 2
  br i1 %_45, label %bb21, label %panic7

bb14:                                             ; preds = %bb13
  %_31 = load i32, ptr %current, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_31, i32 1)
  %_32.0 = extractvalue { i32, i1 } %43, 0
  %_32.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_32.1, label %panic5, label %bb15

bb15:                                             ; preds = %bb14
  %_36 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE"(ptr align 8 %table, i64 %_36, ptr align 8 @alloc_48083201ebfb0e4c449855ea29a674af)
          to label %bb16 unwind label %cleanup

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f9c3018d53d5456bda11f3086de4576e) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_33 = load i32, ptr %_34, align 4
  %_29 = icmp sgt i32 %_32.0, %_33
  br i1 %_29, label %bb17, label %bb20

bb17:                                             ; preds = %bb16
  %_37 = load i32, ptr %current, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_37, i32 1)
  %_38.0 = extractvalue { i32, i1 } %44, 0
  %_38.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_38.1, label %panic6, label %bb18

bb18:                                             ; preds = %bb17
  %_41 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1ebd680f94a05e60E"(ptr align 8 %table, i64 %_41, ptr align 8 @alloc_ec57b736666dd05cf5e824369cb27cc8)
          to label %bb19 unwind label %cleanup

panic6:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_62359ace7d9f26418cdb72b4072ef1a2) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i32 %_38.0, ptr %_39, align 4
  br label %bb20

bb21:                                             ; preds = %bb20
  %45 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_44
  %_43 = load i32, ptr %45, align 4
  %_47 = sext i32 %j to i64
  %_48 = icmp ult i64 %_47, 2
  br i1 %_48, label %bb22, label %panic8

panic7:                                           ; preds = %bb20
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_44, i64 2, ptr align 8 @alloc_46cd3b3649c5efffde0c5dfcf72596f0) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %46 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_47
  %_46 = load i32, ptr %46, align 4
  %_42 = icmp sgt i32 %_43, %_46
  br i1 %_42, label %bb23, label %bb9

panic8:                                           ; preds = %bb21
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_47, i64 2, ptr align 8 @alloc_5593bbfff87a6cfa176575790a71cf7e) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_53 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE"(ptr align 8 %table, i64 %_53, ptr align 8 @alloc_89d220ce47c0fa2c92e5094d41708517)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_50 = load i32, ptr %_51, align 4
  %_54 = load i32, ptr %current, align 4
  %_49 = icmp sgt i32 %_50, %_54
  br i1 %_49, label %bb25, label %bb9

bb25:                                             ; preds = %bb24
  %_58 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE"(ptr align 8 %table, i64 %_58, ptr align 8 @alloc_b8129f33c19fa1159eca6dc01ff10639)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_55 = load i32, ptr %_56, align 4
  store i32 %_55, ptr %current, align 4
  br label %bb9

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb36
  %47 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb37:                                             ; preds = %bb36
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds i8, ptr %2, i64 8
  %50 = load i32, ptr %49, align 8
  %51 = insertvalue { ptr, i32 } poison, ptr %48, 0
  %52 = insertvalue { ptr, i32 } %51, i32 %50, 1
  resume { ptr, i32 } %52
}
