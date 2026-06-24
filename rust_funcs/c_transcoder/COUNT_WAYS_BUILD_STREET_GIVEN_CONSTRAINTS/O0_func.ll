define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_16 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_14 = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_3 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hbaa69cde725c493dE(ptr sret([24 x i8]) align 8 %_3, i32 0, i64 %_6.0)
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h9f48e8b0cf9546f0E(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_3, i64 2)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_2bda443dd6e5d6a3b8b636afe9b38016)
          to label %bb4 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_54a506938ffc5635e4611e31bf3f1c9a) #23
  unreachable

bb40:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h407e1bf5e939d9d5E"(ptr align 8 %dp) #22
          to label %bb41 unwind label %terminate

cleanup:                                          ; preds = %bb32, %bb31, %panic8, %bb29, %panic7, %bb27, %panic6, %bb25, %panic5, %bb23, %bb22, %bb21, %panic4, %bb19, %panic3, %bb17, %bb16, %panic2, %bb13, %panic1, %bb36, %bb35, %bb34, %bb14, %bb10, %bb8, %bb7, %bb6, %bb5, %bb4, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb40

bb4:                                              ; preds = %bb1
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_7 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E"(ptr align 8 %_8, i64 1, ptr align 8 @alloc_156a2292b42cb8b41375b9ac4c541954)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 1, ptr %_7, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_11 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_017e82055919fa76722a845ac35c8f12)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_10 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E"(ptr align 8 %_11, i64 1, ptr align 8 @alloc_f01afa1788f94ca0194a04eebed45386)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  store i32 2, ptr %_10, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfb187ba2ced035caE"(ptr sret([12 x i8]) align 4 %_14, i32 2, i32 %n)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf2040fe1a7a04b70E"(ptr sret([12 x i8]) align 4 %_13, ptr align 4 %_14)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_13, i64 12, i1 false)
  br label %bb10

bb10:                                             ; preds = %bb33, %bb9
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1e6996a6c5c0e199E"(ptr align 4 %iter)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_16, align 4
  %8 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_16, align 4
  %10 = getelementptr inbounds i8, ptr %_16, i64 4
  %11 = load i32, ptr %10, align 4
  %_18 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_18 to i1
  br i1 %12, label %bb13, label %bb14

bb13:                                             ; preds = %bb11
  %13 = getelementptr inbounds i8, ptr %_16, i64 4
  %i = load i32, ptr %13, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_22 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_29371a306d946f59a8c6b7029489eec8)
          to label %bb15 unwind label %cleanup

bb14:                                             ; preds = %bb11
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_526647b16b3d420a748112a84380ffe9)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb14
  %_64 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E"(ptr align 8 %_62, i64 %_64, ptr align 8 @alloc_9d9e59c56836b55a4d140441f15c77df)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb34
  %_60 = load i32, ptr %_61, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_d1788848aaa3762e1aeb85561e8f1694)
          to label %bb36 unwind label %cleanup

bb36:                                             ; preds = %bb35
  %_69 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E"(ptr align 8 %_67, i64 %_69, ptr align 8 @alloc_70089a8c124d263157bfb7841de64092)
          to label %bb37 unwind label %cleanup

bb37:                                             ; preds = %bb36
  %_65 = load i32, ptr %_66, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_60, i32 %_65)
  %_70.0 = extractvalue { i32, i1 } %14, 0
  %_70.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_70.1, label %panic1, label %bb38

bb38:                                             ; preds = %bb37
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h407e1bf5e939d9d5E"(ptr align 8 %dp)
  ret i32 %_70.0

panic1:                                           ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_da397ff009516b529954c418034fcd27) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb15:                                             ; preds = %bb13
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_26.0 = extractvalue { i32, i1 } %15, 0
  %_26.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_26.1, label %panic2, label %bb16

bb16:                                             ; preds = %bb15
  %_24 = sext i32 %_26.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_21 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E"(ptr align 8 %_22, i64 %_24, ptr align 8 @alloc_431060d0cd41bee65d4038b2fe531622)
          to label %bb17 unwind label %cleanup

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ec20388b662e12b1c47a2d205e0ed8df) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_20 = load i32, ptr %_21, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_166265b14cb0967a0d86085c04e33123)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_33.0 = extractvalue { i32, i1 } %16, 0
  %_33.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_33.1, label %panic3, label %bb19

bb19:                                             ; preds = %bb18
  %_31 = sext i32 %_33.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E"(ptr align 8 %_29, i64 %_31, ptr align 8 @alloc_5a059bd1e0e55f2841781da6641e1915)
          to label %bb20 unwind label %cleanup

panic3:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3b21326839a717d91ca9491750f4901a) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_27 = load i32, ptr %_28, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_20, i32 %_27)
  %_34.0 = extractvalue { i32, i1 } %17, 0
  %_34.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_34.1, label %panic4, label %bb21

bb21:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_36 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_bbdb1983ba3aa5066c399bb07c16a201)
          to label %bb22 unwind label %cleanup

panic4:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_869ab714a0032179c9c55777ab0aac2b) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_38 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_35 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E"(ptr align 8 %_36, i64 %_38, ptr align 8 @alloc_18906e21970eb3031c37f117adeebbeb)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 %_34.0, ptr %_35, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_42 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_2b795fe728c15327c3848200f9e74fc8)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_46.0 = extractvalue { i32, i1 } %18, 0
  %_46.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_46.1, label %panic5, label %bb25

bb25:                                             ; preds = %bb24
  %_44 = sext i32 %_46.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_41 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E"(ptr align 8 %_42, i64 %_44, ptr align 8 @alloc_c6b826aae231a2bff9e4ee453f85fc33)
          to label %bb26 unwind label %cleanup

panic5:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cee94a099014a675c4bb5d79d7fc7cee) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_40 = load i32, ptr %_41, align 4
  %19 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_40, i32 2)
  %_47.0 = extractvalue { i32, i1 } %19, 0
  %_47.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_47.1, label %panic6, label %bb27

bb27:                                             ; preds = %bb26
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7808475368a5a5f7E"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_da367ede526abb7d7a9deeda015824c1)
          to label %bb28 unwind label %cleanup

panic6:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b0c8d15b345844687262a2450143258e) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_54.0 = extractvalue { i32, i1 } %20, 0
  %_54.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_54.1, label %panic7, label %bb29

bb29:                                             ; preds = %bb28
  %_52 = sext i32 %_54.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc6ab9eb46e5e44f6E"(ptr align 8 %_50, i64 %_52, ptr align 8 @alloc_3d9ce4fb900a8219c8abaf9ac04b5679)
          to label %bb30 unwind label %cleanup

panic7:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_861c6011dc419ff0bd1b1e813be6656c) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_48 = load i32, ptr %_49, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_47.0, i32 %_48)
  %_55.0 = extractvalue { i32, i1 } %21, 0
  %_55.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_55.1, label %panic8, label %bb31

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_57 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h11294db53672e571E"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_4026ddf290fb4edc76b5520a921ccfde)
          to label %bb32 unwind label %cleanup

panic8:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b0c8d15b345844687262a2450143258e) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_59 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_56 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf1e80360a81b5d7E"(ptr align 8 %_57, i64 %_59, ptr align 8 @alloc_5af7cd25c882f3f07e0fc75fc0b28712)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb32
  store i32 %_55.0, ptr %_56, align 4
  br label %bb10

bb12:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb40
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb41:                                             ; preds = %bb40
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds i8, ptr %0, i64 8
  %25 = load i32, ptr %24, align 8
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27
}
