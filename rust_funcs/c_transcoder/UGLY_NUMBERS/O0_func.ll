define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_16 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %next_ugly_no = alloca [4 x i8], align 4
  %next_multiple_of_5 = alloca [4 x i8], align 4
  %next_multiple_of_3 = alloca [4 x i8], align 4
  %next_multiple_of_2 = alloca [4 x i8], align 4
  %i5 = alloca [4 x i8], align 4
  %i3 = alloca [4 x i8], align 4
  %i2 = alloca [4 x i8], align 4
  %ugly = alloca [24 x i8], align 8
  %_3 = zext i32 %n to i64
; call alloc::vec::Vec<T>::with_capacity
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h489527b2035bc384E"(ptr sret([24 x i8]) align 8 %ugly, i64 %_3) #20
  store i32 0, ptr %i2, align 4
  store i32 0, ptr %i3, align 4
  store i32 0, ptr %i5, align 4
  store i32 2, ptr %next_multiple_of_2, align 4
  store i32 3, ptr %next_multiple_of_3, align 4
  store i32 5, ptr %next_multiple_of_5, align 4
  store i32 1, ptr %next_ugly_no, align 4
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E"(ptr align 8 %ugly, i32 1)
          to label %bb2 unwind label %cleanup

bb28:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<u32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h0521b490a325493dE"(ptr align 8 %ugly) #21
          to label %bb29 unwind label %terminate

cleanup:                                          ; preds = %panic5, %bb24, %panic4, %panic3, %bb19, %panic2, %panic1, %bb14, %panic, %bb11, %bb10, %bb9, %bb7, %bb4, %bb2, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb28

bb2:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1a98064f11cbe895E"(i32 1, i32 %n)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_13.0 = extractvalue { i32, i32 } %5, 0
  %_13.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_13.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_13.1, ptr %6, align 4
  br label %bb4

bb4:                                              ; preds = %bb26, %bb22, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h205af17ea5b850a9E"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_16, align 4
  %10 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_16, align 4
  %12 = getelementptr inbounds i8, ptr %_16, i64 4
  %13 = load i32, ptr %12, align 4
  %_18 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_18 to i1
  br i1 %14, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds i8, ptr %_16, i64 4
  %i = load i32, ptr %15, align 4
  %_21 = load i32, ptr %next_ugly_no, align 4
  %_23 = load i32, ptr %next_multiple_of_2, align 4
  %_25 = load i32, ptr %next_multiple_of_3, align 4
  %_26 = load i32, ptr %next_multiple_of_5, align 4
; invoke core::cmp::Ord::min
  %_24 = invoke i32 @_ZN4core3cmp3Ord3min17h994c23f892ac18afE(i32 %_25, i32 %_26)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
  %_0 = load i32, ptr %next_ugly_no, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<u32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h0521b490a325493dE"(ptr align 8 %ugly)
  ret i32 %_0

bb9:                                              ; preds = %bb7
; invoke core::cmp::Ord::min
  %_22 = invoke i32 @_ZN4core3cmp3Ord3min17h994c23f892ac18afE(i32 %_23, i32 %_24)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
; invoke core::cmp::Ord::min
  %_20 = invoke i32 @_ZN4core3cmp3Ord3min17h994c23f892ac18afE(i32 %_21, i32 %_22)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  store i32 %_20, ptr %next_ugly_no, align 4
  %_29 = load i32, ptr %next_ugly_no, align 4
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E"(ptr align 8 %ugly, i32 %_29)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_31 = load i32, ptr %next_ugly_no, align 4
  %_32 = load i32, ptr %next_multiple_of_2, align 4
  %_30 = icmp eq i32 %_31, %_32
  br i1 %_30, label %bb13, label %bb17

bb17:                                             ; preds = %bb16, %bb12
  %_41 = load i32, ptr %next_ugly_no, align 4
  %_42 = load i32, ptr %next_multiple_of_3, align 4
  %_40 = icmp eq i32 %_41, %_42
  br i1 %_40, label %bb18, label %bb22

bb13:                                             ; preds = %bb12
  %16 = load i32, ptr %i2, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 1)
  %_33.0 = extractvalue { i32, i1 } %17, 0
  %_33.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_33.1, label %panic, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_33.0, ptr %i2, align 4
  %_38 = load i32, ptr %i2, align 4
  %_37 = sext i32 %_38 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5e2ca21b531e23e7E"(ptr align 8 %ugly, i64 %_37, ptr align 8 @alloc_b36ee7c80adbdfcf057396b5167e3fca)
          to label %bb15 unwind label %cleanup

panic:                                            ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_02bd0ab7133fe05542f38ca66c946abe) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb15:                                             ; preds = %bb14
  %_34 = load i32, ptr %_35, align 4
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_34, i32 2)
  %_39.0 = extractvalue { i32, i1 } %18, 0
  %_39.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_39.1, label %panic1, label %bb16

bb16:                                             ; preds = %bb15
  store i32 %_39.0, ptr %next_multiple_of_2, align 4
  br label %bb17

panic1:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_618e0c55ad4c8741d18b9eedd2908f57) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21, %bb17
  %_51 = load i32, ptr %next_ugly_no, align 4
  %_52 = load i32, ptr %next_multiple_of_5, align 4
  %_50 = icmp eq i32 %_51, %_52
  br i1 %_50, label %bb23, label %bb4

bb18:                                             ; preds = %bb17
  %19 = load i32, ptr %i3, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 1)
  %_43.0 = extractvalue { i32, i1 } %20, 0
  %_43.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_43.1, label %panic2, label %bb19

bb19:                                             ; preds = %bb18
  store i32 %_43.0, ptr %i3, align 4
  %_48 = load i32, ptr %i3, align 4
  %_47 = sext i32 %_48 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5e2ca21b531e23e7E"(ptr align 8 %ugly, i64 %_47, ptr align 8 @alloc_985c7bbf5a4df5c110433d4ae10895b9)
          to label %bb20 unwind label %cleanup

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_eba7ff7cc9997ee67cb30f08f0384950) #23
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_44 = load i32, ptr %_45, align 4
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_44, i32 3)
  %_49.0 = extractvalue { i32, i1 } %21, 0
  %_49.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_49.1, label %panic3, label %bb21

bb21:                                             ; preds = %bb20
  store i32 %_49.0, ptr %next_multiple_of_3, align 4
  br label %bb22

panic3:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_edb34b6b55140e50eb7ac3ae1acf69bf) #23
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %22 = load i32, ptr %i5, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 1)
  %_53.0 = extractvalue { i32, i1 } %23, 0
  %_53.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_53.1, label %panic4, label %bb24

bb24:                                             ; preds = %bb23
  store i32 %_53.0, ptr %i5, align 4
  %_58 = load i32, ptr %i5, align 4
  %_57 = sext i32 %_58 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5e2ca21b531e23e7E"(ptr align 8 %ugly, i64 %_57, ptr align 8 @alloc_2595e93d34f1e06363a8c121c0f16216)
          to label %bb25 unwind label %cleanup

panic4:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f8dba3d5cf21db7ac7ce7ab1b74a85d1) #23
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_54 = load i32, ptr %_55, align 4
  %24 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_54, i32 5)
  %_59.0 = extractvalue { i32, i1 } %24, 0
  %_59.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_59.1, label %panic5, label %bb26

bb26:                                             ; preds = %bb25
  store i32 %_59.0, ptr %next_multiple_of_5, align 4
  br label %bb4

panic5:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2989e2e7959c6ac5ee0608176e06e255) #23
          to label %unreachable unwind label %cleanup

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb28
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb29:                                             ; preds = %bb28
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds i8, ptr %0, i64 8
  %28 = load i32, ptr %27, align 8
  %29 = insertvalue { ptr, i32 } poison, ptr %26, 0
  %30 = insertvalue { ptr, i32 } %29, i32 %28, 1
  resume { ptr, i32 } %30
}
