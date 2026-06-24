define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %der = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h617c04d3052ebf4bE(ptr sret([24 x i8]) align 8 %der, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE"(ptr align 8 %der, i64 0, ptr align 8 @alloc_8f94c27f837441fa3f63a9d395061f67)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_aae1569bdb407a14f89c29d34b990d0a) #23
  unreachable

bb23:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h476cbc33bee945f1E"(ptr align 8 %der) #22
          to label %bb24 unwind label %terminate

cleanup:                                          ; preds = %bb19, %panic5, %panic4, %bb16, %panic3, %bb14, %panic2, %panic1, %bb12, %bb8, %bb6, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb23

bb3:                                              ; preds = %bb1
  store i32 1, ptr %_6, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE"(ptr align 8 %der, i64 1, ptr align 8 @alloc_0e569becd73c94f81f1277866df9536c)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 0, ptr %_8, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_10 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE"(ptr align 8 %der, i64 2, ptr align 8 @alloc_70d7ec2340ec83a39789ef56a9a9baa3)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 1, ptr %_10, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h50ffe477cccd26f4E"(ptr sret([12 x i8]) align 4 %_13, i32 3, i32 %n)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hee18618d62f5c920E"(ptr sret([12 x i8]) align 4 %_12, ptr align 4 %_13)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_12, i64 12, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb20, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb6295f2246f9c496E"(ptr align 4 %iter)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_15, align 4
  %8 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_15, align 4
  %10 = getelementptr inbounds i8, ptr %_15, i64 4
  %11 = load i32, ptr %10, align 4
  %_17 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_17 to i1
  br i1 %12, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %13 = getelementptr inbounds i8, ptr %_15, i64 4
  %i = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_20.0 = extractvalue { i32, i1 } %14, 0
  %_20.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_20.1, label %panic1, label %bb13

bb12:                                             ; preds = %bb9
  %_41 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_39 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE"(ptr align 8 %der, i64 %_41, ptr align 8 @alloc_feff2813e9e56e89886e9ff0bc362d3c)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb12
  %_0 = load i32, ptr %_39, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h476cbc33bee945f1E"(ptr align 8 %der)
  ret i32 %_0

bb13:                                             ; preds = %bb11
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_27.0 = extractvalue { i32, i1 } %15, 0
  %_27.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_27.1, label %panic2, label %bb14

panic1:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9f3d399b243d2c8d93a5aadf3d48fbc6) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb14:                                             ; preds = %bb13
  %_25 = sext i32 %_27.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_23 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE"(ptr align 8 %der, i64 %_25, ptr align 8 @alloc_cb84948e34d76abf68f270f0d0485026)
          to label %bb15 unwind label %cleanup

panic2:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1caabaf481a5eccc9644545520dafe03) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_22 = load i32, ptr %_23, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 2)
  %_33.0 = extractvalue { i32, i1 } %16, 0
  %_33.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_33.1, label %panic3, label %bb16

bb16:                                             ; preds = %bb15
  %_31 = sext i32 %_33.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hba2f695d3d9f186cE"(ptr align 8 %der, i64 %_31, ptr align 8 @alloc_ebde3b36a21fe66e03216df603447c2f)
          to label %bb17 unwind label %cleanup

panic3:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8f2b79a2b3eb9c3ed57a61cce4ef34d4) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_28 = load i32, ptr %_29, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_22, i32 %_28)
  %_34.0 = extractvalue { i32, i1 } %17, 0
  %_34.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_34.1, label %panic4, label %bb18

bb18:                                             ; preds = %bb17
  %18 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_20.0, i32 %_34.0)
  %_35.0 = extractvalue { i32, i1 } %18, 0
  %_35.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_35.1, label %panic5, label %bb19

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4f00cf2b2186009701772a8bb4d58065) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_38 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_36 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17haf59c2a9ca362bfcE"(ptr align 8 %der, i64 %_38, ptr align 8 @alloc_658d7a56aaec0bbd5158c30b231d0fe9)
          to label %bb20 unwind label %cleanup

panic5:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_9f3d399b243d2c8d93a5aadf3d48fbc6) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i32 %_35.0, ptr %_36, align 4
  br label %bb8

bb10:                                             ; No predecessors!
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
