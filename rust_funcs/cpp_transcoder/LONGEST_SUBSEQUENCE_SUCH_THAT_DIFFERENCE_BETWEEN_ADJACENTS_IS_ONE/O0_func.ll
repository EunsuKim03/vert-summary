define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_48 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  %_16 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h824d97e2df7fcc48E(ptr sret([24 x i8]) align 8 %dp, i32 1, i64 %_4)
  %_7 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h00142cd0c792365eE"(i64 1, i64 %_7)
          to label %bb2 unwind label %cleanup

bb32:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9083dbf3e0badb4aE"(ptr align 8 %dp) #22
          to label %bb33 unwind label %terminate

cleanup:                                          ; preds = %bb21, %bb20, %panic7, %bb18, %bb17, %panic6, %panic5, %panic4, %panic, %bb9, %bb6, %bb29, %bb26, %bb24, %bb7, %bb3, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb32

bb2:                                              ; preds = %start
  %_5.0 = extractvalue { i64, i64 } %3, 0
  %_5.1 = extractvalue { i64, i64 } %3, 1
  store i64 %_5.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %8, align 8
  br label %bb3

bb3:                                              ; preds = %bb10, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbef05fdc7e482c6fE"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_9, align 8
  %12 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %11, ptr %12, align 8
  %_11 = load i64, ptr %_9, align 8
  %13 = getelementptr inbounds i8, ptr %_9, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_11 to i1
  br i1 %15, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %16 = getelementptr inbounds i8, ptr %_9, i64 8
  %i3 = load i64, ptr %16, align 8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h00142cd0c792365eE"(i64 0, i64 %i3)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  store i32 1, ptr %result, align 4
  %_46 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h00142cd0c792365eE"(i64 0, i64 %_46)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb7
  %_44.0 = extractvalue { i64, i64 } %18, 0
  %_44.1 = extractvalue { i64, i64 } %18, 1
  store i64 %_44.0, ptr %iter2, align 8
  %19 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_44.1, ptr %19, align 8
  br label %bb24

bb24:                                             ; preds = %bb30, %bb28, %bb23
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbef05fdc7e482c6fE"(ptr align 8 %iter2)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  store i64 %21, ptr %_48, align 8
  %23 = getelementptr inbounds i8, ptr %_48, i64 8
  store i64 %22, ptr %23, align 8
  %_50 = load i64, ptr %_48, align 8
  %24 = getelementptr inbounds i8, ptr %_48, i64 8
  %25 = load i64, ptr %24, align 8
  %26 = trunc nuw i64 %_50 to i1
  br i1 %26, label %bb26, label %bb27

bb26:                                             ; preds = %bb25
  %27 = getelementptr inbounds i8, ptr %_48, i64 8
  %i = load i64, ptr %27, align 8
  %_53 = load i32, ptr %result, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_28f7a26183734ceaf82e495ca2a67f81)
          to label %bb28 unwind label %cleanup

bb27:                                             ; preds = %bb25
  %_0 = load i32, ptr %result, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9083dbf3e0badb4aE"(ptr align 8 %dp)
  ret i32 %_0

bb28:                                             ; preds = %bb26
  %_54 = load i32, ptr %_55, align 4
  %_52 = icmp slt i32 %_53, %_54
  br i1 %_52, label %bb29, label %bb24

bb29:                                             ; preds = %bb28
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_58 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_508e50d7e871d3cf2fac75f3e9f87781)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_57 = load i32, ptr %_58, align 4
  store i32 %_57, ptr %result, align 4
  br label %bb24

bb8:                                              ; preds = %bb6
  %_13.0 = extractvalue { i64, i64 } %17, 0
  %_13.1 = extractvalue { i64, i64 } %17, 1
  store i64 %_13.0, ptr %iter1, align 8
  %28 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_13.1, ptr %28, align 8
  br label %bb9

bb9:                                              ; preds = %bb22, %bb16, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %29 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbef05fdc7e482c6fE"(ptr align 8 %iter1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %30 = extractvalue { i64, i64 } %29, 0
  %31 = extractvalue { i64, i64 } %29, 1
  store i64 %30, ptr %_16, align 8
  %32 = getelementptr inbounds i8, ptr %_16, i64 8
  store i64 %31, ptr %32, align 8
  %_18 = load i64, ptr %_16, align 8
  %33 = getelementptr inbounds i8, ptr %_16, i64 8
  %34 = load i64, ptr %33, align 8
  %35 = trunc nuw i64 %_18 to i1
  br i1 %35, label %bb11, label %bb3

bb11:                                             ; preds = %bb10
  %36 = getelementptr inbounds i8, ptr %_16, i64 8
  %j = load i64, ptr %36, align 8
  %_22 = icmp ult i64 %i3, 2
  br i1 %_22, label %bb12, label %panic

bb12:                                             ; preds = %bb11
  %37 = getelementptr inbounds nuw float, ptr %arr, i64 %i3
  %_21 = load float, ptr %37, align 4
  %_25 = icmp ult i64 %j, 2
  br i1 %_25, label %bb13, label %panic4

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_528281f011bb7dded92d2a8c930cffe3) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %38 = getelementptr inbounds nuw float, ptr %arr, i64 %j
  %_24 = load float, ptr %38, align 4
  %_23 = fadd float %_24, 1.000000e+00
  %_20 = fcmp oeq float %_21, %_23
  br i1 %_20, label %bb17, label %bb14

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_1437e4b29745f0bc526f4513c0e95a92) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_28 = icmp ult i64 %i3, 2
  br i1 %_28, label %bb15, label %panic5

bb17:                                             ; preds = %bb16, %bb13
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E"(ptr align 8 %dp, i64 %i3, ptr align 8 @alloc_c5f8dfce65da1f733633d39ffce0533e)
          to label %bb18 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %39 = getelementptr inbounds nuw float, ptr %arr, i64 %i3
  %_27 = load float, ptr %39, align 4
  %_31 = icmp ult i64 %j, 2
  br i1 %_31, label %bb16, label %panic6

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_2bfccf4ddc6c8dedcedde89bdd78500d) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %40 = getelementptr inbounds nuw float, ptr %arr, i64 %j
  %_30 = load float, ptr %40, align 4
  %_29 = fsub float %_30, 1.000000e+00
  %_26 = fcmp oeq float %_27, %_29
  br i1 %_26, label %bb17, label %bb9

panic6:                                           ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_de1d56d516a72ca2de0ef5978df361e8) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_33 = load i32, ptr %_34, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E"(ptr align 8 %dp, i64 %j, ptr align 8 @alloc_467b74aa8a6b8f30693b7d4fc7d17f5d)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_37 = load i32, ptr %_38, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_37, i32 1)
  %_40.0 = extractvalue { i32, i1 } %41, 0
  %_40.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_40.1, label %panic7, label %bb20

bb20:                                             ; preds = %bb19
; invoke core::cmp::Ord::max
  %_32 = invoke i32 @_ZN4core3cmp3Ord3max17h3d9446d2b5fd6ab7E(i32 %_33, i32 %_40.0)
          to label %bb21 unwind label %cleanup

panic7:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_201c821f05a3351c8580004ad58bb339) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_41 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8646f3dced5d561dE"(ptr align 8 %dp, i64 %i3, ptr align 8 @alloc_fc8b14e04ce0351a292d8bd8adb6d7dd)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_32, ptr %_41, align 4
  br label %bb9

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb32
  %42 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb33:                                             ; preds = %bb32
  %43 = load ptr, ptr %1, align 8
  %44 = getelementptr inbounds i8, ptr %1, i64 8
  %45 = load i32, ptr %44, align 8
  %46 = insertvalue { ptr, i32 } poison, ptr %43, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1
  resume { ptr, i32 } %47
}
