define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_39 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_32 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_16 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_3 = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h16afed1b8a471707E(ptr sret([24 x i8]) align 8 %_3, i32 0, i64 %_4)
  %_5 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17heacbb53968229905E(ptr sret([24 x i8]) align 8 %arr, ptr align 8 %_3, i64 %_5)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb2dd37492d04361cE"(i32 0, i32 %n)
          to label %bb3 unwind label %cleanup

bb30:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr align 8 %arr) #23
          to label %bb31 unwind label %terminate

cleanup:                                          ; preds = %bb15, %bb14, %bb13, %panic6, %bb10, %bb7, %panic, %bb26, %bb25, %bb23, %bb20, %bb18, %bb8, %bb4, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb30

bb3:                                              ; preds = %start
  %_6.0 = extractvalue { i32, i32 } %1, 0
  %_6.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_6.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %6, align 4
  br label %bb4

bb4:                                              ; preds = %bb11, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h31ef4b801e3e0dbdE"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_9, align 4
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_9, align 4
  %12 = getelementptr inbounds i8, ptr %_9, i64 4
  %13 = load i32, ptr %12, align 4
  %_11 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_11 to i1
  br i1 %14, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds i8, ptr %_9, i64 4
  %i4 = load i32, ptr %15, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb2dd37492d04361cE"(i32 0, i32 %n)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
  store i32 0, ptr %sum, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb2dd37492d04361cE"(i32 0, i32 %n)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb8
  %_29.0 = extractvalue { i32, i32 } %17, 0
  %_29.1 = extractvalue { i32, i32 } %17, 1
  store i32 %_29.0, ptr %iter2, align 4
  %18 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_29.1, ptr %18, align 4
  br label %bb18

bb18:                                             ; preds = %bb24, %bb17
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %19 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h31ef4b801e3e0dbdE"(ptr align 4 %iter2)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  store i32 %20, ptr %_32, align 4
  %22 = getelementptr inbounds i8, ptr %_32, i64 4
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %_32, align 4
  %24 = getelementptr inbounds i8, ptr %_32, i64 4
  %25 = load i32, ptr %24, align 4
  %_34 = zext i32 %23 to i64
  %26 = trunc nuw i64 %_34 to i1
  br i1 %26, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %27 = getelementptr inbounds i8, ptr %_32, i64 4
  %i = load i32, ptr %27, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %28 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb2dd37492d04361cE"(i32 0, i32 %n)
          to label %bb22 unwind label %cleanup

bb21:                                             ; preds = %bb19
  %_0 = load i32, ptr %sum, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr align 8 %arr)
  ret i32 %_0

bb22:                                             ; preds = %bb20
  %_36.0 = extractvalue { i32, i32 } %28, 0
  %_36.1 = extractvalue { i32, i32 } %28, 1
  store i32 %_36.0, ptr %iter3, align 4
  %29 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_36.1, ptr %29, align 4
  br label %bb23

bb23:                                             ; preds = %bb28, %bb22
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %30 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h31ef4b801e3e0dbdE"(ptr align 4 %iter3)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = extractvalue { i32, i32 } %30, 1
  store i32 %31, ptr %_39, align 4
  %33 = getelementptr inbounds i8, ptr %_39, i64 4
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %_39, align 4
  %35 = getelementptr inbounds i8, ptr %_39, i64 4
  %36 = load i32, ptr %35, align 4
  %_41 = zext i32 %34 to i64
  %37 = trunc nuw i64 %_41 to i1
  br i1 %37, label %bb25, label %bb18

bb25:                                             ; preds = %bb24
  %38 = getelementptr inbounds i8, ptr %_39, i64 4
  %j = load i32, ptr %38, align 4
  %_47 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc429ef8a9100c092E"(ptr align 8 %arr, i64 %_47, ptr align 8 @alloc_1e5f4e5df4528f6bb4ac49f15b0987a0)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_48 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E"(ptr align 8 %_45, i64 %_48, ptr align 8 @alloc_e863ea49af8e4fc7fb8ec6db4b775443)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_43 = load i32, ptr %_44, align 4
  %39 = load i32, ptr %sum, align 4
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 %_43)
  %_49.0 = extractvalue { i32, i1 } %40, 0
  %_49.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_49.1, label %panic, label %bb28

bb28:                                             ; preds = %bb27
  store i32 %_49.0, ptr %sum, align 4
  br label %bb23

panic:                                            ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fee524bf246c2b85700bbb134e0b3381) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic6, %panic
  unreachable

bb9:                                              ; preds = %bb7
  %_13.0 = extractvalue { i32, i32 } %16, 0
  %_13.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_13.0, ptr %iter1, align 4
  %41 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_13.1, ptr %41, align 4
  br label %bb10

bb10:                                             ; preds = %bb16, %bb9
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %42 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h31ef4b801e3e0dbdE"(ptr align 4 %iter1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = extractvalue { i32, i32 } %42, 1
  store i32 %43, ptr %_16, align 4
  %45 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %44, ptr %45, align 4
  %46 = load i32, ptr %_16, align 4
  %47 = getelementptr inbounds i8, ptr %_16, i64 4
  %48 = load i32, ptr %47, align 4
  %_18 = zext i32 %46 to i64
  %49 = trunc nuw i64 %_18 to i1
  br i1 %49, label %bb12, label %bb4

bb12:                                             ; preds = %bb11
  %50 = getelementptr inbounds i8, ptr %_16, i64 4
  %j5 = load i32, ptr %50, align 4
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i4, i32 %j5)
  %_22.0 = extractvalue { i32, i1 } %51, 0
  %_22.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_22.1, label %panic6, label %bb13

bb13:                                             ; preds = %bb12
; invoke core::num::<impl i32>::abs
  %_20 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17he60ae89787fa71dfE"(i32 %_22.0)
          to label %bb14 unwind label %cleanup

panic6:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d3581c3f994edd97c012429851423bd5) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_26 = sext i32 %i4 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_24 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc845a05bc7bd203cE"(ptr align 8 %arr, i64 %_26, ptr align 8 @alloc_e11e5bead5643a05eaf6cfcadf2f29da)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_27 = sext i32 %j5 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_23 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h73dab7201388e7cbE"(ptr align 8 %_24, i64 %_27, ptr align 8 @alloc_df7142f0d48c095c8f3e93fc36af732f)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  store i32 %_20, ptr %_23, align 4
  br label %bb10

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb30
  %52 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb31:                                             ; preds = %bb30
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds i8, ptr %0, i64 8
  %55 = load i32, ptr %54, align 8
  %56 = insertvalue { ptr, i32 } poison, ptr %53, 0
  %57 = insertvalue { ptr, i32 } %56, i32 %55, 1
  resume { ptr, i32 } %57
}
