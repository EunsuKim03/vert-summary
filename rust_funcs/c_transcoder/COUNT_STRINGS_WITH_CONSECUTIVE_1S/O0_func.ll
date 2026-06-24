define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %b = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  %_3 = sext i32 %n to i64
; call alloc::vec::Vec<T>::with_capacity
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E"(ptr sret([24 x i8]) align 8 %a, i64 %_3) #20
  %_5 = sext i32 %n to i64
; invoke alloc::vec::Vec<T>::with_capacity
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E"(ptr sret([24 x i8]) align 8 %b, i64 %_5)
          to label %bb2 unwind label %cleanup

bb29:                                             ; preds = %bb28, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h07d6c17debd4df80E"(ptr align 8 %a) #21
          to label %bb30 unwind label %terminate

cleanup:                                          ; preds = %bb25, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb29

bb2:                                              ; preds = %start
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E"(ptr align 8 %a, i32 1)
          to label %bb3 unwind label %cleanup1

bb28:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h07d6c17debd4df80E"(ptr align 8 %b) #21
          to label %bb29 unwind label %terminate

cleanup1:                                         ; preds = %bb18, %bb17, %panic9, %bb15, %panic8, %bb13, %panic7, %bb11, %panic6, %panic5, %bb23, %panic4, %panic3, %bb20, %panic2, %panic, %bb6, %bb4, %bb3, %bb2
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb28

bb3:                                              ; preds = %bb2
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E"(ptr align 8 %b, i32 1)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %9 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb0a64f01803d697dE"(i32 1, i32 %n)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  %_10.0 = extractvalue { i32, i32 } %9, 0
  %_10.1 = extractvalue { i32, i32 } %9, 1
  store i32 %_10.0, ptr %iter, align 4
  %10 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_10.1, ptr %10, align 4
  br label %bb6

bb6:                                              ; preds = %bb31, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha7f051deb67d601dE"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_13, align 4
  %14 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_13, align 4
  %16 = getelementptr inbounds i8, ptr %_13, i64 4
  %17 = load i32, ptr %16, align 4
  %_15 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_15 to i1
  br i1 %18, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %19 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %19, align 4
  %_24 = sext i32 %i to i64
  %_25.0 = sub i64 %_24, 1
  %_25.1 = icmp ult i64 %_24, 1
  br i1 %_25.1, label %panic6, label %bb11

bb10:                                             ; preds = %bb7
  %_44 = icmp ult i32 %n, 32
  br i1 %_44, label %bb19, label %panic

bb19:                                             ; preds = %bb10
  %20 = and i32 %n, 31
  %_42 = shl i32 1, %20
  %_49 = sext i32 %n to i64
  %_50.0 = sub i64 %_49, 1
  %_50.1 = icmp ult i64 %_49, 1
  br i1 %_50.1, label %panic2, label %bb20

panic:                                            ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_shl_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_716649753e039a6246540e94f55c36d4) #23
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E"(ptr align 8 %a, i64 %_50.0, ptr align 8 @alloc_8da7ed78b47668010ac132c295ad368f)
          to label %bb21 unwind label %cleanup1

panic2:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_88210fc5114b3102d7a44575bf3e3091) #23
          to label %unreachable unwind label %cleanup1

bb21:                                             ; preds = %bb20
  %_45 = load i32, ptr %_46, align 4
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_42, i32 %_45)
  %_51.0 = extractvalue { i32, i1 } %21, 0
  %_51.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_51.1, label %panic3, label %bb22

bb22:                                             ; preds = %bb21
  %_56 = sext i32 %n to i64
  %_57.0 = sub i64 %_56, 1
  %_57.1 = icmp ult i64 %_56, 1
  br i1 %_57.1, label %panic4, label %bb23

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_716649753e039a6246540e94f55c36d4) #23
          to label %unreachable unwind label %cleanup1

bb23:                                             ; preds = %bb22
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_53 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E"(ptr align 8 %b, i64 %_57.0, ptr align 8 @alloc_af8779130104ef431c52fdc6ad763c28)
          to label %bb24 unwind label %cleanup1

panic4:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8fedf2f91a8a4c373c3f54afdd226527) #23
          to label %unreachable unwind label %cleanup1

bb24:                                             ; preds = %bb23
  %_52 = load i32, ptr %_53, align 4
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_51.0, i32 %_52)
  %_58.0 = extractvalue { i32, i1 } %22, 0
  %_58.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_58.1, label %panic5, label %bb25

bb25:                                             ; preds = %bb24
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h07d6c17debd4df80E"(ptr align 8 %b)
          to label %bb26 unwind label %cleanup

panic5:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_716649753e039a6246540e94f55c36d4) #23
          to label %unreachable unwind label %cleanup1

bb26:                                             ; preds = %bb25
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h07d6c17debd4df80E"(ptr align 8 %a)
  ret i32 %_58.0

bb11:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_21 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E"(ptr align 8 %a, i64 %_25.0, ptr align 8 @alloc_dfee6f6e8b405d26a17ddd473edd47ac)
          to label %bb12 unwind label %cleanup1

panic6:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8ce57fee660252299bb4745b24d0a11c) #23
          to label %unreachable unwind label %cleanup1

bb12:                                             ; preds = %bb11
  %_20 = load i32, ptr %_21, align 4
  %_30 = sext i32 %i to i64
  %_31.0 = sub i64 %_30, 1
  %_31.1 = icmp ult i64 %_30, 1
  br i1 %_31.1, label %panic7, label %bb13

bb13:                                             ; preds = %bb12
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E"(ptr align 8 %b, i64 %_31.0, ptr align 8 @alloc_38b0b17ba1f3330981922b59f2c97714)
          to label %bb14 unwind label %cleanup1

panic7:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_61a9e376c01e528a5eb3d513dc4f0e2b) #23
          to label %unreachable unwind label %cleanup1

bb14:                                             ; preds = %bb13
  %_26 = load i32, ptr %_27, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_20, i32 %_26)
  %_32.0 = extractvalue { i32, i1 } %23, 0
  %_32.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_32.1, label %panic8, label %bb15

bb15:                                             ; preds = %bb14
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E"(ptr align 8 %a, i32 %_32.0)
          to label %bb16 unwind label %cleanup1

panic8:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f59942c37b4e86d8f0d35426c50ffa00) #23
          to label %unreachable unwind label %cleanup1

bb16:                                             ; preds = %bb15
  %_39 = sext i32 %i to i64
  %_40.0 = sub i64 %_39, 1
  %_40.1 = icmp ult i64 %_39, 1
  br i1 %_40.1, label %panic9, label %bb17

bb17:                                             ; preds = %bb16
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E"(ptr align 8 %a, i64 %_40.0, ptr align 8 @alloc_19d423c5f455a2a32b72c302d84dfa49)
          to label %bb18 unwind label %cleanup1

panic9:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a88e614088090136887b5390cf1ddd4b) #23
          to label %unreachable unwind label %cleanup1

bb18:                                             ; preds = %bb17
  %_35 = load i32, ptr %_36, align 4
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E"(ptr align 8 %b, i32 %_35)
          to label %bb31 unwind label %cleanup1

bb31:                                             ; preds = %bb18
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb29, %bb28
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb30:                                             ; preds = %bb29
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = insertvalue { ptr, i32 } poison, ptr %25, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}
