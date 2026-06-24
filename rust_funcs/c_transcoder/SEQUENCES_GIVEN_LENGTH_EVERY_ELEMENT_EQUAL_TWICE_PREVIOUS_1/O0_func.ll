define i32 @f_gold(i32 %m, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_69 = alloca [1 x i8], align 1
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %T = alloca [24 x i8], align 8
  store i8 0, ptr %_69, align 1
  %_6 = sext i32 %n to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_69, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17he2c1cafde31447ceE(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_7.0)
  %_9 = sext i32 %m to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b6527b4100ac88eee64f81389464d27c) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_69, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h9f7e5f5aa94c9f8cE(ptr sret([24 x i8]) align 8 %T, ptr align 8 %_4, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic2:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_76df243552f333a136ba03ed86ec72a6) #24
          to label %unreachable unwind label %cleanup

bb42:                                             ; preds = %cleanup
  %1 = load i8, ptr %_69, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb41, label %bb40

cleanup:                                          ; preds = %bb3, %panic2
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb42

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic2
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_69, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h46dedfda3af5cfb4E"(ptr sret([12 x i8]) align 4 %_12, i32 1, i32 %m)
          to label %bb5 unwind label %cleanup3

bb39:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E"(ptr align 8 %T) #22
          to label %bb40 unwind label %terminate

cleanup3:                                         ; preds = %bb18, %bb17, %bb22, %bb21, %bb34, %bb33, %panic7, %bb31, %panic6, %bb29, %panic5, %bb26, %bb25, %panic4, %bb14, %bb12, %bb10, %bb36, %bb11, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb39

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdeb4bbd43c92b3b4E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb6 unwind label %cleanup3

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb15, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha33b3ba31a702a46E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup3

bb8:                                              ; preds = %bb7
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_14, align 4
  %14 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_14, align 4
  %16 = getelementptr inbounds i8, ptr %_14, i64 4
  %17 = load i32, ptr %16, align 4
  %_16 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_16 to i1
  br i1 %18, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %19 = getelementptr inbounds i8, ptr %_14, i64 4
  %i = load i32, ptr %19, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h46dedfda3af5cfb4E"(ptr sret([12 x i8]) align 4 %_19, i32 1, i32 %n)
          to label %bb12 unwind label %cleanup3

bb11:                                             ; preds = %bb8
  %_67 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_65 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E"(ptr align 8 %T, i64 %_67, ptr align 8 @alloc_7c505dd7778f7f54b2f075d7a586a2ff)
          to label %bb36 unwind label %cleanup3

bb36:                                             ; preds = %bb11
  %_68 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_64 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE"(ptr align 8 %_65, i64 %_68, ptr align 8 @alloc_d36c1766dc5774f0f4f66bb69479e895)
          to label %bb37 unwind label %cleanup3

bb37:                                             ; preds = %bb36
  %_0 = load i32, ptr %_64, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E"(ptr align 8 %T)
  ret i32 %_0

bb12:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdeb4bbd43c92b3b4E"(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb13 unwind label %cleanup3

bb13:                                             ; preds = %bb12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_18, i64 12, i1 false)
  br label %bb14

bb14:                                             ; preds = %bb19, %bb23, %bb35, %bb13
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha33b3ba31a702a46E"(ptr align 4 %iter1)
          to label %bb15 unwind label %cleanup3

bb15:                                             ; preds = %bb14
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_21, align 4
  %23 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_21, align 4
  %25 = getelementptr inbounds i8, ptr %_21, i64 4
  %26 = load i32, ptr %25, align 4
  %_23 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_23 to i1
  br i1 %27, label %bb16, label %bb7

bb16:                                             ; preds = %bb15
  %28 = getelementptr inbounds i8, ptr %_21, i64 4
  %j = load i32, ptr %28, align 4
  %_25 = icmp slt i32 %i, %j
  br i1 %_25, label %bb17, label %bb20

bb20:                                             ; preds = %bb16
  %_31 = icmp eq i32 %j, 1
  br i1 %_31, label %bb21, label %bb24

bb17:                                             ; preds = %bb16
  %_29 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_27 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E"(ptr align 8 %T, i64 %_29, ptr align 8 @alloc_6f9c8bd6d81dbee1b2eeacc3680df8e3)
          to label %bb18 unwind label %cleanup3

bb24:                                             ; preds = %bb20
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_43.0 = extractvalue { i32, i1 } %29, 0
  %_43.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_43.1, label %panic4, label %bb25

bb21:                                             ; preds = %bb20
  %_35 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_33 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E"(ptr align 8 %T, i64 %_35, ptr align 8 @alloc_ffaddeb92256bb0e67ef9b27f0c40008)
          to label %bb22 unwind label %cleanup3

bb25:                                             ; preds = %bb24
  %_41 = sext i32 %_43.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_39 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E"(ptr align 8 %T, i64 %_41, ptr align 8 @alloc_3176ea66d28ae85950d07e450e40d143)
          to label %bb26 unwind label %cleanup3

panic4:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dafec8a8cc80ee3d4a2d22251505a5ef) #24
          to label %unreachable unwind label %cleanup3

bb26:                                             ; preds = %bb25
  %_44 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE"(ptr align 8 %_39, i64 %_44, ptr align 8 @alloc_c2e0156163e436945459be5869f5791d)
          to label %bb27 unwind label %cleanup3

bb27:                                             ; preds = %bb26
  %_37 = load i32, ptr %_38, align 4
  br label %bb28

bb28:                                             ; preds = %bb27
  %_53 = icmp eq i32 %i, -2147483648
  %_54 = and i1 false, %_53
  br i1 %_54, label %panic5, label %bb29

bb29:                                             ; preds = %bb28
  %_50 = sdiv i32 %i, 2
  %_49 = sext i32 %_50 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h70f72e0ddbf0cb77E"(ptr align 8 %T, i64 %_49, ptr align 8 @alloc_3b8f9903a2bc3656de019ceba635f97a)
          to label %bb30 unwind label %cleanup3

panic5:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_b11790867ff6b2d85f6215ad042ecf60) #24
          to label %unreachable unwind label %cleanup3

bb30:                                             ; preds = %bb29
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_57.0 = extractvalue { i32, i1 } %30, 0
  %_57.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_57.1, label %panic6, label %bb31

bb31:                                             ; preds = %bb30
  %_55 = sext i32 %_57.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd5860f9ef3f239ebE"(ptr align 8 %_47, i64 %_55, ptr align 8 @alloc_d354df91300d30d5fabf4edd0f2a2081)
          to label %bb32 unwind label %cleanup3

panic6:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_08bbafd289ad0914752953d6b91562fc) #24
          to label %unreachable unwind label %cleanup3

bb32:                                             ; preds = %bb31
  %_45 = load i32, ptr %_46, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_37, i32 %_45)
  %_58.0 = extractvalue { i32, i1 } %31, 0
  %_58.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_58.1, label %panic7, label %bb33

bb33:                                             ; preds = %bb32
  %_62 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf1fe511dd85c6077E"(ptr align 8 %T, i64 %_62, ptr align 8 @alloc_91841cebad64ee16a9ec882d4e99be1d)
          to label %bb34 unwind label %cleanup3

panic7:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_599208841658f7c41ee478a81432e797) #24
          to label %unreachable unwind label %cleanup3

bb34:                                             ; preds = %bb33
  %_63 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_59 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E"(ptr align 8 %_60, i64 %_63, ptr align 8 @alloc_7e1bbf5bbd240e8f7ce3ad63cf09205a)
          to label %bb35 unwind label %cleanup3

bb35:                                             ; preds = %bb34
  store i32 %_58.0, ptr %_59, align 4
  br label %bb14

bb22:                                             ; preds = %bb21
  %_36 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_32 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E"(ptr align 8 %_33, i64 %_36, ptr align 8 @alloc_af4e2ec7ec6e2fe96889c845c7f5eaf1)
          to label %bb23 unwind label %cleanup3

bb23:                                             ; preds = %bb22
  store i32 %i, ptr %_32, align 4
  br label %bb14

bb18:                                             ; preds = %bb17
  %_30 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_26 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h17eb4c2423f9bac3E"(ptr align 8 %_27, i64 %_30, ptr align 8 @alloc_2ccaf0e95f4fdb35ecb2f6b5bf0639fb)
          to label %bb19 unwind label %cleanup3

bb19:                                             ; preds = %bb18
  store i32 0, ptr %_26, align 4
  br label %bb14

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb41, %bb39
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb40:                                             ; preds = %bb41, %bb42, %bb39
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8
  %36 = insertvalue { ptr, i32 } poison, ptr %33, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37

bb41:                                             ; preds = %bb42
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E"(ptr align 8 %_4) #22
          to label %bb40 unwind label %terminate
}
