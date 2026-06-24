define i32 @f_gold(ptr align 8 %str_) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_64 = alloca [1 x i8], align 1
  %_19 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_17 = alloca [24 x i8], align 8
  %_16 = alloca [24 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_10 = alloca [24 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  store i8 0, ptr %_64, align 1
; call alloc::vec::Vec<T,A>::len
  %n = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hfe207b71f6ffc754E"(ptr align 8 %str_) #18
  %_6.0 = add i64 %n, 1
  %_6.1 = icmp ult i64 %_6.0, %n
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  store i8 1, ptr %_64, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h0cb00f4ca25b6bc9E(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_6.0)
  %_8.0 = add i64 %n, 1
  %_8.1 = icmp ult i64 %_8.0, %n
  br i1 %_8.1, label %panic2, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_647257053c226fbb907898a1694fe6d9) #23
  unreachable

bb4:                                              ; preds = %bb2
  store i8 0, ptr %_64, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hc9e8d2f5c7dd726fE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_4, i64 %_8.0)
          to label %bb5 unwind label %cleanup

panic2:                                           ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_df6d9dd5353b869cb3dd21b89dc4ed77) #24
          to label %unreachable unwind label %cleanup

bb47:                                             ; preds = %cleanup
  %1 = load i8, ptr %_64, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb46, label %bb45

cleanup:                                          ; preds = %bb4, %panic2
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb47

unreachable:                                      ; preds = %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic2
  unreachable

bb5:                                              ; preds = %bb4
  store i8 0, ptr %_64, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h87251b7e9ff6ffb6E"(ptr sret([24 x i8]) align 8 %_10, i64 1, i64 %n)
          to label %bb6 unwind label %cleanup3

bb44:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h2b0c3905f1b2d8bcE"(ptr align 8 %dp) #22
          to label %bb45 unwind label %terminate

cleanup3:                                         ; preds = %bb29, %bb28, %panic10, %bb26, %panic9, %bb24, %panic8, %bb39, %bb38, %bb37, %bb36, %bb35, %panic7, %bb33, %panic6, %bb31, %bb20, %panic5, %bb18, %panic4, %bb15, %bb13, %bb11, %bb41, %bb12, %bb8, %bb6, %bb5
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb44

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h806a354dc9d683e8E"(ptr sret([24 x i8]) align 8 %_9, ptr align 8 %_10)
          to label %bb7 unwind label %cleanup3

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_9, i64 24, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb16, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h81748cee1055658cE"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup3

bb9:                                              ; preds = %bb8
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %_12, align 8
  %14 = getelementptr inbounds i8, ptr %_12, i64 8
  store i64 %13, ptr %14, align 8
  %_14 = load i64, ptr %_12, align 8
  %15 = getelementptr inbounds i8, ptr %_12, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = trunc nuw i64 %_14 to i1
  br i1 %17, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %18 = getelementptr inbounds i8, ptr %_12, i64 8
  %i = load i64, ptr %18, align 8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h87251b7e9ff6ffb6E"(ptr sret([24 x i8]) align 8 %_17, i64 1, i64 %n)
          to label %bb13 unwind label %cleanup3

bb12:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E"(ptr align 8 %dp, i64 %n, ptr align 8 @alloc_f426a59bb7f8f9c896477d472baff903)
          to label %bb41 unwind label %cleanup3

bb41:                                             ; preds = %bb12
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E"(ptr align 8 %_62, i64 %n, ptr align 8 @alloc_6410eee7a61c89a4fa45b76fb723e406)
          to label %bb42 unwind label %cleanup3

bb42:                                             ; preds = %bb41
  %_0 = load i32, ptr %_61, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h2b0c3905f1b2d8bcE"(ptr align 8 %dp)
  ret i32 %_0

bb13:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h806a354dc9d683e8E"(ptr sret([24 x i8]) align 8 %_16, ptr align 8 %_17)
          to label %bb14 unwind label %cleanup3

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_16, i64 24, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb30, %bb40, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %19 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h81748cee1055658cE"(ptr align 8 %iter1)
          to label %bb16 unwind label %cleanup3

bb16:                                             ; preds = %bb15
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  store i64 %20, ptr %_19, align 8
  %22 = getelementptr inbounds i8, ptr %_19, i64 8
  store i64 %21, ptr %22, align 8
  %_21 = load i64, ptr %_19, align 8
  %23 = getelementptr inbounds i8, ptr %_19, i64 8
  %24 = load i64, ptr %23, align 8
  %25 = trunc nuw i64 %_21 to i1
  br i1 %25, label %bb17, label %bb8

bb17:                                             ; preds = %bb16
  %26 = getelementptr inbounds i8, ptr %_19, i64 8
  %j = load i64, ptr %26, align 8
  %_27.0 = sub i64 %i, 1
  %_27.1 = icmp ult i64 %i, 1
  br i1 %_27.1, label %panic4, label %bb18

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_25 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E"(ptr align 8 %str_, i64 %_27.0, ptr align 8 @alloc_5becf3499fb476d07427170f71d2b8ac)
          to label %bb19 unwind label %cleanup3

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4743da78c00ebfd16ba92654cbcf8310) #24
          to label %unreachable unwind label %cleanup3

bb19:                                             ; preds = %bb18
  %_24 = load i32, ptr %_25, align 4
  %_31.0 = sub i64 %j, 1
  %_31.1 = icmp ult i64 %j, 1
  br i1 %_31.1, label %panic5, label %bb20

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbc5f0b47a60aa95E"(ptr align 8 %str_, i64 %_31.0, ptr align 8 @alloc_b24eb0e109121b25dba07de1a3843243)
          to label %bb21 unwind label %cleanup3

panic5:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7b7db7fcc4ee9d2d8679cefc3d202082) #24
          to label %unreachable unwind label %cleanup3

bb21:                                             ; preds = %bb20
  %_28 = load i32, ptr %_29, align 4
  %_23 = icmp eq i32 %_24, %_28
  br i1 %_23, label %bb22, label %bb31

bb31:                                             ; preds = %bb22, %bb21
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_f1bb4435a088bf22965930d8d8be2064)
          to label %bb32 unwind label %cleanup3

bb22:                                             ; preds = %bb21
  %_32 = icmp ne i64 %i, %j
  br i1 %_32, label %bb23, label %bb31

bb23:                                             ; preds = %bb22
  %_38.0 = sub i64 %i, 1
  %_38.1 = icmp ult i64 %i, 1
  br i1 %_38.1, label %panic8, label %bb24

bb32:                                             ; preds = %bb31
  %_51.0 = sub i64 %j, 1
  %_51.1 = icmp ult i64 %j, 1
  br i1 %_51.1, label %panic6, label %bb33

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E"(ptr align 8 %_48, i64 %_51.0, ptr align 8 @alloc_b2d8c27fc274c365358d91e50427072a)
          to label %bb34 unwind label %cleanup3

panic6:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2b9dd32f868f873e4485e41c9a5c23fb) #24
          to label %unreachable unwind label %cleanup3

bb34:                                             ; preds = %bb33
  %_46 = load i32, ptr %_47, align 4
  %_57.0 = sub i64 %i, 1
  %_57.1 = icmp ult i64 %i, 1
  br i1 %_57.1, label %panic7, label %bb35

bb35:                                             ; preds = %bb34
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_54 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E"(ptr align 8 %dp, i64 %_57.0, ptr align 8 @alloc_08e94209e5c1486fb73dc49530f20bb4)
          to label %bb36 unwind label %cleanup3

panic7:                                           ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ae578897daad0d86e2c95241410d44a6) #24
          to label %unreachable unwind label %cleanup3

bb36:                                             ; preds = %bb35
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_53 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E"(ptr align 8 %_54, i64 %j, ptr align 8 @alloc_986d3f6f04e557837cb5d5f6bb6acaae)
          to label %bb37 unwind label %cleanup3

bb37:                                             ; preds = %bb36
  %_52 = load i32, ptr %_53, align 4
; invoke core::cmp::max
  %_45 = invoke i32 @_ZN4core3cmp3max17hdcbb17fb21064adcE(i32 %_46, i32 %_52)
          to label %bb38 unwind label %cleanup3

bb38:                                             ; preds = %bb37
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_59 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4d32b1d92f21d246E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_137ecb7944bcac7bf5ef0903ae6ba479)
          to label %bb39 unwind label %cleanup3

bb39:                                             ; preds = %bb38
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_58 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha8346058dd27c0ffE"(ptr align 8 %_59, i64 %j, ptr align 8 @alloc_75fdf6047d62b91f80715c461428f7e9)
          to label %bb40 unwind label %cleanup3

bb40:                                             ; preds = %bb39
  store i32 %_45, ptr %_58, align 4
  br label %bb15

bb24:                                             ; preds = %bb23
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04ba64a99d0d1359E"(ptr align 8 %dp, i64 %_38.0, ptr align 8 @alloc_e0eb47dc8532753bf29df75f75cdbdb9)
          to label %bb25 unwind label %cleanup3

panic8:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a8ca323404a18e76dce6044f41e1e15d) #24
          to label %unreachable unwind label %cleanup3

bb25:                                             ; preds = %bb24
  %_40.0 = sub i64 %j, 1
  %_40.1 = icmp ult i64 %j, 1
  br i1 %_40.1, label %panic9, label %bb26

bb26:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h05dd131be870cf97E"(ptr align 8 %_35, i64 %_40.0, ptr align 8 @alloc_3ddc9a7ebfb409884fef3dff631aef52)
          to label %bb27 unwind label %cleanup3

panic9:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8b6ea2d1eee89caa90d08dbf826f7294) #24
          to label %unreachable unwind label %cleanup3

bb27:                                             ; preds = %bb26
  %_33 = load i32, ptr %_34, align 4
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_33)
  %_41.0 = extractvalue { i32, i1 } %27, 0
  %_41.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_41.1, label %panic10, label %bb28

bb28:                                             ; preds = %bb27
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_43 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4d32b1d92f21d246E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_75aa23282e3ad9f967642267f12f8ead)
          to label %bb29 unwind label %cleanup3

panic10:                                          ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8d69040664928fa023061bed50a521a5) #24
          to label %unreachable unwind label %cleanup3

bb29:                                             ; preds = %bb28
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha8346058dd27c0ffE"(ptr align 8 %_43, i64 %j, ptr align 8 @alloc_b4ba81760fc4aa8ea26640062df2043e)
          to label %bb30 unwind label %cleanup3

bb30:                                             ; preds = %bb29
  store i32 %_41.0, ptr %_42, align 4
  br label %bb15

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb46, %bb44
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb45:                                             ; preds = %bb46, %bb47, %bb44
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33

bb46:                                             ; preds = %bb47
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h68161d93792d14b4E"(ptr align 8 %_4) #22
          to label %bb45 unwind label %terminate
}
