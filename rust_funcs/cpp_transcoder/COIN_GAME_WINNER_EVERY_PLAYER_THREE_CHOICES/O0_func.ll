define i32 @f_gold(i32 %x, i32 %y, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_6 = sext i32 %n to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h4fbb7ddeb26b8b99E(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_7.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_7032120f5d7a13ccb59140206a2d3209)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f9ea0678e2a06135fbee5158f3b50f6a) #23
  unreachable

bb33:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5438af016523f13eE"(ptr align 8 %dp) #22
          to label %bb34 unwind label %terminate

cleanup:                                          ; preds = %bb15, %bb21, %bb27, %bb29, %bb25, %panic3, %bb19, %panic2, %bb13, %panic1, %bb11, %bb7, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb33

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_8, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_10 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_2a34a89fbc0dc9bd157c70bba32b5e7d)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_10, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h0994f1535b063942E"(ptr sret([12 x i8]) align 4 %_13, i32 2, i32 %n)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h24bd56168ab6c7a0E"(ptr sret([12 x i8]) align 4 %_12, ptr align 4 %_13)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_12, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb16, %bb22, %bb28, %bb30, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hedc9e318cd920f1aE"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
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
  br i1 %12, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %13 = getelementptr inbounds i8, ptr %_15, i64 4
  %i = load i32, ptr %13, align 4
  %_21 = sitofp i32 %i to float
  %_20 = fsub float %_21, 1.000000e+00
  %_19 = fcmp oge float %_20, 0.000000e+00
  br i1 %_19, label %bb12, label %bb17

bb11:                                             ; preds = %bb8
  %_67 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_65 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E"(ptr align 8 %dp, i64 %_67, ptr align 8 @alloc_faae14e7cb4fa73bebacdf3220fac6e9)
          to label %bb31 unwind label %cleanup

bb31:                                             ; preds = %bb11
  %_0 = load i32, ptr %_65, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5438af016523f13eE"(ptr align 8 %dp)
  ret i32 %_0

bb17:                                             ; preds = %bb14, %bb10
  %_34 = sitofp i32 %i to float
  %_35 = sitofp i32 %x to float
  %_33 = fsub float %_34, %_35
  %_32 = fcmp oge float %_33, 0.000000e+00
  br i1 %_32, label %bb18, label %bb23

bb12:                                             ; preds = %bb10
  %_27 = sext i32 %i to i64
  %_28.0 = sub i64 %_27, 1
  %_28.1 = icmp ult i64 %_27, 1
  br i1 %_28.1, label %panic1, label %bb13

bb13:                                             ; preds = %bb12
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_24 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E"(ptr align 8 %dp, i64 %_28.0, ptr align 8 @alloc_d6e1d1874f68c09e2945e2d183e6b384)
          to label %bb14 unwind label %cleanup

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_20baa94b788d3387d8a112f89fbc9429) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2, %panic1
  unreachable

bb14:                                             ; preds = %bb13
  %_23 = load i32, ptr %_24, align 4
  %_22 = icmp eq i32 %_23, 0
  br i1 %_22, label %bb15, label %bb17

bb15:                                             ; preds = %bb14
  %_31 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_29 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE"(ptr align 8 %dp, i64 %_31, ptr align 8 @alloc_9c790e4c77bbbd7737acbaf19f0cde73)
          to label %bb16 unwind label %cleanup

bb23:                                             ; preds = %bb20, %bb17
  %_49 = sitofp i32 %i to float
  %_50 = sitofp i32 %y to float
  %_48 = fsub float %_49, %_50
  %_47 = fcmp oge float %_48, 0.000000e+00
  br i1 %_47, label %bb24, label %bb29

bb18:                                             ; preds = %bb17
  %_41 = sext i32 %i to i64
  %_42 = sext i32 %x to i64
  %_43.0 = sub i64 %_41, %_42
  %_43.1 = icmp ult i64 %_41, %_42
  br i1 %_43.1, label %panic2, label %bb19

bb19:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E"(ptr align 8 %dp, i64 %_43.0, ptr align 8 @alloc_67e6f72d2eef534837bbf578e5433ee7)
          to label %bb20 unwind label %cleanup

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_43bb4dc6a93667d7bc6962e8c675ec5d) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_37 = load i32, ptr %_38, align 4
  %_36 = icmp eq i32 %_37, 0
  br i1 %_36, label %bb21, label %bb23

bb21:                                             ; preds = %bb20
  %_46 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_44 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE"(ptr align 8 %dp, i64 %_46, ptr align 8 @alloc_3e432f94d1533f59515e8afbbe395109)
          to label %bb22 unwind label %cleanup

bb29:                                             ; preds = %bb26, %bb23
  %_64 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_62 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE"(ptr align 8 %dp, i64 %_64, ptr align 8 @alloc_eec447e33fde37e638221ce640bd4f10)
          to label %bb30 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_56 = sext i32 %i to i64
  %_57 = sext i32 %y to i64
  %_58.0 = sub i64 %_56, %_57
  %_58.1 = icmp ult i64 %_56, %_57
  br i1 %_58.1, label %panic3, label %bb25

bb25:                                             ; preds = %bb24
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_53 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he7fa639fcc034ed6E"(ptr align 8 %dp, i64 %_58.0, ptr align 8 @alloc_37744507543f7de5f4362ea07922c49c)
          to label %bb26 unwind label %cleanup

panic3:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b0188ac88e8f94233ec5aedbaf02a323) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_52 = load i32, ptr %_53, align 4
  %_51 = icmp eq i32 %_52, 0
  br i1 %_51, label %bb27, label %bb29

bb27:                                             ; preds = %bb26
  %_61 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_59 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17he97e3f4292abfe1fE"(ptr align 8 %dp, i64 %_61, ptr align 8 @alloc_84f5d008c691d8009a6868da91ab8aaf)
          to label %bb28 unwind label %cleanup

bb30:                                             ; preds = %bb29
  store i32 0, ptr %_62, align 4
  br label %bb7

bb28:                                             ; preds = %bb27
  store i32 1, ptr %_59, align 4
  br label %bb7

bb22:                                             ; preds = %bb21
  store i32 1, ptr %_44, align 4
  br label %bb7

bb16:                                             ; preds = %bb15
  store i32 1, ptr %_29, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb33
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb34:                                             ; preds = %bb33
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 8
  %18 = insertvalue { ptr, i32 } poison, ptr %15, 0
  %19 = insertvalue { ptr, i32 } %18, i32 %17, 1
  resume { ptr, i32 } %19
}
