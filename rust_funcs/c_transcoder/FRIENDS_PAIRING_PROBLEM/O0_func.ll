define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hd918a30c5c9b1bd4E(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_5.0)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h731f8a434ae2ba5dE"(ptr sret([12 x i8]) align 4 %_7, i32 0, i32 %n)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_18006386ca0ddfe26b323039641694f5) #23
  unreachable

bb23:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4b2d7c9e6b02d603E"(ptr align 8 %dp) #22
          to label %bb24 unwind label %terminate

cleanup:                                          ; preds = %bb10, %bb19, %panic5, %panic4, %bb16, %panic3, %panic2, %bb13, %panic1, %bb9, %bb5, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb23

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4ffa06142aa6c8a9E"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb11, %bb20, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he57ec7d4bbd37fccE"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_9, align 4
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_9, align 4
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  %11 = load i32, ptr %10, align 4
  %_11 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_11 to i1
  br i1 %12, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %13 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %13, align 4
  %_13 = icmp sle i32 %i, 2
  br i1 %_13, label %bb10, label %bb12

bb9:                                              ; preds = %bb6
  %_39 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E"(ptr align 8 %dp, i64 %_39, ptr align 8 @alloc_8025ca23979c27d26fd8bedf543dbfb1)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb9
  %_0 = load i32, ptr %_37, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4b2d7c9e6b02d603E"(ptr align 8 %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb8
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_22.0 = extractvalue { i32, i1 } %14, 0
  %_22.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_22.1, label %panic1, label %bb13

bb10:                                             ; preds = %bb8
  %_16 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_14 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h60c4fa2ab1691ba5E"(ptr align 8 %dp, i64 %_16, ptr align 8 @alloc_a5d248e5aecebf86ae4ccdce23ebfaeb)
          to label %bb11 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_20 = sext i32 %_22.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_18 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E"(ptr align 8 %dp, i64 %_20, ptr align 8 @alloc_44db42ff59c97e0db85077c1eabb7e9e)
          to label %bb14 unwind label %cleanup

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_78d2f09c9774897fb8e536f85f3c0192) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb14:                                             ; preds = %bb13
  %_17 = load i32, ptr %_18, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_25.0 = extractvalue { i32, i1 } %15, 0
  %_25.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_25.1, label %panic2, label %bb15

bb15:                                             ; preds = %bb14
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 2)
  %_31.0 = extractvalue { i32, i1 } %16, 0
  %_31.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_31.1, label %panic3, label %bb16

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dc8e77e665418fb2aa7853c5aece7da7) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_29 = sext i32 %_31.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6e87601804ce4b5E"(ptr align 8 %dp, i64 %_29, ptr align 8 @alloc_8aa2c52154c099f17a8f02e36442f9e4)
          to label %bb17 unwind label %cleanup

panic3:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5e576d557d56edb5f0f386d3d1a0606e) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_26 = load i32, ptr %_27, align 4
  %17 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_25.0, i32 %_26)
  %_32.0 = extractvalue { i32, i1 } %17, 0
  %_32.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_32.1, label %panic4, label %bb18

bb18:                                             ; preds = %bb17
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_17, i32 %_32.0)
  %_33.0 = extractvalue { i32, i1 } %18, 0
  %_33.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_33.1, label %panic5, label %bb19

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_dc8e77e665418fb2aa7853c5aece7da7) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_36 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_34 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h60c4fa2ab1691ba5E"(ptr align 8 %dp, i64 %_36, ptr align 8 @alloc_94985aa9f207482a727aab1d5cd40c90)
          to label %bb20 unwind label %cleanup

panic5:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d612c46181982101cf5e236da2967e07) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i32 %_33.0, ptr %_34, align 4
  br label %bb5

bb11:                                             ; preds = %bb10
  store i32 %i, ptr %_14, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb23
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb24:                                             ; preds = %bb23
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds i8, ptr %0, i64 8
  %22 = load i32, ptr %21, align 8
  %23 = insertvalue { ptr, i32 } poison, ptr %20, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  resume { ptr, i32 } %24
}
