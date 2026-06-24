define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %_8 = alloca [24 x i8], align 8
  %maxlen = alloca [4 x i8], align 4
  %arr = alloca [24 x i8], align 8
; invoke alloc::alloc::exchange_malloc
  %_4 = invoke ptr @_ZN5alloc5alloc15exchange_malloc17hcee9e59d29229bf4E(i64 8, i64 4)
          to label %bb1 unwind label %cleanup

bb38:                                             ; preds = %bb37, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h80f950efdc1475fcE"(ptr align 8 %str) #24
          to label %bb39 unwind label %terminate

cleanup:                                          ; preds = %bb11, %bb41, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb38

bb1:                                              ; preds = %start
  %_73 = ptrtoint ptr %_4 to i64
  %_75 = and i64 %_73, 3
  %_76 = icmp eq i64 %_75, 0
  br i1 %_76, label %bb40, label %panic

bb40:                                             ; preds = %bb1
  %_78 = ptrtoint ptr %_4 to i64
  %_80 = icmp eq i64 %_78, 0
  %_81 = and i1 %_80, true
  %_82 = xor i1 %_81, true
  br i1 %_82, label %bb41, label %panic1

panic:                                            ; preds = %bb1
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64 4, i64 %_73, ptr align 8 @alloc_c93fb87daebc19dfb2f77a91618e5bde) #18
  unreachable

bb41:                                             ; preds = %bb40
  %5 = getelementptr inbounds nuw { i32, i32 }, ptr %_4, i64 0
  store i32 64, ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 -1, ptr %6, align 4
; invoke alloc::slice::<impl [T]>::into_vec
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h65608c0bd57d1f78E"(ptr sret([24 x i8]) align 8 %arr, ptr align 4 %_4, i64 1)
          to label %bb2 unwind label %cleanup

panic1:                                           ; preds = %bb40
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8 @alloc_c93fb87daebc19dfb2f77a91618e5bde) #18
  unreachable

bb2:                                              ; preds = %bb41
  store i32 0, ptr %maxlen, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %7 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hc690617983cfcd81E"(ptr align 8 %str)
          to label %bb3 unwind label %cleanup2

bb37:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::vec::Vec<(char,i32)>>
  invoke void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$$LP$char$C$i32$RP$$GT$$GT$17hddf318948edaebcaE"(ptr align 8 %arr) #24
          to label %bb38 unwind label %terminate

cleanup2:                                         ; preds = %bb28, %bb27, %bb26, %bb33, %panic7, %bb31, %panic6, %bb29, %bb24, %panic5, %bb22, %bb20, %panic4, %bb18, %bb16, %panic3, %bb14, %bb12, %bb10, %bb7, %bb5, %bb4, %bb3, %bb2
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb37

bb3:                                              ; preds = %bb2
  %_11.0 = extractvalue { ptr, i64 } %7, 0
  %_11.1 = extractvalue { ptr, i64 } %7, 1
; invoke core::str::<impl str>::chars
  %12 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h590e637a31dd3e53E"(ptr align 1 %_11.0, i64 %_11.1)
          to label %bb4 unwind label %cleanup2

bb4:                                              ; preds = %bb3
  %_10.0 = extractvalue { ptr, ptr } %12, 0
  %_10.1 = extractvalue { ptr, ptr } %12, 1
; invoke core::iter::traits::iterator::Iterator::enumerate
  invoke void @_ZN4core4iter6traits8iterator8Iterator9enumerate17hefa6eb2b653742e0E(ptr sret([24 x i8]) align 8 %_9, ptr %_10.0, ptr %_10.1)
          to label %bb5 unwind label %cleanup2

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf275d855177be657E"(ptr sret([24 x i8]) align 8 %_8, ptr align 8 %_9)
          to label %bb6 unwind label %cleanup2

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_8, i64 24, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb34, %bb6
; invoke <core::iter::adapters::enumerate::Enumerate<I> as core::iter::traits::iterator::Iterator>::next
  %13 = invoke { i64, i32 } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49f4f4123af926b0E"(ptr align 8 %iter)
          to label %bb8 unwind label %cleanup2

bb8:                                              ; preds = %bb7
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = extractvalue { i64, i32 } %13, 1
  store i64 %14, ptr %_14, align 8
  %16 = getelementptr inbounds i8, ptr %_14, i64 8
  store i32 %15, ptr %16, align 8
  %17 = load i64, ptr %_14, align 8
  %18 = getelementptr inbounds i8, ptr %_14, i64 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 1114112
  %_16 = select i1 %20, i64 0, i64 1
  %21 = trunc nuw i64 %_16 to i1
  br i1 %21, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %i = load i64, ptr %_14, align 8
  %22 = getelementptr inbounds i8, ptr %_14, i64 8
  %c = load i32, ptr %22, align 8
  %_22 = trunc i64 %i to i32
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17heef4621f4ba99b60E"(ptr align 8 %arr, i32 %c, i32 %_22)
          to label %bb42 unwind label %cleanup2

bb11:                                             ; preds = %bb8
  %_0 = load i32, ptr %maxlen, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<(char,i32)>>
  invoke void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$$LP$char$C$i32$RP$$GT$$GT$17hddf318948edaebcaE"(ptr align 8 %arr)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb11
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h80f950efdc1475fcE"(ptr align 8 %str)
  ret i32 %_0

bb42:                                             ; preds = %bb10
  br label %bb12

bb12:                                             ; preds = %bb43, %bb42
; invoke alloc::vec::Vec<T,A>::len
  %_24 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h2c957b0957fd4fb3E"(ptr align 8 %arr)
          to label %bb13 unwind label %cleanup2

bb13:                                             ; preds = %bb12
  %_23 = icmp uge i64 %_24, 3
  br i1 %_23, label %bb14, label %bb29

bb29:                                             ; preds = %bb25, %bb21, %bb17, %bb13
; invoke alloc::vec::Vec<T,A>::len
  %_60 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h2c957b0957fd4fb3E"(ptr align 8 %arr)
          to label %bb30 unwind label %cleanup2

bb14:                                             ; preds = %bb13
; invoke alloc::vec::Vec<T,A>::len
  %_31 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h2c957b0957fd4fb3E"(ptr align 8 %arr)
          to label %bb15 unwind label %cleanup2

bb15:                                             ; preds = %bb14
  %_33.0 = sub i64 %_31, 3
  %_33.1 = icmp ult i64 %_31, 3
  br i1 %_33.1, label %panic3, label %bb16

bb16:                                             ; preds = %bb15
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E"(ptr align 8 %arr, i64 %_33.0, ptr align 8 @alloc_37020f07b42324311b534642ca2decd0)
          to label %bb17 unwind label %cleanup2

panic3:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_65afa0d7026c53b3ac79f0d1997a2138) #20
          to label %unreachable unwind label %cleanup2

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3
  unreachable

bb17:                                             ; preds = %bb16
  %_27 = load i32, ptr %_28, align 4
  %_26 = icmp eq i32 %_27, 49
  br i1 %_26, label %bb18, label %bb29

bb18:                                             ; preds = %bb17
; invoke alloc::vec::Vec<T,A>::len
  %_39 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h2c957b0957fd4fb3E"(ptr align 8 %arr)
          to label %bb19 unwind label %cleanup2

bb19:                                             ; preds = %bb18
  %_41.0 = sub i64 %_39, 2
  %_41.1 = icmp ult i64 %_39, 2
  br i1 %_41.1, label %panic4, label %bb20

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E"(ptr align 8 %arr, i64 %_41.0, ptr align 8 @alloc_ab3548d18771dd8a4183869385435367)
          to label %bb21 unwind label %cleanup2

panic4:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c2e58d8d650221b276a9ce82ffb2f77c) #20
          to label %unreachable unwind label %cleanup2

bb21:                                             ; preds = %bb20
  %_35 = load i32, ptr %_36, align 4
  %_34 = icmp eq i32 %_35, 48
  br i1 %_34, label %bb22, label %bb29

bb22:                                             ; preds = %bb21
; invoke alloc::vec::Vec<T,A>::len
  %_47 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h2c957b0957fd4fb3E"(ptr align 8 %arr)
          to label %bb23 unwind label %cleanup2

bb23:                                             ; preds = %bb22
  %_49.0 = sub i64 %_47, 1
  %_49.1 = icmp ult i64 %_47, 1
  br i1 %_49.1, label %panic5, label %bb24

bb24:                                             ; preds = %bb23
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E"(ptr align 8 %arr, i64 %_49.0, ptr align 8 @alloc_104b3bd80511659d41ae8fd554093ce8)
          to label %bb25 unwind label %cleanup2

panic5:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6465ba04766c40b2a020fdca4370d85c) #20
          to label %unreachable unwind label %cleanup2

bb25:                                             ; preds = %bb24
  %_43 = load i32, ptr %_44, align 4
  %_42 = icmp eq i32 %_43, 48
  br i1 %_42, label %bb26, label %bb29

bb26:                                             ; preds = %bb25
; invoke alloc::vec::Vec<T,A>::pop
  %23 = invoke { i32, i32 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E"(ptr align 8 %arr)
          to label %bb27 unwind label %cleanup2

bb30:                                             ; preds = %bb29
  %_62.0 = sub i64 %_60, 1
  %_62.1 = icmp ult i64 %_60, 1
  br i1 %_62.1, label %panic6, label %bb31

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E"(ptr align 8 %arr, i64 %_62.0, ptr align 8 @alloc_c001a48b7e8237c1114f22bb771f556d)
          to label %bb32 unwind label %cleanup2

panic6:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_53d74811e23ed5bfd6e9ffbcf6bbcc99) #20
          to label %unreachable unwind label %cleanup2

bb32:                                             ; preds = %bb31
  %24 = getelementptr inbounds i8, ptr %_57, i64 4
  %tmp = load i32, ptr %24, align 4
  %_64 = load i32, ptr %maxlen, align 4
  %_66 = trunc i64 %i to i32
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_66, i32 %tmp)
  %_67.0 = extractvalue { i32, i1 } %25, 0
  %_67.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_67.1, label %panic7, label %bb33

bb33:                                             ; preds = %bb32
; invoke core::cmp::Ord::max
  %_63 = invoke i32 @_ZN4core3cmp3Ord3max17h08447a3a530d2619E(i32 %_64, i32 %_67.0)
          to label %bb34 unwind label %cleanup2

panic7:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fd37254afb7313811d5af873d1bfb51f) #20
          to label %unreachable unwind label %cleanup2

bb34:                                             ; preds = %bb33
  store i32 %_63, ptr %maxlen, align 4
  br label %bb7

bb27:                                             ; preds = %bb26
  %_50.0 = extractvalue { i32, i32 } %23, 0
  %_50.1 = extractvalue { i32, i32 } %23, 1
; invoke alloc::vec::Vec<T,A>::pop
  %26 = invoke { i32, i32 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E"(ptr align 8 %arr)
          to label %bb28 unwind label %cleanup2

bb28:                                             ; preds = %bb27
  %_52.0 = extractvalue { i32, i32 } %26, 0
  %_52.1 = extractvalue { i32, i32 } %26, 1
; invoke alloc::vec::Vec<T,A>::pop
  %27 = invoke { i32, i32 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E"(ptr align 8 %arr)
          to label %bb43 unwind label %cleanup2

bb43:                                             ; preds = %bb28
  %_54.0 = extractvalue { i32, i32 } %27, 0
  %_54.1 = extractvalue { i32, i32 } %27, 1
  br label %bb12

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb38, %bb37
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #22
  unreachable

bb39:                                             ; preds = %bb38
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}
