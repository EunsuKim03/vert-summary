define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_50 = alloca [1 x i8], align 1
  %_39 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_32 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_27 = alloca [24 x i8], align 8
  %_16 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %row = alloca [24 x i8], align 8
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %arr = alloca [24 x i8], align 8
  store i8 0, ptr %_50, align 1
  %_3 = sext i32 %n to i64
; call alloc::vec::Vec<T>::with_capacity
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h00cd39243342c357E"(ptr sret([24 x i8]) align 8 %arr, i64 %_3) #21
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb2dd37492d04361cE"(i32 0, i32 %n)
          to label %bb2 unwind label %cleanup

bb30:                                             ; preds = %bb32, %bb33, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr align 8 %arr) #22
          to label %bb31 unwind label %terminate

cleanup:                                          ; preds = %bb6, %panic, %bb26, %bb25, %bb23, %bb20, %bb18, %bb7, %bb3, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb30

bb2:                                              ; preds = %start
  %_4.0 = extractvalue { i32, i32 } %1, 0
  %_4.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_4.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %6, align 4
  br label %bb3

bb3:                                              ; preds = %bb16, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h31ef4b801e3e0dbdE"(ptr align 4 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_7, align 4
  %10 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_7, align 4
  %12 = getelementptr inbounds i8, ptr %_7, i64 4
  %13 = load i32, ptr %12, align 4
  %_9 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_9 to i1
  br i1 %14, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %15 = getelementptr inbounds i8, ptr %_7, i64 4
  %i4 = load i32, ptr %15, align 4
  %_12 = sext i32 %n to i64
; invoke alloc::vec::Vec<T>::with_capacity
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h45bbd9b72210f2c5E"(ptr sret([24 x i8]) align 8 %row, i64 %_12)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  store i32 0, ptr %sum, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb2dd37492d04361cE"(i32 0, i32 %n)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb7
  %_29.0 = extractvalue { i32, i32 } %16, 0
  %_29.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_29.0, ptr %iter2, align 4
  %17 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_29.1, ptr %17, align 4
  br label %bb18

bb18:                                             ; preds = %bb24, %bb17
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h31ef4b801e3e0dbdE"(ptr align 4 %iter2)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_32, align 4
  %21 = getelementptr inbounds i8, ptr %_32, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_32, align 4
  %23 = getelementptr inbounds i8, ptr %_32, i64 4
  %24 = load i32, ptr %23, align 4
  %_34 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_34 to i1
  br i1 %25, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %26 = getelementptr inbounds i8, ptr %_32, i64 4
  %i = load i32, ptr %26, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %27 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb2dd37492d04361cE"(i32 0, i32 %n)
          to label %bb22 unwind label %cleanup

bb21:                                             ; preds = %bb19
  %_0 = load i32, ptr %sum, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr align 8 %arr)
  ret i32 %_0

bb22:                                             ; preds = %bb20
  %_36.0 = extractvalue { i32, i32 } %27, 0
  %_36.1 = extractvalue { i32, i32 } %27, 1
  store i32 %_36.0, ptr %iter3, align 4
  %28 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_36.1, ptr %28, align 4
  br label %bb23

bb23:                                             ; preds = %bb28, %bb22
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h31ef4b801e3e0dbdE"(ptr align 4 %iter3)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_39, align 4
  %32 = getelementptr inbounds i8, ptr %_39, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_39, align 4
  %34 = getelementptr inbounds i8, ptr %_39, i64 4
  %35 = load i32, ptr %34, align 4
  %_41 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_41 to i1
  br i1 %36, label %bb25, label %bb18

bb25:                                             ; preds = %bb24
  %37 = getelementptr inbounds i8, ptr %_39, i64 4
  %j = load i32, ptr %37, align 4
  %_47 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc429ef8a9100c092E"(ptr align 8 %arr, i64 %_47, ptr align 8 @alloc_f53795b692da2a7ae349a135c9914431)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_48 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E"(ptr align 8 %_45, i64 %_48, ptr align 8 @alloc_cc79363378052d3c2573ff697b4cc814)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_43 = load i32, ptr %_44, align 4
  %38 = load i32, ptr %sum, align 4
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %_43)
  %_49.0 = extractvalue { i32, i1 } %39, 0
  %_49.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_49.1, label %panic, label %bb28

bb28:                                             ; preds = %bb27
  store i32 %_49.0, ptr %sum, align 4
  br label %bb23

panic:                                            ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0e1ad1e200b8c7ebbbb063c9d8f609d7) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic
  unreachable

bb8:                                              ; preds = %bb6
  store i8 1, ptr %_50, align 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %40 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb2dd37492d04361cE"(i32 0, i32 %n)
          to label %bb9 unwind label %cleanup5

bb33:                                             ; preds = %cleanup5
  %41 = load i8, ptr %_50, align 1
  %42 = trunc nuw i8 %41 to i1
  br i1 %42, label %bb32, label %bb30

cleanup5:                                         ; preds = %bb15, %bb14, %panic7, %bb13, %bb10, %bb8
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = extractvalue { ptr, i32 } %43, 0
  %45 = extractvalue { ptr, i32 } %43, 1
  store ptr %44, ptr %0, align 8
  %46 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %45, ptr %46, align 8
  br label %bb33

bb9:                                              ; preds = %bb8
  %_13.0 = extractvalue { i32, i32 } %40, 0
  %_13.1 = extractvalue { i32, i32 } %40, 1
  store i32 %_13.0, ptr %iter1, align 4
  %47 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_13.1, ptr %47, align 4
  br label %bb10

bb10:                                             ; preds = %bb34, %bb9
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %48 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h31ef4b801e3e0dbdE"(ptr align 4 %iter1)
          to label %bb11 unwind label %cleanup5

bb11:                                             ; preds = %bb10
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = extractvalue { i32, i32 } %48, 1
  store i32 %49, ptr %_16, align 4
  %51 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %_16, align 4
  %53 = getelementptr inbounds i8, ptr %_16, i64 4
  %54 = load i32, ptr %53, align 4
  %_18 = zext i32 %52 to i64
  %55 = trunc nuw i64 %_18 to i1
  br i1 %55, label %bb12, label %bb13

bb12:                                             ; preds = %bb11
  %56 = getelementptr inbounds i8, ptr %_16, i64 4
  %j6 = load i32, ptr %56, align 4
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i4, i32 %j6)
  %_24.0 = extractvalue { i32, i1 } %57, 0
  %_24.1 = extractvalue { i32, i1 } %57, 1
  br i1 %_24.1, label %panic7, label %bb14

bb13:                                             ; preds = %bb11
  store i8 0, ptr %_50, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_27, ptr align 8 %row, i64 24, i1 false)
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he9145d80749cad8dE"(ptr align 8 %arr, ptr align 8 %_27)
          to label %bb16 unwind label %cleanup5

bb16:                                             ; preds = %bb13
  store i8 0, ptr %_50, align 1
  br label %bb3

bb14:                                             ; preds = %bb12
; invoke core::num::<impl i32>::abs
  %_22 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17he60ae89787fa71dfE"(i32 %_24.0)
          to label %bb15 unwind label %cleanup5

panic7:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2a898c45fbcf83306d7a160393a7d7eb) #23
          to label %unreachable unwind label %cleanup5

bb15:                                             ; preds = %bb14
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h370f223b42914e71E"(ptr align 8 %row, i32 %_22)
          to label %bb34 unwind label %cleanup5

bb34:                                             ; preds = %bb15
  br label %bb10

bb32:                                             ; preds = %bb33
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E"(ptr align 8 %row) #22
          to label %bb30 unwind label %terminate

terminate:                                        ; preds = %bb30, %bb32
  %58 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb5:                                              ; No predecessors!
  unreachable

bb31:                                             ; preds = %bb30
  %59 = load ptr, ptr %0, align 8
  %60 = getelementptr inbounds i8, ptr %0, i64 8
  %61 = load i32, ptr %60, align 8
  %62 = insertvalue { ptr, i32 } poison, ptr %59, 0
  %63 = insertvalue { ptr, i32 } %62, i32 %61, 1
  resume { ptr, i32 } %63
}
