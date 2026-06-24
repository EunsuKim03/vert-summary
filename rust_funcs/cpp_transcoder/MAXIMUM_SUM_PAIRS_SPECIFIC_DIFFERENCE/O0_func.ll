define i32 @f_gold(i64 %0, i32 %N, i32 %K) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %arr1 = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
; call alloc::slice::<impl [T]>::to_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h86f5918b8e76b7c1E"(ptr sret([24 x i8]) align 8 %arr1, ptr align 4 %arr, i64 2) #21
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %3 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hd8c38c66371b0c2eE"(ptr align 8 %arr1)
          to label %bb2 unwind label %cleanup

bb44:                                             ; preds = %bb43, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"(ptr align 8 %arr1) #22
          to label %bb45 unwind label %terminate

cleanup:                                          ; preds = %bb40, %bb3, %bb2, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb44

bb2:                                              ; preds = %start
  %_8.0 = extractvalue { ptr, i64 } %3, 0
  %_8.1 = extractvalue { ptr, i64 } %3, 1
; invoke alloc::slice::<impl [T]>::sort
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h3c7027de06af8437E"(ptr align 4 %_8.0, i64 %_8.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_11 = sext i32 %N to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17ha4c802e9df6bc8bfE(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_11)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_12 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_bf59e646bb61a248b441087a84dfad10)
          to label %bb5 unwind label %cleanup2

bb43:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"(ptr align 8 %dp) #22
          to label %bb44 unwind label %terminate

cleanup2:                                         ; preds = %bb29, %bb28, %panic11, %bb26, %panic10, %panic9, %bb23, %bb22, %panic8, %bb20, %bb37, %bb36, %panic7, %bb34, %panic6, %bb32, %bb31, %panic5, %bb16, %panic4, %bb14, %bb13, %bb12, %panic3, %bb39, %panic, %bb7, %bb5, %bb4
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %1, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb43

bb5:                                              ; preds = %bb4
  store i32 0, ptr %_12, align 4
  %_16 = sext i32 %N to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h62d4f015e6f3a8eeE"(i64 1, i64 %_16)
          to label %bb6 unwind label %cleanup2

bb6:                                              ; preds = %bb5
  %_14.0 = extractvalue { i64, i64 } %12, 0
  %_14.1 = extractvalue { i64, i64 } %12, 1
  store i64 %_14.0, ptr %iter, align 8
  %13 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_14.1, ptr %13, align 8
  br label %bb7

bb7:                                              ; preds = %bb30, %bb38, %bb18, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h53591a7aaba7a096E"(ptr align 8 %iter)
          to label %bb8 unwind label %cleanup2

bb8:                                              ; preds = %bb7
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = extractvalue { i64, i64 } %14, 1
  store i64 %15, ptr %_18, align 8
  %17 = getelementptr inbounds i8, ptr %_18, i64 8
  store i64 %16, ptr %17, align 8
  %_20 = load i64, ptr %_18, align 8
  %18 = getelementptr inbounds i8, ptr %_18, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = trunc nuw i64 %_20 to i1
  br i1 %20, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %21 = getelementptr inbounds i8, ptr %_18, i64 8
  %i = load i64, ptr %21, align 8
  %_26.0 = sub i64 %i, 1
  %_26.1 = icmp ult i64 %i, 1
  br i1 %_26.1, label %panic3, label %bb12

bb11:                                             ; preds = %bb8
  %_83 = sext i32 %N to i64
  %_84.0 = sub i64 %_83, 1
  %_84.1 = icmp ult i64 %_83, 1
  br i1 %_84.1, label %panic, label %bb39

bb39:                                             ; preds = %bb11
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_80 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %_84.0, ptr align 8 @alloc_d06d15e85c423e02d9f7bc30c823a65f)
          to label %bb40 unwind label %cleanup2

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e68a8859ddb14911958c5306c061bc1b) #24
          to label %unreachable unwind label %cleanup2

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic
  unreachable

bb40:                                             ; preds = %bb39
  %_0 = load i32, ptr %_80, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"(ptr align 8 %dp)
          to label %bb41 unwind label %cleanup

bb41:                                             ; preds = %bb40
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"(ptr align 8 %arr1)
  ret i32 %_0

bb12:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_23 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %_26.0, ptr align 8 @alloc_4378721aaa1b8f1626ca0845dba5c566)
          to label %bb13 unwind label %cleanup2

panic3:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f2806c0a196628d1d29398a9d5e0964d) #24
          to label %unreachable unwind label %cleanup2

bb13:                                             ; preds = %bb12
  %_22 = load i32, ptr %_23, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_27 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_968cf7a8f0502985b9a870ed07a3aa97)
          to label %bb14 unwind label %cleanup2

bb14:                                             ; preds = %bb13
  store i32 %_22, ptr %_27, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_32 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %arr1, i64 %i, ptr align 8 @alloc_867812af7dedc9233078db62fd9013bf)
          to label %bb15 unwind label %cleanup2

bb15:                                             ; preds = %bb14
  %_31 = load i32, ptr %_32, align 4
  %_38.0 = sub i64 %i, 1
  %_38.1 = icmp ult i64 %i, 1
  br i1 %_38.1, label %panic4, label %bb16

bb16:                                             ; preds = %bb15
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %arr1, i64 %_38.0, ptr align 8 @alloc_61fd08fdde029302de8722a08cb32ed6)
          to label %bb17 unwind label %cleanup2

panic4:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1d944cca5ce140878ecc7cf074ea2368) #24
          to label %unreachable unwind label %cleanup2

bb17:                                             ; preds = %bb16
  %_34 = load i32, ptr %_35, align 4
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_31, i32 %_34)
  %_39.0 = extractvalue { i32, i1 } %22, 0
  %_39.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_39.1, label %panic5, label %bb18

bb18:                                             ; preds = %bb17
  %_29 = icmp slt i32 %_39.0, %K
  br i1 %_29, label %bb19, label %bb7

panic5:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_97c8f0379a5e49c73ec4b7d9fe8909cd) #24
          to label %unreachable unwind label %cleanup2

bb19:                                             ; preds = %bb18
  %_40 = icmp uge i64 %i, 2
  br i1 %_40, label %bb20, label %bb31

bb31:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_433d4d81a56f3da17b416ad90e312495)
          to label %bb32 unwind label %cleanup2

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_5a70374be77af27d5c9683e504360bf5)
          to label %bb21 unwind label %cleanup2

bb32:                                             ; preds = %bb31
  %_65 = load i32, ptr %_66, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %arr1, i64 %i, ptr align 8 @alloc_b630e932f71d8387f084664455ecd3e4)
          to label %bb33 unwind label %cleanup2

bb33:                                             ; preds = %bb32
  %_69 = load i32, ptr %_70, align 4
  %_76.0 = sub i64 %i, 1
  %_76.1 = icmp ult i64 %i, 1
  br i1 %_76.1, label %panic6, label %bb34

bb34:                                             ; preds = %bb33
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_73 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %arr1, i64 %_76.0, ptr align 8 @alloc_5cbdf29d45e00fe646275995c136b603)
          to label %bb35 unwind label %cleanup2

panic6:                                           ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0d6959c3f261920b3e3b91c77b93a9d0) #24
          to label %unreachable unwind label %cleanup2

bb35:                                             ; preds = %bb34
  %_72 = load i32, ptr %_73, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_69, i32 %_72)
  %_77.0 = extractvalue { i32, i1 } %23, 0
  %_77.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_77.1, label %panic7, label %bb36

bb36:                                             ; preds = %bb35
; invoke core::cmp::max
  %_64 = invoke i32 @_ZN4core3cmp3max17h65b1ccc728c9a344E(i32 %_65, i32 %_77.0)
          to label %bb37 unwind label %cleanup2

panic7:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3f6ae3812bc7394db1517aa25a40b5b9) #24
          to label %unreachable unwind label %cleanup2

bb37:                                             ; preds = %bb36
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_78 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_657e8d1432de5ef7689ec9c686901cc8)
          to label %bb38 unwind label %cleanup2

bb38:                                             ; preds = %bb37
  store i32 %_64, ptr %_78, align 4
  br label %bb7

bb21:                                             ; preds = %bb20
  %_42 = load i32, ptr %_43, align 4
  %_51.0 = sub i64 %i, 2
  %_51.1 = icmp ult i64 %i, 2
  br i1 %_51.1, label %panic8, label %bb22

bb22:                                             ; preds = %bb21
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %dp, i64 %_51.0, ptr align 8 @alloc_54c8e2ad7529e7d21314ede3c018da44)
          to label %bb23 unwind label %cleanup2

panic8:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a80c9061aaaea552ebc2ba7334e8f7df) #24
          to label %unreachable unwind label %cleanup2

bb23:                                             ; preds = %bb22
  %_47 = load i32, ptr %_48, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_53 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %arr1, i64 %i, ptr align 8 @alloc_23bab578bcb36d25bf9637b89e98cb6c)
          to label %bb24 unwind label %cleanup2

bb24:                                             ; preds = %bb23
  %_52 = load i32, ptr %_53, align 4
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_47, i32 %_52)
  %_55.0 = extractvalue { i32, i1 } %24, 0
  %_55.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_55.1, label %panic9, label %bb25

bb25:                                             ; preds = %bb24
  %_60.0 = sub i64 %i, 1
  %_60.1 = icmp ult i64 %i, 1
  br i1 %_60.1, label %panic10, label %bb26

panic9:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2f73268a5764434f976f31bc01e19e6e) #24
          to label %unreachable unwind label %cleanup2

bb26:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h36f45b449e7ae915E"(ptr align 8 %arr1, i64 %_60.0, ptr align 8 @alloc_22e00dcfea11a474e9ce0e740461fb7e)
          to label %bb27 unwind label %cleanup2

panic10:                                          ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bc1a3741dc4f2063985f2d05f9f98e3d) #24
          to label %unreachable unwind label %cleanup2

bb27:                                             ; preds = %bb26
  %_56 = load i32, ptr %_57, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_55.0, i32 %_56)
  %_61.0 = extractvalue { i32, i1 } %25, 0
  %_61.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_61.1, label %panic11, label %bb28

bb28:                                             ; preds = %bb27
; invoke core::cmp::max
  %_41 = invoke i32 @_ZN4core3cmp3max17h65b1ccc728c9a344E(i32 %_42, i32 %_61.0)
          to label %bb29 unwind label %cleanup2

panic11:                                          ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2f73268a5764434f976f31bc01e19e6e) #24
          to label %unreachable unwind label %cleanup2

bb29:                                             ; preds = %bb28
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_62 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2d2b30ceb628318E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_0bee35c8442a2152d5c86a111e5d5b0d)
          to label %bb30 unwind label %cleanup2

bb30:                                             ; preds = %bb29
  store i32 %_41, ptr %_62, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb44, %bb43
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb45:                                             ; preds = %bb44
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds i8, ptr %1, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = insertvalue { ptr, i32 } poison, ptr %27, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %29, 1
  resume { ptr, i32 } %31
}
