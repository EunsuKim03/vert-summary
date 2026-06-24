define i32 @f_gold(i32 %x) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_4 = sext i32 %x to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17ha7b7e442e05556b4E(ptr sret([24 x i8]) align 8 %dp, i32 1, i64 %_5.0)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h22d9d406e7955495E"(ptr sret([12 x i8]) align 4 %_7, i32 2, i32 %x)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_448bb7fa43646a0141cc18d79e4c3152) #23
  unreachable

bb20:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7fce3f129bfe8a7aE"(ptr align 8 %dp) #22
          to label %bb21 unwind label %terminate

cleanup:                                          ; preds = %bb16, %panic5, %panic4, %bb13, %panic3, %panic2, %bb10, %panic1, %bb9, %bb5, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb20

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a4aff11b679c60cE"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb17, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h274575dfe1c7ff39E"(ptr align 4 %iter)
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
  %_18.0 = extractvalue { i32, i1 } %14, 0
  %_18.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_18.1, label %panic1, label %bb10

bb9:                                              ; preds = %bb6
  %_35 = sext i32 %x to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2bd0d7c259633058E"(ptr align 8 %dp, i64 %_35, ptr align 8 @alloc_a87ec49e03f9c5eff303abddebe46aac)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb9
  %_0 = load i32, ptr %_33, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7fce3f129bfe8a7aE"(ptr align 8 %dp)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_16 = sext i32 %_18.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_14 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2bd0d7c259633058E"(ptr align 8 %dp, i64 %_16, ptr align 8 @alloc_ebc38d229c7d1a95e6ca4f331e0c7402)
          to label %bb11 unwind label %cleanup

panic1:                                           ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_075e432b826ad1ca4bc3122c072e6512) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb11:                                             ; preds = %bb10
  %_13 = load i32, ptr %_14, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_21.0 = extractvalue { i32, i1 } %15, 0
  %_21.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_21.1, label %panic2, label %bb12

bb12:                                             ; preds = %bb11
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 2)
  %_27.0 = extractvalue { i32, i1 } %16, 0
  %_27.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_27.1, label %panic3, label %bb13

panic2:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c9d28f70b69566b637fb5b8efb236309) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_25 = sext i32 %_27.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_23 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2bd0d7c259633058E"(ptr align 8 %dp, i64 %_25, ptr align 8 @alloc_99506e3beff968ee26f1afd397736974)
          to label %bb14 unwind label %cleanup

panic3:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c704281ef6b7a0aabfa3c74ced263689) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_22 = load i32, ptr %_23, align 4
  %17 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_21.0, i32 %_22)
  %_28.0 = extractvalue { i32, i1 } %17, 0
  %_28.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_28.1, label %panic4, label %bb15

bb15:                                             ; preds = %bb14
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_13, i32 %_28.0)
  %_29.0 = extractvalue { i32, i1 } %18, 0
  %_29.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_29.1, label %panic5, label %bb16

panic4:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c9d28f70b69566b637fb5b8efb236309) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_32 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_30 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7641a814faba6b20E"(ptr align 8 %dp, i64 %_32, ptr align 8 @alloc_e046730d4efa2d0e1aa840a5e266ccd5)
          to label %bb17 unwind label %cleanup

panic5:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b61e41f91b219df16c2f983b368977eb) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  store i32 %_29.0, ptr %_30, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb20
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb21:                                             ; preds = %bb20
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds i8, ptr %0, i64 8
  %22 = load i32, ptr %21, align 8
  %23 = insertvalue { ptr, i32 } poison, ptr %20, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  resume { ptr, i32 } %24
}
