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
  call void @_ZN5alloc3vec9from_elem17h372e2269bfef4ae1E(ptr sret([24 x i8]) align 8 %dp, i32 1, i64 %_5.0)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h421d8fba717a6131E"(ptr sret([12 x i8]) align 4 %_7, i32 2, i32 %n)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b85d988a27ea4040f4a03fabf3e87dbf) #23
  unreachable

bb19:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h229c238cb28a4ff4E"(ptr align 8 %dp) #22
          to label %bb20 unwind label %terminate

cleanup:                                          ; preds = %bb15, %panic4, %panic3, %bb12, %panic2, %bb10, %panic1, %bb9, %bb5, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb19

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hac38c27a7d11c7ddE"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb16, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h50309c078a254bcfE"(ptr align 4 %iter)
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
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_19.0 = extractvalue { i32, i1 } %14, 0
  %_19.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_19.1, label %panic1, label %bb10

bb9:                                              ; preds = %bb6
  %_33 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_31 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E"(ptr align 8 %dp, i64 %_33, ptr align 8 @alloc_a4423bae7ed5c373c9ae2c59058670c1)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb9
  %_0 = load i32, ptr %_31, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h229c238cb28a4ff4E"(ptr align 8 %dp)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_17 = sext i32 %_19.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_15 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E"(ptr align 8 %dp, i64 %_17, ptr align 8 @alloc_25d536ab29da7e29f7713ce8ce28937b)
          to label %bb11 unwind label %cleanup

panic1:                                           ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_260da22f1ef55316219df528857c21b4) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2, %panic1
  unreachable

bb11:                                             ; preds = %bb10
  %_14 = load i32, ptr %_15, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 2)
  %_25.0 = extractvalue { i32, i1 } %15, 0
  %_25.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_25.1, label %panic2, label %bb12

bb12:                                             ; preds = %bb11
  %_23 = sext i32 %_25.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_21 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E"(ptr align 8 %dp, i64 %_23, ptr align 8 @alloc_890f94f1090e99c4d5071d5ab51a7551)
          to label %bb13 unwind label %cleanup

panic2:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f369402b7aa271fa5afd72babbc27cc7) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_20 = load i32, ptr %_21, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_14, i32 %_20)
  %_26.0 = extractvalue { i32, i1 } %16, 0
  %_26.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_26.1, label %panic3, label %bb14

bb14:                                             ; preds = %bb13
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_26.0, i32 1)
  %_27.0 = extractvalue { i32, i1 } %17, 0
  %_27.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_27.1, label %panic4, label %bb15

panic3:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8580779bb7acd34442cf3f31148f66e6) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_30 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_28 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h86d98e9de5e5dbdcE"(ptr align 8 %dp, i64 %_30, ptr align 8 @alloc_ee732e0e69b94641b8912be0be0fad29)
          to label %bb16 unwind label %cleanup

panic4:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8580779bb7acd34442cf3f31148f66e6) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  store i32 %_27.0, ptr %_28, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb19
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb20:                                             ; preds = %bb19
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  %21 = load i32, ptr %20, align 8
  %22 = insertvalue { ptr, i32 } poison, ptr %19, 0
  %23 = insertvalue { ptr, i32 } %22, i32 %21, 1
  resume { ptr, i32 } %23
}
