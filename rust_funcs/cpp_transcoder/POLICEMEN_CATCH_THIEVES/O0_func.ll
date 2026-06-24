define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %r = alloca [4 x i8], align 4
  %l = alloca [4 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %pol = alloca [24 x i8], align 8
  %thi = alloca [24 x i8], align 8
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
; call alloc::vec::Vec<T>::new
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h2e3c02b87bbe7eb2E"(ptr sret([24 x i8]) align 8 %thi) #21
; invoke alloc::vec::Vec<T>::new
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h2e3c02b87bbe7eb2E"(ptr sret([24 x i8]) align 8 %pol)
          to label %bb2 unwind label %cleanup

bb38:                                             ; preds = %bb37, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7871951e1c67a33aE"(ptr align 8 %thi) #22
          to label %bb39 unwind label %terminate

cleanup:                                          ; preds = %bb34, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb38

bb2:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcd445dfc2c2bd9d4E"(i32 0, i32 %n)
          to label %bb3 unwind label %cleanup1

bb37:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7871951e1c67a33aE"(ptr align 8 %pol) #22
          to label %bb38 unwind label %terminate

cleanup1:                                         ; preds = %bb10, %bb13, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %bb28, %bb27, %bb21, %panic, %bb19, %bb18, %bb16, %bb14, %bb4, %bb2
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb37

bb3:                                              ; preds = %bb2
  %_7.0 = extractvalue { i32, i32 } %5, 0
  %_7.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_7.0, ptr %iter, align 4
  %10 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %10, align 4
  br label %bb4

bb4:                                              ; preds = %bb40, %bb41, %bb12, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h37b238f634719808E"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_10, align 4
  %14 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_10, align 4
  %16 = getelementptr inbounds i8, ptr %_10, i64 4
  %17 = load i32, ptr %16, align 4
  %_12 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_12 to i1
  br i1 %18, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %19 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %19, align 4
  %_16 = sext i32 %i to i64
  %_19 = icmp ult i64 %_16, %arr.1
  br i1 %_19, label %bb9, label %panic7

bb8:                                              ; preds = %bb5
  store i32 0, ptr %l, align 4
  store i32 0, ptr %r, align 4
  br label %bb14

bb14:                                             ; preds = %bb26, %bb31, %bb33, %bb8
  %_33 = load i32, ptr %l, align 4
; invoke alloc::vec::Vec<T,A>::len
  %_35 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h03e4335a3d22087bE"(ptr align 8 %thi)
          to label %bb15 unwind label %cleanup1

bb15:                                             ; preds = %bb14
  %_34 = trunc i64 %_35 to i32
  %_32 = icmp slt i32 %_33, %_34
  br i1 %_32, label %bb16, label %bb34

bb34:                                             ; preds = %bb17, %bb15
  %_0 = load i32, ptr %res, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7871951e1c67a33aE"(ptr align 8 %pol)
          to label %bb35 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_38 = load i32, ptr %r, align 4
; invoke alloc::vec::Vec<T,A>::len
  %_40 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h03e4335a3d22087bE"(ptr align 8 %pol)
          to label %bb17 unwind label %cleanup1

bb17:                                             ; preds = %bb16
  %_39 = trunc i64 %_40 to i32
  %_37 = icmp slt i32 %_38, %_39
  br i1 %_37, label %bb18, label %bb34

bb18:                                             ; preds = %bb17
  %_49 = load i32, ptr %l, align 4
  %_48 = sext i32 %_49 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE"(ptr align 8 %thi, i64 %_48, ptr align 8 @alloc_79ba4d68c6fa5363035f9bbb9a6c65f0)
          to label %bb19 unwind label %cleanup1

bb35:                                             ; preds = %bb34
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7871951e1c67a33aE"(ptr align 8 %thi)
  ret i32 %_0

bb19:                                             ; preds = %bb18
  %_45 = load i32, ptr %_46, align 4
  %_54 = load i32, ptr %r, align 4
  %_53 = sext i32 %_54 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE"(ptr align 8 %pol, i64 %_53, ptr align 8 @alloc_8a5a8ac5dfd1b4a16ded1f6ce832206e)
          to label %bb20 unwind label %cleanup1

bb20:                                             ; preds = %bb19
  %_50 = load i32, ptr %_51, align 4
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_45, i32 %_50)
  %_55.0 = extractvalue { i32, i1 } %20, 0
  %_55.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_55.1, label %panic, label %bb21

bb21:                                             ; preds = %bb20
; invoke core::num::<impl i32>::abs
  %_43 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h8178612638ecb48cE"(i32 %_55.0)
          to label %bb22 unwind label %cleanup1

panic:                                            ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0f96f338b7aadf29a8053a76b47446cf) #23
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb22:                                             ; preds = %bb21
  %_42 = icmp sle i32 %_43, %k
  br i1 %_42, label %bb23, label %bb27

bb27:                                             ; preds = %bb22
  %_64 = load i32, ptr %l, align 4
  %_63 = sext i32 %_64 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE"(ptr align 8 %thi, i64 %_63, ptr align 8 @alloc_f4cadb9e8d68cf268b4403aa9efd3da4)
          to label %bb28 unwind label %cleanup1

bb23:                                             ; preds = %bb22
  %21 = load i32, ptr %res, align 4
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %21, i32 1)
  %_56.0 = extractvalue { i32, i1 } %22, 0
  %_56.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_56.1, label %panic4, label %bb24

bb28:                                             ; preds = %bb27
  %_60 = load i32, ptr %_61, align 4
  %_69 = load i32, ptr %r, align 4
  %_68 = sext i32 %_69 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE"(ptr align 8 %pol, i64 %_68, ptr align 8 @alloc_96327ba70c7453c0f3ff478111758578)
          to label %bb29 unwind label %cleanup1

bb29:                                             ; preds = %bb28
  %_65 = load i32, ptr %_66, align 4
  %_59 = icmp slt i32 %_60, %_65
  br i1 %_59, label %bb30, label %bb32

bb32:                                             ; preds = %bb29
  %23 = load i32, ptr %r, align 4
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 1)
  %_71.0 = extractvalue { i32, i1 } %24, 0
  %_71.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_71.1, label %panic2, label %bb33

bb30:                                             ; preds = %bb29
  %25 = load i32, ptr %l, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 1)
  %_70.0 = extractvalue { i32, i1 } %26, 0
  %_70.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_70.1, label %panic3, label %bb31

bb33:                                             ; preds = %bb32
  store i32 %_71.0, ptr %r, align 4
  br label %bb14

panic2:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1617506914d3649eaa63fa2888d2ab69) #23
          to label %unreachable unwind label %cleanup1

bb31:                                             ; preds = %bb30
  store i32 %_70.0, ptr %l, align 4
  br label %bb14

panic3:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_69abff5313f7041cbabe68193ab193cd) #23
          to label %unreachable unwind label %cleanup1

bb24:                                             ; preds = %bb23
  store i32 %_56.0, ptr %res, align 4
  %27 = load i32, ptr %l, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1)
  %_57.0 = extractvalue { i32, i1 } %28, 0
  %_57.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_57.1, label %panic5, label %bb25

panic4:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_df81da38e9e1207a302206500929b9cf) #23
          to label %unreachable unwind label %cleanup1

bb25:                                             ; preds = %bb24
  store i32 %_57.0, ptr %l, align 4
  %29 = load i32, ptr %r, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %_58.0 = extractvalue { i32, i1 } %30, 0
  %_58.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_58.1, label %panic6, label %bb26

panic5:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_18c501b6a10d4d07e35df19b6f1f7cf7) #23
          to label %unreachable unwind label %cleanup1

bb26:                                             ; preds = %bb25
  store i32 %_58.0, ptr %r, align 4
  br label %bb14

panic6:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_508f95f02ce2156dad06d0fd1226b230) #23
          to label %unreachable unwind label %cleanup1

bb9:                                              ; preds = %bb7
  %31 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_16
  %_15 = load i32, ptr %31, align 4
  %_14 = icmp eq i32 %_15, 80
  br i1 %_14, label %bb10, label %bb11

panic7:                                           ; preds = %bb7
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 %arr.1, ptr align 8 @alloc_8cfc95be86395af95e52f3ac6e7e425b) #23
          to label %unreachable unwind label %cleanup1

bb11:                                             ; preds = %bb9
  %_24 = sext i32 %i to i64
  %_27 = icmp ult i64 %_24, %arr.1
  br i1 %_27, label %bb12, label %panic8

bb10:                                             ; preds = %bb9
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE"(ptr align 8 %pol, i32 %i)
          to label %bb40 unwind label %cleanup1

bb12:                                             ; preds = %bb11
  %32 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_24
  %_23 = load i32, ptr %32, align 4
  %_22 = icmp eq i32 %_23, 84
  br i1 %_22, label %bb13, label %bb4

panic8:                                           ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 %arr.1, ptr align 8 @alloc_9f616e7fc0231eaf01b3588ed9655f6b) #23
          to label %unreachable unwind label %cleanup1

bb13:                                             ; preds = %bb12
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE"(ptr align 8 %thi, i32 %i)
          to label %bb41 unwind label %cleanup1

bb41:                                             ; preds = %bb13
  br label %bb4

bb40:                                             ; preds = %bb10
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb38, %bb37
  %33 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb39:                                             ; preds = %bb38
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds i8, ptr %0, i64 8
  %36 = load i32, ptr %35, align 8
  %37 = insertvalue { ptr, i32 } poison, ptr %34, 0
  %38 = insertvalue { ptr, i32 } %37, i32 %36, 1
  resume { ptr, i32 } %38
}
