define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_19 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %hash_negative = alloca [24 x i8], align 8
  %hash_positive = alloca [24 x i8], align 8
  %ans = alloca [4 x i8], align 4
  %difference = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  store i32 0, ptr %difference, align 4
  store i32 0, ptr %ans, align 4
  %_7 = sext i32 %n to i64
  %_8.0 = add i64 %_7, 1
  %_8.1 = icmp ult i64 %_8.0, %_7
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE(ptr sret([24 x i8]) align 8 %hash_positive, i32 0, i64 %_8.0)
  %_11 = sext i32 %n to i64
  %_12.0 = add i64 %_11, 1
  %_12.1 = icmp ult i64 %_12.0, %_11
  br i1 %_12.1, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dea1fafe7d897376748dd884c4ddebb6) #23
  unreachable

bb3:                                              ; preds = %bb1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h1d37612d8d39bcfeE(ptr sret([24 x i8]) align 8 %hash_negative, i32 0, i64 %_12.0)
          to label %bb4 unwind label %cleanup

panic1:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f57807eb6977b04cfb7653bc758ec2e5) #24
          to label %unreachable unwind label %cleanup

bb35:                                             ; preds = %bb34, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fc2c7d698245f18E"(ptr align 8 %hash_positive) #22
          to label %bb36 unwind label %terminate

cleanup:                                          ; preds = %bb11, %bb3, %panic1
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb35

unreachable:                                      ; preds = %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic1
  unreachable

bb4:                                              ; preds = %bb3
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_13 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1954f774f7083bd6E"(ptr align 8 %hash_positive, i64 0, ptr align 8 @alloc_9071d3b766533ec5c1fd5fe3b599f985)
          to label %bb5 unwind label %cleanup2

bb34:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fc2c7d698245f18E"(ptr align 8 %hash_negative) #22
          to label %bb35 unwind label %terminate

cleanup2:                                         ; preds = %panic12, %bb24, %panic11, %panic10, %bb21, %panic9, %panic8, %bb29, %panic7, %bb27, %panic6, %panic5, %panic4, %panic3, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb34

bb5:                                              ; preds = %bb4
  store i32 1, ptr %_13, align 4
  %_17 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4c832b4e6a448047E"(i64 0, i64 %_17)
          to label %bb6 unwind label %cleanup2

bb6:                                              ; preds = %bb5
  %_15.0 = extractvalue { i64, i64 } %11, 0
  %_15.1 = extractvalue { i64, i64 } %11, 1
  store i64 %_15.0, ptr %iter, align 8
  %12 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_15.1, ptr %12, align 8
  br label %bb7

bb7:                                              ; preds = %bb26, %bb31, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %13 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h338c9bb7fea3b146E"(ptr align 8 %iter)
          to label %bb8 unwind label %cleanup2

bb8:                                              ; preds = %bb7
  %14 = extractvalue { i64, i64 } %13, 0
  %15 = extractvalue { i64, i64 } %13, 1
  store i64 %14, ptr %_19, align 8
  %16 = getelementptr inbounds i8, ptr %_19, i64 8
  store i64 %15, ptr %16, align 8
  %_21 = load i64, ptr %_19, align 8
  %17 = getelementptr inbounds i8, ptr %_19, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = trunc nuw i64 %_21 to i1
  br i1 %19, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %20 = getelementptr inbounds i8, ptr %_19, i64 8
  %i = load i64, ptr %20, align 8
  %_26 = icmp ult i64 %i, 2
  br i1 %_26, label %bb12, label %panic3

bb11:                                             ; preds = %bb8
  %_0 = load i32, ptr %ans, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fc2c7d698245f18E"(ptr align 8 %hash_negative)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb11
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fc2c7d698245f18E"(ptr align 8 %hash_positive)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %21 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_25 = load i32, ptr %21, align 4
  br label %bb13

panic3:                                           ; preds = %bb10
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_c3090b4ae34b0b883c95a0778e9d4733) #24
          to label %unreachable unwind label %cleanup2

bb13:                                             ; preds = %bb12
  %_29 = icmp eq i32 %_25, -2147483648
  %_30 = and i1 false, %_29
  br i1 %_30, label %panic4, label %bb14

bb14:                                             ; preds = %bb13
  %_24 = srem i32 %_25, 2
  %_23 = icmp eq i32 %_24, 1
  br i1 %_23, label %bb15, label %bb17

panic4:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c3090b4ae34b0b883c95a0778e9d4733) #24
          to label %unreachable unwind label %cleanup2

bb17:                                             ; preds = %bb14
  %22 = load i32, ptr %difference, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %22, i32 1)
  %_32.0 = extractvalue { i32, i1 } %23, 0
  %_32.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_32.1, label %panic5, label %bb18

bb15:                                             ; preds = %bb14
  %24 = load i32, ptr %difference, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %_31.0 = extractvalue { i32, i1 } %25, 0
  %_31.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_31.1, label %panic6, label %bb16

bb18:                                             ; preds = %bb17
  store i32 %_32.0, ptr %difference, align 4
  br label %bb19

panic5:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_07c33042b793c2b894cacd8bc29212ce) #24
          to label %unreachable unwind label %cleanup2

bb19:                                             ; preds = %bb16, %bb18
  %_34 = load i32, ptr %difference, align 4
  %_33 = icmp slt i32 %_34, 0
  br i1 %_33, label %bb20, label %bb27

bb16:                                             ; preds = %bb15
  store i32 %_31.0, ptr %difference, align 4
  br label %bb19

panic6:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f08fd54e4f9ccfe8837d5c1cee81f40a) #24
          to label %unreachable unwind label %cleanup2

bb27:                                             ; preds = %bb19
  %_54 = load i32, ptr %difference, align 4
  %_53 = sext i32 %_54 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E"(ptr align 8 %hash_positive, i64 %_53, ptr align 8 @alloc_4bd17fb0409dd7e5fde445e5eed2b5c8)
          to label %bb28 unwind label %cleanup2

bb20:                                             ; preds = %bb19
  %_40 = load i32, ptr %difference, align 4
  %_41 = icmp eq i32 %_40, -2147483648
  br i1 %_41, label %panic9, label %bb21

bb28:                                             ; preds = %bb27
  %_50 = load i32, ptr %_51, align 4
  %26 = load i32, ptr %ans, align 4
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 %_50)
  %_55.0 = extractvalue { i32, i1 } %27, 0
  %_55.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_55.1, label %panic7, label %bb29

bb29:                                             ; preds = %bb28
  store i32 %_55.0, ptr %ans, align 4
  %_59 = load i32, ptr %difference, align 4
  %_58 = sext i32 %_59 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_56 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1954f774f7083bd6E"(ptr align 8 %hash_positive, i64 %_58, ptr align 8 @alloc_7df361853e5fcd88d6787959346464b8)
          to label %bb30 unwind label %cleanup2

panic7:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2b134ba2352bf980574e07d088adc4bf) #24
          to label %unreachable unwind label %cleanup2

bb30:                                             ; preds = %bb29
  %28 = load i32, ptr %_56, align 4
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %28, i32 1)
  %_60.0 = extractvalue { i32, i1 } %29, 0
  %_60.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_60.1, label %panic8, label %bb31

bb31:                                             ; preds = %bb30
  store i32 %_60.0, ptr %_56, align 4
  br label %bb7

panic8:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fe9e2e5f8995e8e6e7466d1b5e03eb15) #24
          to label %unreachable unwind label %cleanup2

bb21:                                             ; preds = %bb20
  %_39 = sub i32 0, %_40
  %_38 = sext i32 %_39 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbb89050a13e6f5d8E"(ptr align 8 %hash_negative, i64 %_38, ptr align 8 @alloc_7f027e5588d69210053d6aeb5b84a3f7)
          to label %bb22 unwind label %cleanup2

panic9:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_neg_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_neg_overflow17hf7841d7385a517f1E(ptr align 8 @alloc_2d408bb8b4e631f12b54bae4f2fa29bf) #24
          to label %unreachable unwind label %cleanup2

bb22:                                             ; preds = %bb21
  %_35 = load i32, ptr %_36, align 4
  %30 = load i32, ptr %ans, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 %_35)
  %_42.0 = extractvalue { i32, i1 } %31, 0
  %_42.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_42.1, label %panic10, label %bb23

bb23:                                             ; preds = %bb22
  store i32 %_42.0, ptr %ans, align 4
  %_47 = load i32, ptr %difference, align 4
  %_48 = icmp eq i32 %_47, -2147483648
  br i1 %_48, label %panic11, label %bb24

panic10:                                          ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_558e726c1171031ff99b755f9dbd1e30) #24
          to label %unreachable unwind label %cleanup2

bb24:                                             ; preds = %bb23
  %_46 = sub i32 0, %_47
  %_45 = sext i32 %_46 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_43 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1954f774f7083bd6E"(ptr align 8 %hash_negative, i64 %_45, ptr align 8 @alloc_1cd5ec5a0bfd11751651331c56e2654b)
          to label %bb25 unwind label %cleanup2

panic11:                                          ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_neg_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_neg_overflow17hf7841d7385a517f1E(ptr align 8 @alloc_88866cd4d64cbc6d8671a06cb36db6f9) #24
          to label %unreachable unwind label %cleanup2

bb25:                                             ; preds = %bb24
  %32 = load i32, ptr %_43, align 4
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 1)
  %_49.0 = extractvalue { i32, i1 } %33, 0
  %_49.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_49.1, label %panic12, label %bb26

bb26:                                             ; preds = %bb25
  store i32 %_49.0, ptr %_43, align 4
  br label %bb7

panic12:                                          ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a09af554e38b56ed36e7895c2da339b8) #24
          to label %unreachable unwind label %cleanup2

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb35, %bb34
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb36:                                             ; preds = %bb35
  %35 = load ptr, ptr %1, align 8
  %36 = getelementptr inbounds i8, ptr %1, i64 8
  %37 = load i32, ptr %36, align 8
  %38 = insertvalue { ptr, i32 } poison, ptr %35, 0
  %39 = insertvalue { ptr, i32 } %38, i32 %37, 1
  resume { ptr, i32 } %39
}
