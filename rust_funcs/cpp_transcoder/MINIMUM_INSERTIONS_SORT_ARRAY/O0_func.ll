define i32 @f_gold(i64 %0, i32 %N) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_49 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %max = alloca [4 x i8], align 4
  %_15 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %lis = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %N to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h882e29f7c1989b90E(ptr sret([24 x i8]) align 8 %lis, i32 1, i64 %_4)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17heb590c30e6a00452E"(i32 1, i32 %N)
          to label %bb2 unwind label %cleanup

bb32:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2869e10ca04ecf10E"(ptr align 8 %lis) #22
          to label %bb33 unwind label %terminate

cleanup:                                          ; preds = %bb20, %panic7, %bb18, %panic6, %bb15, %bb14, %panic5, %panic4, %bb9, %bb6, %bb28, %bb25, %panic, %bb23, %bb7, %bb3, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb32

bb2:                                              ; preds = %start
  %_5.0 = extractvalue { i32, i32 } %3, 0
  %_5.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_5.0, ptr %iter, align 4
  %8 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %8, align 4
  br label %bb3

bb3:                                              ; preds = %bb10, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc096981c3f384512E"(ptr align 4 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_8, align 4
  %12 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_8, align 4
  %14 = getelementptr inbounds i8, ptr %_8, i64 4
  %15 = load i32, ptr %14, align 4
  %_10 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_10 to i1
  br i1 %16, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %17 = getelementptr inbounds i8, ptr %_8, i64 4
  %i3 = load i32, ptr %17, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17heb590c30e6a00452E"(i32 0, i32 %i3)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  store i32 0, ptr %max, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %19 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17heb590c30e6a00452E"(i32 0, i32 %N)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb7
  %_46.0 = extractvalue { i32, i32 } %19, 0
  %_46.1 = extractvalue { i32, i32 } %19, 1
  store i32 %_46.0, ptr %iter2, align 4
  %20 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_46.1, ptr %20, align 4
  br label %bb23

bb23:                                             ; preds = %bb29, %bb27, %bb22
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %21 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc096981c3f384512E"(ptr align 4 %iter2)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = extractvalue { i32, i32 } %21, 1
  store i32 %22, ptr %_49, align 4
  %24 = getelementptr inbounds i8, ptr %_49, i64 4
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %_49, align 4
  %26 = getelementptr inbounds i8, ptr %_49, i64 4
  %27 = load i32, ptr %26, align 4
  %_51 = zext i32 %25 to i64
  %28 = trunc nuw i64 %_51 to i1
  br i1 %28, label %bb25, label %bb26

bb25:                                             ; preds = %bb24
  %29 = getelementptr inbounds i8, ptr %_49, i64 4
  %i = load i32, ptr %29, align 4
  %_54 = load i32, ptr %max, align 4
  %_58 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h59a78e51694a4783E"(ptr align 8 %lis, i64 %_58, ptr align 8 @alloc_f6516374f1f26aebe87328248bbec752)
          to label %bb27 unwind label %cleanup

bb26:                                             ; preds = %bb24
  %_63 = load i32, ptr %max, align 4
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %N, i32 %_63)
  %_64.0 = extractvalue { i32, i1 } %30, 0
  %_64.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_64.1, label %panic, label %bb30

bb30:                                             ; preds = %bb26
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2869e10ca04ecf10E"(ptr align 8 %lis)
  ret i32 %_64.0

panic:                                            ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a05a1c20be99528f04b4aedb25b19cc4) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb27:                                             ; preds = %bb25
  %_55 = load i32, ptr %_56, align 4
  %_53 = icmp slt i32 %_54, %_55
  br i1 %_53, label %bb28, label %bb23

bb28:                                             ; preds = %bb27
  %_62 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_60 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h59a78e51694a4783E"(ptr align 8 %lis, i64 %_62, ptr align 8 @alloc_ead6c07fa7e79f69a5d9258a1448f915)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_59 = load i32, ptr %_60, align 4
  store i32 %_59, ptr %max, align 4
  br label %bb23

bb8:                                              ; preds = %bb6
  %_12.0 = extractvalue { i32, i32 } %18, 0
  %_12.1 = extractvalue { i32, i32 } %18, 1
  store i32 %_12.0, ptr %iter1, align 4
  %31 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_12.1, ptr %31, align 4
  br label %bb9

bb9:                                              ; preds = %bb21, %bb17, %bb13, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %32 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc096981c3f384512E"(ptr align 4 %iter1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  store i32 %33, ptr %_15, align 4
  %35 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %_15, align 4
  %37 = getelementptr inbounds i8, ptr %_15, i64 4
  %38 = load i32, ptr %37, align 4
  %_17 = zext i32 %36 to i64
  %39 = trunc nuw i64 %_17 to i1
  br i1 %39, label %bb11, label %bb3

bb11:                                             ; preds = %bb10
  %40 = getelementptr inbounds i8, ptr %_15, i64 4
  %j = load i32, ptr %40, align 4
  %_21 = sext i32 %i3 to i64
  %_22 = icmp ult i64 %_21, 2
  br i1 %_22, label %bb12, label %panic4

bb12:                                             ; preds = %bb11
  %41 = getelementptr inbounds nuw i32, ptr %arr, i64 %_21
  %_20 = load i32, ptr %41, align 4
  %_24 = sext i32 %j to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb13, label %panic5

panic4:                                           ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 2, ptr align 8 @alloc_06bd3dd697045d1847a07382dccb8582) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %42 = getelementptr inbounds nuw i32, ptr %arr, i64 %_24
  %_23 = load i32, ptr %42, align 4
  %_19 = icmp sge i32 %_20, %_23
  br i1 %_19, label %bb14, label %bb9

panic5:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_26f6a52f93c9106f8a55f3ad6361ed72) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_30 = sext i32 %i3 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h59a78e51694a4783E"(ptr align 8 %lis, i64 %_30, ptr align 8 @alloc_b8debcf9c7b677b42daa319fdeb0df44)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_27 = load i32, ptr %_28, align 4
  %_35 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h59a78e51694a4783E"(ptr align 8 %lis, i64 %_35, ptr align 8 @alloc_813ebfaa4a190bc7394089fce2b546c4)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_32 = load i32, ptr %_33, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 1)
  %_36.0 = extractvalue { i32, i1 } %43, 0
  %_36.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_36.1, label %panic6, label %bb17

bb17:                                             ; preds = %bb16
  %_26 = icmp slt i32 %_27, %_36.0
  br i1 %_26, label %bb18, label %bb9

panic6:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d1e98b0df7fd85b187a4777c95e111ee) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_40 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h59a78e51694a4783E"(ptr align 8 %lis, i64 %_40, ptr align 8 @alloc_80b7918aad304e5e4a34c5233f47c480)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_37 = load i32, ptr %_38, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_37, i32 1)
  %_41.0 = extractvalue { i32, i1 } %44, 0
  %_41.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_41.1, label %panic7, label %bb20

bb20:                                             ; preds = %bb19
  %_44 = sext i32 %i3 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb1937c440cb6349eE"(ptr align 8 %lis, i64 %_44, ptr align 8 @alloc_f990fa81e04bf99989cb777202591d32)
          to label %bb21 unwind label %cleanup

panic7:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8f6a82938232acc5666be03133d5c131) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 %_41.0, ptr %_42, align 4
  br label %bb9

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb32
  %45 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb33:                                             ; preds = %bb32
  %46 = load ptr, ptr %1, align 8
  %47 = getelementptr inbounds i8, ptr %1, i64 8
  %48 = load i32, ptr %47, align 8
  %49 = insertvalue { ptr, i32 } poison, ptr %46, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %48, 1
  resume { ptr, i32 } %50
}
