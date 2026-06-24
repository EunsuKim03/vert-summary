define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_11 = alloca [24 x i8], align 8
  %_10 = alloca [24 x i8], align 8
  %B = alloca [24 x i8], align 8
  %A = alloca [24 x i8], align 8
; call alloc::alloc::exchange_malloc
  %_4 = call ptr @_ZN5alloc5alloc15exchange_malloc17h99c958f67e03275eE(i64 8, i64 4) #19
  %_65 = ptrtoint ptr %_4 to i64
  %_67 = and i64 %_65, 3
  %_68 = icmp eq i64 %_67, 0
  br i1 %_68, label %bb31, label %panic

bb31:                                             ; preds = %start
  %_70 = ptrtoint ptr %_4 to i64
  %_72 = icmp eq i64 %_70, 0
  %_73 = and i1 %_72, true
  %_74 = xor i1 %_73, true
  br i1 %_74, label %bb32, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64 4, i64 %_65, ptr align 8 @alloc_75acab5beb54877805e3f6d548dd3baa) #18
  unreachable

bb32:                                             ; preds = %bb31
  %1 = getelementptr inbounds nuw i32, ptr %_4, i64 0
  store i32 1, ptr %1, align 4
  %2 = getelementptr inbounds nuw i32, ptr %_4, i64 1
  store i32 0, ptr %2, align 4
; call alloc::slice::<impl [T]>::into_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h76bd7401a7b67f1bE"(ptr sret([24 x i8]) align 8 %A, ptr align 4 %_4, i64 2) #19
; invoke alloc::alloc::exchange_malloc
  %_8 = invoke ptr @_ZN5alloc5alloc15exchange_malloc17h99c958f67e03275eE(i64 8, i64 4)
          to label %bb3 unwind label %cleanup

panic1:                                           ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8 @alloc_75acab5beb54877805e3f6d548dd3baa) #18
  unreachable

bb28:                                             ; preds = %bb27, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h21c65b8fc66c27adE"(ptr align 8 %A) #23
          to label %bb29 unwind label %terminate

cleanup:                                          ; preds = %bb24, %bb33, %bb32
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb28

bb3:                                              ; preds = %bb32
  %_60 = ptrtoint ptr %_8 to i64
  %_62 = and i64 %_60, 3
  %_63 = icmp eq i64 %_62, 0
  br i1 %_63, label %bb30, label %panic2

bb30:                                             ; preds = %bb3
  %_76 = ptrtoint ptr %_8 to i64
  %_78 = icmp eq i64 %_76, 0
  %_79 = and i1 %_78, true
  %_80 = xor i1 %_79, true
  br i1 %_80, label %bb33, label %panic3

panic2:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64 4, i64 %_60, ptr align 8 @alloc_91a32348090909b21f476ea5c8db5867) #18
  unreachable

bb33:                                             ; preds = %bb30
  %7 = getelementptr inbounds nuw i32, ptr %_8, i64 0
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds nuw i32, ptr %_8, i64 1
  store i32 1, ptr %8, align 4
; invoke alloc::slice::<impl [T]>::into_vec
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h76bd7401a7b67f1bE"(ptr sret([24 x i8]) align 8 %B, ptr align 4 %_8, i64 2)
          to label %bb4 unwind label %cleanup

panic3:                                           ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8 @alloc_91a32348090909b21f476ea5c8db5867) #18
  unreachable

bb4:                                              ; preds = %bb33
  %_12 = sext i32 %n to i64
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h7156949483295590E"(ptr sret([24 x i8]) align 8 %_11, i64 2, i64 %_12)
          to label %bb5 unwind label %cleanup4

bb27:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h21c65b8fc66c27adE"(ptr align 8 %B) #23
          to label %bb28 unwind label %terminate

cleanup4:                                         ; preds = %bb23, %panic11, %bb21, %panic10, %bb19, %panic9, %bb17, %panic8, %panic7, %bb14, %panic6, %bb12, %panic5, %bb11, %bb7, %bb5, %bb4
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %11, ptr %12, align 8
  br label %bb27

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8e04c05f29844f7eE"(ptr sret([24 x i8]) align 8 %_10, ptr align 8 %_11)
          to label %bb6 unwind label %cleanup4

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_10, i64 24, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb34, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %13 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hffd231ddbccb91c1E"(ptr align 8 %iter)
          to label %bb8 unwind label %cleanup4

bb8:                                              ; preds = %bb7
  %14 = extractvalue { i64, i64 } %13, 0
  %15 = extractvalue { i64, i64 } %13, 1
  store i64 %14, ptr %_14, align 8
  %16 = getelementptr inbounds i8, ptr %_14, i64 8
  store i64 %15, ptr %16, align 8
  %_16 = load i64, ptr %_14, align 8
  %17 = getelementptr inbounds i8, ptr %_14, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = trunc nuw i64 %_16 to i1
  br i1 %19, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %20 = getelementptr inbounds i8, ptr %_14, i64 8
  %i = load i64, ptr %20, align 8
  %_25.0 = sub i64 %i, 2
  %_25.1 = icmp ult i64 %i, 2
  br i1 %_25.1, label %panic5, label %bb12

bb11:                                             ; preds = %bb8
  %_50 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E"(ptr align 8 %A, i64 %_50, ptr align 8 @alloc_3b2adde7ba7c927fedf44ad2772e2806)
          to label %bb24 unwind label %cleanup4

bb24:                                             ; preds = %bb11
  %_0 = load i32, ptr %_48, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h21c65b8fc66c27adE"(ptr align 8 %B)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h21c65b8fc66c27adE"(ptr align 8 %A)
  ret i32 %_0

bb12:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_22 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E"(ptr align 8 %A, i64 %_25.0, ptr align 8 @alloc_5c563d70d9c334b0b632db6864d95601)
          to label %bb13 unwind label %cleanup4

panic5:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3fc1fe6823058e4dfea09f8af17b9eda) #25
          to label %unreachable unwind label %cleanup4

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5
  unreachable

bb13:                                             ; preds = %bb12
  %_21 = load i32, ptr %_22, align 4
  %_31.0 = sub i64 %i, 1
  %_31.1 = icmp ult i64 %i, 1
  br i1 %_31.1, label %panic6, label %bb14

bb14:                                             ; preds = %bb13
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E"(ptr align 8 %B, i64 %_31.0, ptr align 8 @alloc_ff77d958a88ca136ed2d9d1df5b7ab4d)
          to label %bb15 unwind label %cleanup4

panic6:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1de393b157a5c577ec0ef07bd12d920f) #25
          to label %unreachable unwind label %cleanup4

bb15:                                             ; preds = %bb14
  %_27 = load i32, ptr %_28, align 4
  %21 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_27)
  %_32.0 = extractvalue { i32, i1 } %21, 0
  %_32.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_32.1, label %panic7, label %bb16

bb16:                                             ; preds = %bb15
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_21, i32 %_32.0)
  %_33.0 = extractvalue { i32, i1 } %22, 0
  %_33.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_33.1, label %panic8, label %bb17

panic7:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6c1fb2e792c33ae9ee3988d05a8302f9) #25
          to label %unreachable unwind label %cleanup4

bb17:                                             ; preds = %bb16
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E"(ptr align 8 %A, i32 %_33.0)
          to label %bb18 unwind label %cleanup4

panic8:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_03c26a002c5715f2e03c514368b6eb73) #25
          to label %unreachable unwind label %cleanup4

bb18:                                             ; preds = %bb17
  %_41.0 = sub i64 %i, 1
  %_41.1 = icmp ult i64 %i, 1
  br i1 %_41.1, label %panic9, label %bb19

bb19:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E"(ptr align 8 %A, i64 %_41.0, ptr align 8 @alloc_84f267ff97c4de85f1cb3249b3557348)
          to label %bb20 unwind label %cleanup4

panic9:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ab4262fc80be32e4b3ccebc714c65e40) #25
          to label %unreachable unwind label %cleanup4

bb20:                                             ; preds = %bb19
  %_37 = load i32, ptr %_38, align 4
  %_46.0 = sub i64 %i, 2
  %_46.1 = icmp ult i64 %i, 2
  br i1 %_46.1, label %panic10, label %bb21

bb21:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h19ec1ea5c1afc2f6E"(ptr align 8 %B, i64 %_46.0, ptr align 8 @alloc_4912eabb5c77cbcee982caf5685e3fb1)
          to label %bb22 unwind label %cleanup4

panic10:                                          ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c32e2717340bbf800a13e8252515b7d7) #25
          to label %unreachable unwind label %cleanup4

bb22:                                             ; preds = %bb21
  %_42 = load i32, ptr %_43, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_37, i32 %_42)
  %_47.0 = extractvalue { i32, i1 } %23, 0
  %_47.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_47.1, label %panic11, label %bb23

bb23:                                             ; preds = %bb22
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h31cf9d53c48a1e17E"(ptr align 8 %B, i32 %_47.0)
          to label %bb34 unwind label %cleanup4

panic11:                                          ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f367bed38bbe692b8e86fee92b0639dc) #25
          to label %unreachable unwind label %cleanup4

bb34:                                             ; preds = %bb23
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb28, %bb27
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #22
  unreachable

bb29:                                             ; preds = %bb28
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = insertvalue { ptr, i32 } poison, ptr %25, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}
