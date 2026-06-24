define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [8 x i8], align 8
  %0 = alloca [16 x i8], align 8
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %res = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h02dd0ced2ae9f1cfE(ptr sret([24 x i8]) align 8 %res, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E"(ptr align 8 %res, i64 0, ptr align 8 @alloc_fe237a0f60a400f7f25d2a37a1c13a1f)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2ff9fc05ca9b93f83cd299152d1c48d5) #23
  unreachable

bb28:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he397cdff1ab61c43E"(ptr align 8 %res) #22
          to label %bb29 unwind label %terminate

cleanup:                                          ; preds = %bb2.i, %bb22, %panic3, %bb20, %panic2, %bb17, %panic1, %bb14, %bb12, %bb24, %bb11, %bb7, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb28

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_6, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E"(ptr align 8 %res, i64 1, ptr align 8 @alloc_d15497a338d44fb24c3adcececc5f200)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_8, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17heb0dd712bc6b83d2E"(ptr sret([12 x i8]) align 4 %_11, i32 2, i32 %n)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8cf25bd4b1e68aa5E"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb23, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2f8f57792f3be234E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_13, align 4
  %8 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_13, align 4
  %10 = getelementptr inbounds i8, ptr %_13, i64 4
  %11 = load i32, ptr %10, align 4
  %_15 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_15 to i1
  br i1 %12, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %13 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %13, align 4
  %_23 = sext i32 %i to i64
  br label %bb12

bb11:                                             ; preds = %bb8
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::Deref>::deref
  %14 = invoke { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h17752f0f54ec356eE"(ptr align 8 %res)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb11
  %_51.0 = extractvalue { ptr, i64 } %14, 0
  %_51.1 = extractvalue { ptr, i64 } %14, 1
; invoke core::slice::<impl [T]>::last
  %_50 = invoke align 4 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4last17h43f257ff9ae29946E"(ptr align 4 %_51.0, i64 %_51.1)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  store ptr %_50, ptr %self.i, align 8
  %15 = load ptr, ptr %self.i, align 8
  %16 = ptrtoint ptr %15 to i64
  %17 = icmp eq i64 %16, 0
  %_2.i = select i1 %17, i64 0, i64 1
  %18 = trunc nuw i64 %_2.i to i1
  br i1 %18, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc11b93bc0ee22addE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb25
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_74f2b1d79e2c6c280d914fae146f98c6) #23
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hc11b93bc0ee22addE.exit": ; preds = %bb25
  %val.i = load ptr, ptr %self.i, align 8
  br label %bb26

bb26:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc11b93bc0ee22addE.exit"
  %_0 = load i32, ptr %val.i, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he397cdff1ab61c43E"(ptr align 8 %res)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %_22 = udiv i64 %_23, 2
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE"(ptr align 8 %res, i64 %_22, ptr align 8 @alloc_d5183804b6aa4afab4d20a6ee8da9aab)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_19 = load i32, ptr %_20, align 4
  %_29 = sext i32 %i to i64
  br label %bb14

bb14:                                             ; preds = %bb13
  %_28 = udiv i64 %_29, 3
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_26 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE"(ptr align 8 %res, i64 %_28, ptr align 8 @alloc_66f675f57fd40e465affefa44c8f3462)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_25 = load i32, ptr %_26, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_19, i32 %_25)
  %_31.0 = extractvalue { i32, i1 } %19, 0
  %_31.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_31.1, label %panic1, label %bb16

bb16:                                             ; preds = %bb15
  %_36 = sext i32 %i to i64
  br label %bb17

panic1:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fbba131508497a21e6f9224ac7135540) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2, %panic1
  unreachable

bb17:                                             ; preds = %bb16
  %_35 = udiv i64 %_36, 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE"(ptr align 8 %res, i64 %_35, ptr align 8 @alloc_46f7bcd617cb732bb51cc1066df0a5f4)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_32 = load i32, ptr %_33, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_31.0, i32 %_32)
  %_38.0 = extractvalue { i32, i1 } %20, 0
  %_38.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_38.1, label %panic2, label %bb19

bb19:                                             ; preds = %bb18
  %_43 = sext i32 %i to i64
  br label %bb20

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fbba131508497a21e6f9224ac7135540) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_42 = udiv i64 %_43, 5
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_40 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hacd3de72c05f187bE"(ptr align 8 %res, i64 %_42, ptr align 8 @alloc_fa6de647b65354e8e8c45b11696d2ba6)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_39 = load i32, ptr %_40, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_38.0, i32 %_39)
  %_45.0 = extractvalue { i32, i1 } %21, 0
  %_45.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_45.1, label %panic3, label %bb22

bb22:                                             ; preds = %bb21
  %_48 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_46 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6209ffeafc514822E"(ptr align 8 %res, i64 %_48, ptr align 8 @alloc_ff660c87842baf60f3944449e24873c4)
          to label %bb23 unwind label %cleanup

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fbba131508497a21e6f9224ac7135540) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 %_45.0, ptr %_46, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb28
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb29:                                             ; preds = %bb28
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds i8, ptr %0, i64 8
  %25 = load i32, ptr %24, align 8
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27
}
