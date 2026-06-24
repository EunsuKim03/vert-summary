define i32 @f_gold(i32 %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [8 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_28 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_21 = alloca [12 x i8], align 4
  %_20 = alloca [12 x i8], align 4
  %stack = alloca [32 x i8], align 8
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %_3 = alloca [12 x i8], align 4
  %result = alloca [4 x i8], align 4
  store i32 0, ptr %result, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h6e6257a935b75dc6E"(ptr sret([12 x i8]) align 4 %_4, i32 1, i32 9) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h27e60273e45b9a7eE"(ptr sret([12 x i8]) align 4 %_3, ptr align 4 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_3, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb14, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %1 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h283871f2f4e9e122E"(ptr align 4 %iter) #17
  %2 = extractvalue { i32, i32 } %1, 0
  %3 = extractvalue { i32, i32 } %1, 1
  store i32 %2, ptr %_6, align 4
  %4 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %_6, align 4
  %6 = getelementptr inbounds i8, ptr %_6, i64 4
  %7 = load i32, ptr %6, align 4
  %_8 = zext i32 %5 to i64
  %8 = trunc nuw i64 %_8 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %9, align 4
; call alloc::collections::vec_deque::VecDeque<T>::new
  call void @"_ZN5alloc11collections9vec_deque17VecDeque$LT$T$GT$3new17he4169caa7ccbf435E"(ptr sret([32 x i8]) align 8 %stack) #17
  %_11 = icmp sle i32 %i, %n
  br i1 %_11, label %bb9, label %bb12

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb12:                                             ; preds = %bb23, %bb11, %bb6
; invoke alloc::collections::vec_deque::VecDeque<T,A>::is_empty
  %_15 = invoke zeroext i1 @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$8is_empty17h7da11798187b5a4eE"(ptr align 8 %stack)
          to label %bb13 unwind label %cleanup

bb9:                                              ; preds = %bb6
; invoke alloc::collections::vec_deque::VecDeque<T,A>::push_back
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE"(ptr align 8 %stack, i32 %i)
          to label %bb10 unwind label %cleanup

bb30:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::collections::vec_deque::VecDeque<i32>>
  invoke void @"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE"(ptr align 8 %stack) #21
          to label %bb31 unwind label %terminate

cleanup:                                          ; preds = %bb2.i, %panic5, %bb27, %panic4, %panic3, %bb22, %bb20, %bb19, %panic2, %bb15, %bb12, %panic, %bb9
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  store ptr %11, ptr %0, align 8
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %12, ptr %13, align 8
  br label %bb30

bb10:                                             ; preds = %bb9
  %14 = load i32, ptr %result, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 1)
  %_14.0 = extractvalue { i32, i1 } %15, 0
  %_14.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_14.1, label %panic, label %bb11

bb11:                                             ; preds = %bb10
  store i32 %_14.0, ptr %result, align 4
  br label %bb12

panic:                                            ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0ed49f1037c1817f323c7ac8c7c85072) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb13:                                             ; preds = %bb12
  br i1 %_15, label %bb14, label %bb15

bb15:                                             ; preds = %bb13
; invoke alloc::collections::vec_deque::VecDeque<T,A>::pop_back
  %16 = invoke { i32, i32 } @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$8pop_back17h10529d5c540d6bb4E"(ptr align 8 %stack)
          to label %bb16 unwind label %cleanup

bb14:                                             ; preds = %bb13
; call core::ptr::drop_in_place<alloc::collections::vec_deque::VecDeque<i32>>
  call void @"_ZN4core3ptr71drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$i32$GT$$GT$17he1f978817ab19badE"(ptr align 8 %stack)
  br label %bb3

bb16:                                             ; preds = %bb15
  %_18.0 = extractvalue { i32, i32 } %16, 0
  %_18.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_18.0, ptr %self.i, align 4
  %17 = getelementptr inbounds i8, ptr %self.i, i64 4
  store i32 %_18.1, ptr %17, align 4
  %18 = load i32, ptr %self.i, align 4
  %19 = getelementptr inbounds i8, ptr %self.i, i64 4
  %20 = load i32, ptr %19, align 4
  %_2.i = zext i32 %18 to i64
  %21 = trunc nuw i64 %_2.i to i1
  br i1 %21, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbc645f93f4230a47E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb16
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_e9b10bfd665c4dbb9d8760c6890d1a83) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hbc645f93f4230a47E.exit": ; preds = %bb16
  %22 = getelementptr inbounds i8, ptr %self.i, i64 4
  %val.i = load i32, ptr %22, align 4
  br label %bb17

bb17:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbc645f93f4230a47E.exit"
  br label %bb18

bb18:                                             ; preds = %bb17
  %_25 = icmp eq i32 %val.i, -2147483648
  %_26 = and i1 false, %_25
  br i1 %_26, label %panic2, label %bb19

bb19:                                             ; preds = %bb18
  %_22 = srem i32 %val.i, 10
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h6e6257a935b75dc6E"(ptr sret([12 x i8]) align 4 %_21, i32 %_22, i32 9)
          to label %bb20 unwind label %cleanup

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_9fe6970a1a7e4520f0f028feb86983e9) #23
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h27e60273e45b9a7eE"(ptr sret([12 x i8]) align 4 %_20, ptr align 4 %_21)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_20, i64 12, i1 false)
  br label %bb22

bb22:                                             ; preds = %bb29, %bb26, %bb21
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %23 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h283871f2f4e9e122E"(ptr align 4 %iter1)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = extractvalue { i32, i32 } %23, 1
  store i32 %24, ptr %_28, align 4
  %26 = getelementptr inbounds i8, ptr %_28, i64 4
  store i32 %25, ptr %26, align 4
  %27 = load i32, ptr %_28, align 4
  %28 = getelementptr inbounds i8, ptr %_28, i64 4
  %29 = load i32, ptr %28, align 4
  %_30 = zext i32 %27 to i64
  %30 = trunc nuw i64 %_30 to i1
  br i1 %30, label %bb24, label %bb12

bb24:                                             ; preds = %bb23
  %31 = getelementptr inbounds i8, ptr %_28, i64 4
  %j = load i32, ptr %31, align 4
  %32 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %val.i, i32 10)
  %_34.0 = extractvalue { i32, i1 } %32, 0
  %_34.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_34.1, label %panic3, label %bb25

bb25:                                             ; preds = %bb24
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_34.0, i32 %j)
  %_35.0 = extractvalue { i32, i1 } %33, 0
  %_35.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_35.1, label %panic4, label %bb26

panic3:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3a75530f8e1efa3776e9b05e1e2a7cac) #23
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_36 = icmp sle i32 %_35.0, %n
  br i1 %_36, label %bb27, label %bb22

panic4:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3a75530f8e1efa3776e9b05e1e2a7cac) #23
          to label %unreachable unwind label %cleanup

bb27:                                             ; preds = %bb26
; invoke alloc::collections::vec_deque::VecDeque<T,A>::push_back
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE"(ptr align 8 %stack, i32 %_35.0)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %34 = load i32, ptr %result, align 4
  %35 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1)
  %_39.0 = extractvalue { i32, i1 } %35, 0
  %_39.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_39.1, label %panic5, label %bb29

bb29:                                             ; preds = %bb28
  store i32 %_39.0, ptr %result, align 4
  br label %bb22

panic5:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_12b762344ad562f3cb76883a6905a650) #23
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb30
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb31:                                             ; preds = %bb30
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds i8, ptr %0, i64 8
  %39 = load i32, ptr %38, align 8
  %40 = insertvalue { ptr, i32 } poison, ptr %37, 0
  %41 = insertvalue { ptr, i32 } %40, i32 %39, 1
  resume { ptr, i32 } %41

bb5:                                              ; No predecessors!
  unreachable
}
