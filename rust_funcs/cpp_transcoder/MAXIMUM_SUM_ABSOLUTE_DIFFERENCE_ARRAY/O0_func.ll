define i32 @f_gold(ptr align 4 %a.0, i64 %a.1, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_42 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %maximum_sum = alloca [4 x i8], align 4
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %final_sequence = alloca [24 x i8], align 8
; call alloc::vec::Vec<T>::new
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hdd3fd18733a1546fE"(ptr sret([24 x i8]) align 8 %final_sequence) #21
; invoke alloc::slice::<impl [T]>::sort
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha9b21fd1c0c7734eE"(ptr align 4 %a.0, i64 %a.1)
          to label %bb2 unwind label %cleanup

bb35:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbf6b57196d66dc0bE"(ptr align 8 %final_sequence) #22
          to label %bb36 unwind label %terminate

cleanup:                                          ; preds = %bb15, %panic13, %panic12, %panic11, %bb11, %panic10, %panic8, %bb25, %panic7, %bb23, %panic6, %bb20, %panic5, %bb31, %panic4, %bb29, %bb28, %panic3, %bb18, %bb16, %panic2, %bb6, %bb4, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb35

bb2:                                              ; preds = %start
  br label %bb3

bb3:                                              ; preds = %bb2
  %_10 = icmp eq i32 %n, -2147483648
  %_11 = and i1 false, %_10
  br i1 %_11, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  %_7 = sdiv i32 %n, 2
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb2ac183d7a4230bcE"(i32 0, i32 %_7)
          to label %bb5 unwind label %cleanup

panic:                                            ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_28b420f557abe6d10f9e6cdc567b22a5) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic13, %panic12, %panic11, %panic10, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb5:                                              ; preds = %bb4
  %_5.0 = extractvalue { i32, i32 } %5, 0
  %_5.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_5.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %6, align 4
  br label %bb6

bb6:                                              ; preds = %bb37, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h728920f4116560e2E"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_13, align 4
  %10 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_13, align 4
  %12 = getelementptr inbounds i8, ptr %_13, i64 4
  %13 = load i32, ptr %12, align 4
  %_15 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_15 to i1
  br i1 %14, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %15 = getelementptr inbounds i8, ptr %_13, i64 4
  %i9 = load i32, ptr %15, align 4
  %_20 = sext i32 %i9 to i64
  %_23 = icmp ult i64 %_20, %a.1
  br i1 %_23, label %bb11, label %panic10

bb10:                                             ; preds = %bb7
  store i32 0, ptr %maximum_sum, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_40.0 = extractvalue { i32, i1 } %16, 0
  %_40.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_40.1, label %panic2, label %bb16

bb16:                                             ; preds = %bb10
  %_38 = sext i32 %_40.0 to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h88a0a7d56d4afaaaE"(i64 0, i64 %_38)
          to label %bb17 unwind label %cleanup

panic2:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_66cecfb383d0ee919be35fe5d2851582) #23
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_36.0 = extractvalue { i64, i64 } %17, 0
  %_36.1 = extractvalue { i64, i64 } %17, 1
  store i64 %_36.0, ptr %iter1, align 8
  %18 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_36.1, ptr %18, align 8
  br label %bb18

bb18:                                             ; preds = %bb27, %bb17
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %19 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf3c49ff11fdf3e25E"(ptr align 8 %iter1)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  store i64 %20, ptr %_42, align 8
  %22 = getelementptr inbounds i8, ptr %_42, i64 8
  store i64 %21, ptr %22, align 8
  %_44 = load i64, ptr %_42, align 8
  %23 = getelementptr inbounds i8, ptr %_42, i64 8
  %24 = load i64, ptr %23, align 8
  %25 = trunc nuw i64 %_44 to i1
  br i1 %25, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %26 = getelementptr inbounds i8, ptr %_42, i64 8
  %i = load i64, ptr %26, align 8
  %_46 = load i32, ptr %maximum_sum, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE"(ptr align 8 %final_sequence, i64 %i, ptr align 8 @alloc_266bd23a1387e20541653db12889ae4a)
          to label %bb22 unwind label %cleanup

bb21:                                             ; preds = %bb19
  %_59 = load i32, ptr %maximum_sum, align 4
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_67.0 = extractvalue { i32, i1 } %27, 0
  %_67.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_67.1, label %panic3, label %bb28

bb28:                                             ; preds = %bb21
  %_65 = sext i32 %_67.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE"(ptr align 8 %final_sequence, i64 %_65, ptr align 8 @alloc_62ab56ba51a7eee5b63ca60b5c4609cd)
          to label %bb29 unwind label %cleanup

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_26f6443b8d0a333abed7eb16cde9e8bc) #23
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_62 = load i32, ptr %_63, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_69 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE"(ptr align 8 %final_sequence, i64 0, ptr align 8 @alloc_a4a45489071e1b9c65f7d79b6f922543)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_68 = load i32, ptr %_69, align 4
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_62, i32 %_68)
  %_71.0 = extractvalue { i32, i1 } %28, 0
  %_71.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_71.1, label %panic4, label %bb31

bb31:                                             ; preds = %bb30
; invoke core::num::<impl i32>::abs
  %_60 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17hdba6950e1d2376b9E"(i32 %_71.0)
          to label %bb32 unwind label %cleanup

panic4:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_34e49bfaeb8008effe245124a88da8f4) #23
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_59, i32 %_60)
  %_72.0 = extractvalue { i32, i1 } %29, 0
  %_72.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_72.1, label %panic5, label %bb33

bb33:                                             ; preds = %bb32
  store i32 %_72.0, ptr %maximum_sum, align 4
  %_0 = load i32, ptr %maximum_sum, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbf6b57196d66dc0bE"(ptr align 8 %final_sequence)
  ret i32 %_0

panic5:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_21a940a0018594bffc3bcafa3cc26d51) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb20
  %_49 = load i32, ptr %_50, align 4
  %_56.0 = add i64 %i, 1
  %_56.1 = icmp ult i64 %_56.0, %i
  br i1 %_56.1, label %panic6, label %bb23

bb23:                                             ; preds = %bb22
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_53 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE"(ptr align 8 %final_sequence, i64 %_56.0, ptr align 8 @alloc_8d65dd8dce2671cc8ce691df9c1904a7)
          to label %bb24 unwind label %cleanup

panic6:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_159b48e05807de2f727cbc07ec7eb021) #23
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_52 = load i32, ptr %_53, align 4
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_49, i32 %_52)
  %_57.0 = extractvalue { i32, i1 } %30, 0
  %_57.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_57.1, label %panic7, label %bb25

bb25:                                             ; preds = %bb24
; invoke core::num::<impl i32>::abs
  %_47 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17hdba6950e1d2376b9E"(i32 %_57.0)
          to label %bb26 unwind label %cleanup

panic7:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_39a70f29e99567a7d08168c169234cb9) #23
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_46, i32 %_47)
  %_58.0 = extractvalue { i32, i1 } %31, 0
  %_58.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_58.1, label %panic8, label %bb27

bb27:                                             ; preds = %bb26
  store i32 %_58.0, ptr %maximum_sum, align 4
  br label %bb18

panic8:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_985a25492d6dbeb5ae2564f96b0fea6a) #23
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb9
  %32 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_20
  %_19 = load i32, ptr %32, align 4
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E"(ptr align 8 %final_sequence, i32 %_19)
          to label %bb12 unwind label %cleanup

panic10:                                          ; preds = %bb9
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 %a.1, ptr align 8 @alloc_b00172e95c940ccb1ed768019527c186) #23
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb11
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %i9)
  %_30.0 = extractvalue { i32, i1 } %33, 0
  %_30.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_30.1, label %panic11, label %bb13

bb13:                                             ; preds = %bb12
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_30.0, i32 1)
  %_31.0 = extractvalue { i32, i1 } %34, 0
  %_31.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_31.1, label %panic12, label %bb14

panic11:                                          ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9e6d2790d861e00a38b7d9f839840d9c) #23
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_27 = sext i32 %_31.0 to i64
  %_34 = icmp ult i64 %_27, %a.1
  br i1 %_34, label %bb15, label %panic13

panic12:                                          ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1ba874261ea07b9bec4256d514b4141c) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %35 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_27
  %_26 = load i32, ptr %35, align 4
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E"(ptr align 8 %final_sequence, i32 %_26)
          to label %bb37 unwind label %cleanup

panic13:                                          ; preds = %bb14
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 %a.1, ptr align 8 @alloc_21a1721c82ced171f22487ef50df60e1) #23
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %bb15
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb35
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb36:                                             ; preds = %bb35
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds i8, ptr %0, i64 8
  %39 = load i32, ptr %38, align 8
  %40 = insertvalue { ptr, i32 } poison, ptr %37, 0
  %41 = insertvalue { ptr, i32 } %40, i32 %39, 1
  resume { ptr, i32 } %41
}
