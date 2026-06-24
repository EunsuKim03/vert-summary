define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %b = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  %_3 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE(ptr sret([24 x i8]) align 8 %a, float 1.000000e+00, i64 %_3)
  %_5 = sext i32 %n to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE(ptr sret([24 x i8]) align 8 %b, float 1.000000e+00, i64 %_5)
          to label %bb2 unwind label %cleanup

bb24:                                             ; preds = %bb23, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hd5cb1be6c04b27bbE"(ptr align 8 %a) #22
          to label %bb25 unwind label %terminate

cleanup:                                          ; preds = %bb20, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb24

bb2:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfe0822427ce4e4f0E"(i32 1, i32 %n)
          to label %bb3 unwind label %cleanup1

bb23:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hd5cb1be6c04b27bbE"(ptr align 8 %b) #22
          to label %bb24 unwind label %terminate

cleanup1:                                         ; preds = %bb15, %bb14, %panic5, %bb12, %bb11, %panic4, %bb9, %panic3, %bb19, %panic2, %bb17, %panic, %bb4, %bb2
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb23

bb3:                                              ; preds = %bb2
  %_6.0 = extractvalue { i32, i32 } %5, 0
  %_6.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_6.0, ptr %iter, align 4
  %10 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %10, align 4
  br label %bb4

bb4:                                              ; preds = %bb16, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h06a5101077724062E"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_9, align 4
  %14 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_9, align 4
  %16 = getelementptr inbounds i8, ptr %_9, i64 4
  %17 = load i32, ptr %16, align 4
  %_11 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_11 to i1
  br i1 %18, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %19 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %19, align 4
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_18.0 = extractvalue { i32, i1 } %20, 0
  %_18.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_18.1, label %panic3, label %bb9

bb8:                                              ; preds = %bb5
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_43.0 = extractvalue { i32, i1 } %21, 0
  %_43.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_43.1, label %panic, label %bb17

bb17:                                             ; preds = %bb8
  %_41 = sext i32 %_43.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_39 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E"(ptr align 8 %a, i64 %_41, ptr align 8 @alloc_e669bf91d659b90e1c89102d6c888526)
          to label %bb18 unwind label %cleanup1

panic:                                            ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5a9412ba20f0677368bcf215501b0f48) #24
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb18:                                             ; preds = %bb17
  %_38 = load float, ptr %_39, align 4
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_49.0 = extractvalue { i32, i1 } %22, 0
  %_49.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_49.1, label %panic2, label %bb19

bb19:                                             ; preds = %bb18
  %_47 = sext i32 %_49.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E"(ptr align 8 %b, i64 %_47, ptr align 8 @alloc_4833d9647f1dc7e3b841fab7c906a697)
          to label %bb20 unwind label %cleanup1

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_87e0c6be6652dd6501de485c00e53a98) #24
          to label %unreachable unwind label %cleanup1

bb20:                                             ; preds = %bb19
  %_44 = load float, ptr %_45, align 4
  %_37 = fadd float %_38, %_44
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_37)
; invoke core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hd5cb1be6c04b27bbE"(ptr align 8 %b)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
; call core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hd5cb1be6c04b27bbE"(ptr align 8 %a)
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %_16 = sext i32 %_18.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_14 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E"(ptr align 8 %a, i64 %_16, ptr align 8 @alloc_fc9cf361435cb030825afada3bc7b44d)
          to label %bb10 unwind label %cleanup1

panic3:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5082489670429d332cfa85927696d34e) #24
          to label %unreachable unwind label %cleanup1

bb10:                                             ; preds = %bb9
  %_13 = load float, ptr %_14, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_24.0 = extractvalue { i32, i1 } %23, 0
  %_24.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_24.1, label %panic4, label %bb11

bb11:                                             ; preds = %bb10
  %_22 = sext i32 %_24.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E"(ptr align 8 %b, i64 %_22, ptr align 8 @alloc_a7e7a0ea0b4ba7eb3dfac0378beed50a)
          to label %bb12 unwind label %cleanup1

panic4:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_585c5db6dc47d973d44e12dd65751cc5) #24
          to label %unreachable unwind label %cleanup1

bb12:                                             ; preds = %bb11
  %_19 = load float, ptr %_20, align 4
  %_27 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_25 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE"(ptr align 8 %a, i64 %_27, ptr align 8 @alloc_c602af42b4d6f06c5be6f6e8b9027080)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  %24 = fadd float %_13, %_19
  store float %24, ptr %_25, align 4
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_33.0 = extractvalue { i32, i1 } %25, 0
  %_33.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_33.1, label %panic5, label %bb14

bb14:                                             ; preds = %bb13
  %_31 = sext i32 %_33.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E"(ptr align 8 %a, i64 %_31, ptr align 8 @alloc_f21cd53b97cfbcae6106ecb1387e024b)
          to label %bb15 unwind label %cleanup1

panic5:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_70af901e548bf8f7eec8131e98813a6b) #24
          to label %unreachable unwind label %cleanup1

bb15:                                             ; preds = %bb14
  %_28 = load float, ptr %_29, align 4
  %_36 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_34 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE"(ptr align 8 %b, i64 %_36, ptr align 8 @alloc_37a4b4d7df8cc5a8a53e17cae4838714)
          to label %bb16 unwind label %cleanup1

bb16:                                             ; preds = %bb15
  store float %_28, ptr %_34, align 4
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb24, %bb23
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb25:                                             ; preds = %bb24
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = insertvalue { ptr, i32 } poison, ptr %27, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %29, 1
  resume { ptr, i32 } %31
}
