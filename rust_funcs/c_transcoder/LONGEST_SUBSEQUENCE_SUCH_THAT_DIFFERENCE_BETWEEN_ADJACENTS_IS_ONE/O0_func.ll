define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_50 = alloca [16 x i8], align 8
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

bb34:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9083dbf3e0badb4aE"(ptr align 8 %dp) #22
          to label %bb35 unwind label %terminate

cleanup:                                          ; preds = %bb23, %bb22, %panic9, %bb20, %bb19, %panic8, %panic7, %panic6, %panic5, %panic4, %panic, %bb9, %bb6, %bb31, %bb28, %bb26, %bb7, %bb3, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb34

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
  %_48 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h00142cd0c792365eE"(i64 0, i64 %_48)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb7
  %_46.0 = extractvalue { i64, i64 } %18, 0
  %_46.1 = extractvalue { i64, i64 } %18, 1
  store i64 %_46.0, ptr %iter2, align 8
  %19 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_46.1, ptr %19, align 8
  br label %bb26

bb26:                                             ; preds = %bb32, %bb30, %bb25
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbef05fdc7e482c6fE"(ptr align 8 %iter2)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  store i64 %21, ptr %_50, align 8
  %23 = getelementptr inbounds i8, ptr %_50, i64 8
  store i64 %22, ptr %23, align 8
  %_52 = load i64, ptr %_50, align 8
  %24 = getelementptr inbounds i8, ptr %_50, i64 8
  %25 = load i64, ptr %24, align 8
  %26 = trunc nuw i64 %_52 to i1
  br i1 %26, label %bb28, label %bb29

bb28:                                             ; preds = %bb27
  %27 = getelementptr inbounds i8, ptr %_50, i64 8
  %i = load i64, ptr %27, align 8
  %_55 = load i32, ptr %result, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_4c50854920dd692170ef022c65d1cb63)
          to label %bb30 unwind label %cleanup

bb29:                                             ; preds = %bb27
  %_0 = load i32, ptr %result, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9083dbf3e0badb4aE"(ptr align 8 %dp)
  ret i32 %_0

bb30:                                             ; preds = %bb28
  %_56 = load i32, ptr %_57, align 4
  %_54 = icmp slt i32 %_55, %_56
  br i1 %_54, label %bb31, label %bb26

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_60 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_e8d7a820331bf07586c260cadb8d47bb)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_59 = load i32, ptr %_60, align 4
  store i32 %_59, ptr %result, align 4
  br label %bb26

bb8:                                              ; preds = %bb6
  %_13.0 = extractvalue { i64, i64 } %17, 0
  %_13.1 = extractvalue { i64, i64 } %17, 1
  store i64 %_13.0, ptr %iter1, align 8
  %28 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_13.1, ptr %28, align 8
  br label %bb9

bb9:                                              ; preds = %bb24, %bb18, %bb8
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
  %37 = getelementptr inbounds nuw i32, ptr %arr, i64 %i3
  %_21 = load i32, ptr %37, align 4
  %_25 = icmp ult i64 %j, 2
  br i1 %_25, label %bb13, label %panic4

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_63030a71be8ad4ff6a16c3e80781f476) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %38 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_24 = load i32, ptr %38, align 4
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_24, i32 1)
  %_26.0 = extractvalue { i32, i1 } %39, 0
  %_26.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_26.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_de1290477a640a4374cf607c3f357b21) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_20 = icmp eq i32 %_21, %_26.0
  br i1 %_20, label %bb19, label %bb15

panic5:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_de1290477a640a4374cf607c3f357b21) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_29 = icmp ult i64 %i3, 2
  br i1 %_29, label %bb16, label %panic6

bb19:                                             ; preds = %bb18, %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E"(ptr align 8 %dp, i64 %i3, ptr align 8 @alloc_b8b2e49487c1fd2b251518861085ca8d)
          to label %bb20 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %40 = getelementptr inbounds nuw i32, ptr %arr, i64 %i3
  %_28 = load i32, ptr %40, align 4
  %_32 = icmp ult i64 %j, 2
  br i1 %_32, label %bb17, label %panic7

panic6:                                           ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_bdfdfdc49a241aeaf83e0b4e20720d07) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %41 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_31 = load i32, ptr %41, align 4
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_31, i32 1)
  %_33.0 = extractvalue { i32, i1 } %42, 0
  %_33.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_33.1, label %panic8, label %bb18

panic7:                                           ; preds = %bb16
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_333720e604df07e4683f2f451ca6ef4d) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_27 = icmp eq i32 %_28, %_33.0
  br i1 %_27, label %bb19, label %bb9

panic8:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_333720e604df07e4683f2f451ca6ef4d) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_35 = load i32, ptr %_36, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_40 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2765bbf053ec4d93E"(ptr align 8 %dp, i64 %j, ptr align 8 @alloc_dca7aaf796f56768ccf8efb4f2521a91)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_39 = load i32, ptr %_40, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_39, i32 1)
  %_42.0 = extractvalue { i32, i1 } %43, 0
  %_42.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_42.1, label %panic9, label %bb22

bb22:                                             ; preds = %bb21
; invoke core::cmp::max
  %_34 = invoke i32 @_ZN4core3cmp3max17h509e4d6253416b66E(i32 %_35, i32 %_42.0)
          to label %bb23 unwind label %cleanup

panic9:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4d4f474bc8fcbe70dddd4a6ca9ef662d) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_43 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8646f3dced5d561dE"(ptr align 8 %dp, i64 %i3, ptr align 8 @alloc_338facecbf856971762508b5e7f322d6)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  store i32 %_34, ptr %_43, align 4
  br label %bb9

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb34
  %44 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb35:                                             ; preds = %bb34
  %45 = load ptr, ptr %1, align 8
  %46 = getelementptr inbounds i8, ptr %1, i64 8
  %47 = load i32, ptr %46, align 8
  %48 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %49 = insertvalue { ptr, i32 } %48, i32 %47, 1
  resume { ptr, i32 } %49
}
