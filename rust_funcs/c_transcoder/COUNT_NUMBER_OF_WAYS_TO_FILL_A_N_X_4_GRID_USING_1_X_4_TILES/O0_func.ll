define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_9 = alloca [12 x i8], align 4
  %_8 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_108377a31224447ec9268c23b428d60d)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_274a0432b25c436bac7758eb6395b0e9) #23
  unreachable

bb26:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h61601c8547d244c7E"(ptr align 8 %dp) #22
          to label %bb27 unwind label %terminate

cleanup:                                          ; preds = %bb12, %bb15, %bb22, %panic3, %bb20, %panic2, %bb18, %panic1, %bb10, %bb6, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb26

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_6, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17he5550104edfe0ff5E"(ptr sret([12 x i8]) align 4 %_9, i32 1, i32 %n)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h92c8200c7745d1a4E"(ptr sret([12 x i8]) align 4 %_8, ptr align 4 %_9)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_8, i64 12, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb13, %bb16, %bb23, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb1efd051cbc37981E"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_11, align 4
  %8 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_11, align 4
  %10 = getelementptr inbounds i8, ptr %_11, i64 4
  %11 = load i32, ptr %10, align 4
  %_13 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_13 to i1
  br i1 %12, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %13, align 4
  %_15 = icmp sge i32 %i, 1
  br i1 %_15, label %bb11, label %bb14

bb10:                                             ; preds = %bb7
  %_42 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_40 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE"(ptr align 8 %dp, i64 %_42, ptr align 8 @alloc_fda3d9cbb8bb275936aa2e1b81db3d92)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb10
  %_0 = load i32, ptr %_40, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h61601c8547d244c7E"(ptr align 8 %dp)
  ret i32 %_0

bb14:                                             ; preds = %bb11, %bb9
  %_20 = icmp eq i32 %i, 4
  br i1 %_20, label %bb15, label %bb17

bb11:                                             ; preds = %bb9
  %_16 = icmp sle i32 %i, 3
  br i1 %_16, label %bb12, label %bb14

bb12:                                             ; preds = %bb11
  %_19 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_17 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E"(ptr align 8 %dp, i64 %_19, ptr align 8 @alloc_80feb50537df9cc89364164642b2cbb6)
          to label %bb13 unwind label %cleanup

bb17:                                             ; preds = %bb14
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_29.0 = extractvalue { i32, i1 } %14, 0
  %_29.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_29.1, label %panic1, label %bb18

bb15:                                             ; preds = %bb14
  %_23 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_21 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E"(ptr align 8 %dp, i64 %_23, ptr align 8 @alloc_73f8f07d6cb4b4e0584e91af0bdd7734)
          to label %bb16 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_27 = sext i32 %_29.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_25 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE"(ptr align 8 %dp, i64 %_27, ptr align 8 @alloc_58bb8a434aae181adef8df54f7964574)
          to label %bb19 unwind label %cleanup

panic1:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_86fab8e79c92ec969c4b5ee048d1352b) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2, %panic1
  unreachable

bb19:                                             ; preds = %bb18
  %_24 = load i32, ptr %_25, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 4)
  %_35.0 = extractvalue { i32, i1 } %15, 0
  %_35.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_35.1, label %panic2, label %bb20

bb20:                                             ; preds = %bb19
  %_33 = sext i32 %_35.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_31 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE"(ptr align 8 %dp, i64 %_33, ptr align 8 @alloc_68698a9431718c3fcf4c37a542c60448)
          to label %bb21 unwind label %cleanup

panic2:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_be805ba1d96413196c641f4624888960) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_30 = load i32, ptr %_31, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_24, i32 %_30)
  %_36.0 = extractvalue { i32, i1 } %16, 0
  %_36.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_36.1, label %panic3, label %bb22

bb22:                                             ; preds = %bb21
  %_39 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_37 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E"(ptr align 8 %dp, i64 %_39, ptr align 8 @alloc_78b764300c18f028af5e4e4c6f887669)
          to label %bb23 unwind label %cleanup

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5b867ab2713cf39631503eaccd876876) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 %_36.0, ptr %_37, align 4
  br label %bb6

bb16:                                             ; preds = %bb15
  store i32 2, ptr %_21, align 4
  br label %bb6

bb13:                                             ; preds = %bb12
  store i32 1, ptr %_17, align 4
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb26
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb27:                                             ; preds = %bb26
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 8
  %21 = insertvalue { ptr, i32 } poison, ptr %18, 0
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1
  resume { ptr, i32 } %22
}
