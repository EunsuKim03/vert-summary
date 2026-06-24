define i32 @f_gold(ptr align 8 %strA, ptr align 8 %strB) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
; invoke alloc::string::String::len
  %_6 = invoke i64 @_ZN5alloc6string6String3len17h8d44421d1e02df6bE(ptr align 8 %strA)
          to label %bb1 unwind label %cleanup

bb20:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E"(ptr align 8 %strB) #21
          to label %bb21 unwind label %terminate

cleanup:                                          ; preds = %panic4, %bb6, %panic, %bb14, %bb12, %bb10, %bb7, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb20

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17haa0d24d2d4610cabE"(i64 0, i64 %_6)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_4.0 = extractvalue { i64, i64 } %5, 0
  %_4.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_4.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb9, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hec4010890937810bE"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_9, align 8
  %10 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %9, ptr %10, align 8
  %_11 = load i64, ptr %_9, align 8
  %11 = getelementptr inbounds i8, ptr %_9, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_11 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_9, i64 8
  %i3 = load i64, ptr %14, align 8
; invoke alloc::string::String::as_bytes
  %15 = invoke { ptr, i64 } @_ZN5alloc6string6String8as_bytes17hdc7fde4b1f68cb82E(ptr align 8 %strA)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
; invoke alloc::string::String::len
  %_21 = invoke i64 @_ZN5alloc6string6String3len17h8d44421d1e02df6bE(ptr align 8 %strB)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb7
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17haa0d24d2d4610cabE"(i64 0, i64 %_21)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_19.0 = extractvalue { i64, i64 } %16, 0
  %_19.1 = extractvalue { i64, i64 } %16, 1
  store i64 %_19.0, ptr %iter1, align 8
  %17 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_19.1, ptr %17, align 8
  br label %bb12

bb12:                                             ; preds = %bb17, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hec4010890937810bE"(ptr align 8 %iter1)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  store i64 %19, ptr %_24, align 8
  %21 = getelementptr inbounds i8, ptr %_24, i64 8
  store i64 %20, ptr %21, align 8
  %_26 = load i64, ptr %_24, align 8
  %22 = getelementptr inbounds i8, ptr %_24, i64 8
  %23 = load i64, ptr %22, align 8
  %24 = trunc nuw i64 %_26 to i1
  br i1 %24, label %bb14, label %bb15

bb14:                                             ; preds = %bb13
  %25 = getelementptr inbounds i8, ptr %_24, i64 8
  %i = load i64, ptr %25, align 8
; invoke alloc::string::String::as_bytes
  %26 = invoke { ptr, i64 } @_ZN5alloc6string6String8as_bytes17hdc7fde4b1f68cb82E(ptr align 8 %strB)
          to label %bb16 unwind label %cleanup

bb15:                                             ; preds = %bb13
  %_35 = load i32, ptr %res, align 4
  %_34 = trunc i32 %_35 to i8
  %_0 = zext i8 %_34 to i32
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E"(ptr align 8 %strB)
          to label %bb18 unwind label %cleanup2

bb21:                                             ; preds = %bb20, %cleanup2
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E"(ptr align 8 %strA) #21
          to label %bb22 unwind label %terminate

cleanup2:                                         ; preds = %bb15
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  store ptr %28, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %29, ptr %30, align 8
  br label %bb21

bb18:                                             ; preds = %bb15
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbcf094549d56de74E"(ptr align 8 %strA)
  ret i32 %_0

bb16:                                             ; preds = %bb14
  %_30.0 = extractvalue { ptr, i64 } %26, 0
  %_30.1 = extractvalue { ptr, i64 } %26, 1
  %_33 = icmp ult i64 %i, %_30.1
  br i1 %_33, label %bb17, label %panic

bb17:                                             ; preds = %bb16
  %31 = getelementptr inbounds nuw i8, ptr %_30.0, i64 %i
  %_29 = load i8, ptr %31, align 1
  %_28 = zext i8 %_29 to i32
  %32 = load i32, ptr %res, align 4
  %33 = xor i32 %32, %_28
  store i32 %33, ptr %res, align 4
  br label %bb12

panic:                                            ; preds = %bb16
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %_30.1, ptr align 8 @alloc_a67a2a1913890dfb61dd31284948bd44) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic
  unreachable

bb8:                                              ; preds = %bb6
  %_15.0 = extractvalue { ptr, i64 } %15, 0
  %_15.1 = extractvalue { ptr, i64 } %15, 1
  %_18 = icmp ult i64 %i3, %_15.1
  br i1 %_18, label %bb9, label %panic4

bb9:                                              ; preds = %bb8
  %34 = getelementptr inbounds nuw i8, ptr %_15.0, i64 %i3
  %_14 = load i8, ptr %34, align 1
  %_13 = zext i8 %_14 to i32
  %35 = load i32, ptr %res, align 4
  %36 = xor i32 %35, %_13
  store i32 %36, ptr %res, align 4
  br label %bb3

panic4:                                           ; preds = %bb8
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 %_15.1, ptr align 8 @alloc_c9e6b97a5ef009c6d608d5e1cebf332b) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb21, %bb20
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb22:                                             ; preds = %bb21
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds i8, ptr %0, i64 8
  %40 = load i32, ptr %39, align 8
  %41 = insertvalue { ptr, i32 } poison, ptr %38, 0
  %42 = insertvalue { ptr, i32 } %41, i32 %40, 1
  resume { ptr, i32 } %42
}
