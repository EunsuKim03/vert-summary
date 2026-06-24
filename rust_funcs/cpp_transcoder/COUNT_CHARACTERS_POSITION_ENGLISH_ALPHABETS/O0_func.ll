define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  store i32 0, ptr %result, align 4
; invoke alloc::string::String::len
  %_5 = invoke i64 @_ZN5alloc6string6String3len17h6ea8d6d290c592e2E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb18:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61ac49c6e4f6f7beE"(ptr align 8 %str) #21
          to label %bb19 unwind label %terminate

cleanup:                                          ; preds = %panic4, %panic3, %panic2, %bb11, %panic1, %panic, %bb6, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb18

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfe70bc5dfacf0ea0E"(i64 0, i64 %_5)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_3.0 = extractvalue { i64, i64 } %5, 0
  %_3.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_3.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_3.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb16, %bb14, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h12caf098210a7cd6E"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_8, align 8
  %10 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %9, ptr %10, align 8
  %_10 = load i64, ptr %_8, align 8
  %11 = getelementptr inbounds i8, ptr %_8, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_10 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_8, i64 8
  %i = load i64, ptr %14, align 8
; invoke alloc::string::String::as_bytes
  %15 = invoke { ptr, i64 } @_ZN5alloc6string6String8as_bytes17h079c20b629cfe4daE(ptr align 8 %str)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  %_0 = load i32, ptr %result, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61ac49c6e4f6f7beE"(ptr align 8 %str)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_16.0 = extractvalue { ptr, i64 } %15, 0
  %_16.1 = extractvalue { ptr, i64 } %15, 1
  %_19 = icmp ult i64 %i, %_16.1
  br i1 %_19, label %bb9, label %panic

bb9:                                              ; preds = %bb8
  %16 = getelementptr inbounds nuw i8, ptr %_16.0, i64 %i
  %_15 = load i8, ptr %16, align 1
  %_20.0 = sub i8 %_15, 97
  %_20.1 = icmp ult i8 %_15, 97
  br i1 %_20.1, label %panic1, label %bb10

panic:                                            ; preds = %bb8
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %_16.1, ptr align 8 @alloc_82a05eb68405060ebd76eb23ee1f2cca) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb10:                                             ; preds = %bb9
  %_13 = zext i8 %_20.0 to i64
  %_12 = icmp eq i64 %i, %_13
  br i1 %_12, label %bb15, label %bb11

panic1:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ec29009c6dc0fb2b9866e3b294471e51) #23
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb10
; invoke alloc::string::String::as_bytes
  %17 = invoke { ptr, i64 } @_ZN5alloc6string6String8as_bytes17h079c20b629cfe4daE(ptr align 8 %str)
          to label %bb12 unwind label %cleanup

bb15:                                             ; preds = %bb14, %bb10
  %18 = load i32, ptr %result, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 1)
  %_30.0 = extractvalue { i32, i1 } %19, 0
  %_30.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_30.1, label %panic4, label %bb16

bb12:                                             ; preds = %bb11
  %_25.0 = extractvalue { ptr, i64 } %17, 0
  %_25.1 = extractvalue { ptr, i64 } %17, 1
  %_28 = icmp ult i64 %i, %_25.1
  br i1 %_28, label %bb13, label %panic2

bb13:                                             ; preds = %bb12
  %20 = getelementptr inbounds nuw i8, ptr %_25.0, i64 %i
  %_24 = load i8, ptr %20, align 1
  %_29.0 = sub i8 %_24, 65
  %_29.1 = icmp ult i8 %_24, 65
  br i1 %_29.1, label %panic3, label %bb14

panic2:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %_25.1, ptr align 8 @alloc_5e17542afc6bd03ee930ff5eb5926f09) #23
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_22 = zext i8 %_29.0 to i64
  %_21 = icmp eq i64 %i, %_22
  br i1 %_21, label %bb15, label %bb3

panic3:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e675e863a29e58a2213e35221ce24d6c) #23
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  store i32 %_30.0, ptr %result, align 4
  br label %bb3

panic4:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b8566c95e157fa740880c5d74764f01e) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb18
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb19:                                             ; preds = %bb18
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  %24 = load i32, ptr %23, align 8
  %25 = insertvalue { ptr, i32 } poison, ptr %22, 0
  %26 = insertvalue { ptr, i32 } %25, i32 %24, 1
  resume { ptr, i32 } %26
}
