define i32 @f_gold(ptr align 8 %num, i32 %a) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
; invoke alloc::string::String::len
  %_6 = invoke i64 @_ZN5alloc6string6String3len17h7de2fa89b882cb8cE(ptr align 8 %num)
          to label %bb1 unwind label %cleanup

bb16:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h12497b795d73a8abE"(ptr align 8 %num) #21
          to label %bb17 unwind label %terminate

cleanup:                                          ; preds = %panic5, %panic4, %panic3, %panic2, %panic1, %bb8, %panic, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb16

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h77b59f553863c282E"(i64 0, i64 %_6)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_4.0 = extractvalue { i64, i64 } %5, 0
  %_4.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_4.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb14, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h14930a1f41b8887aE"(ptr align 8 %iter)
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
  %i = load i64, ptr %14, align 8
  %_15 = load i32, ptr %res, align 4
  %15 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15, i32 10)
  %_16.0 = extractvalue { i32, i1 } %15, 0
  %_16.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_16.1, label %panic, label %bb8

bb7:                                              ; preds = %bb4
  %_0 = load i32, ptr %res, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h12497b795d73a8abE"(ptr align 8 %num)
  ret i32 %_0

bb8:                                              ; preds = %bb6
; invoke alloc::string::String::as_bytes
  %16 = invoke { ptr, i64 } @_ZN5alloc6string6String8as_bytes17h4532dc9e6922bf8cE(ptr align 8 %num)
          to label %bb9 unwind label %cleanup

panic:                                            ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_4d0351f8388960210e3e67a903c2939f) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb9:                                              ; preds = %bb8
  %_20.0 = extractvalue { ptr, i64 } %16, 0
  %_20.1 = extractvalue { ptr, i64 } %16, 1
  %_23 = icmp ult i64 %i, %_20.1
  br i1 %_23, label %bb10, label %panic1

bb10:                                             ; preds = %bb9
  %17 = getelementptr inbounds nuw i8, ptr %_20.0, i64 %i
  %_19 = load i8, ptr %17, align 1
  %_24.0 = sub i8 %_19, 48
  %_24.1 = icmp ult i8 %_19, 48
  br i1 %_24.1, label %panic2, label %bb11

panic1:                                           ; preds = %bb9
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %_20.1, ptr align 8 @alloc_77595b95d208412af63cb9c70e1a52e4) #23
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_17 = zext i8 %_24.0 to i32
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_16.0, i32 %_17)
  %_25.0 = extractvalue { i32, i1 } %18, 0
  %_25.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_25.1, label %panic3, label %bb12

panic2:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b6f9a99f00621166297a9adf7158b719) #23
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_26 = icmp eq i32 %a, 0
  br i1 %_26, label %panic4, label %bb13

panic3:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4516dc5e5d406b799b6cf624a2f4ca8f) #23
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_27 = icmp eq i32 %a, -1
  %_28 = icmp eq i32 %_25.0, -2147483648
  %_29 = and i1 %_27, %_28
  br i1 %_29, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_4516dc5e5d406b799b6cf624a2f4ca8f) #23
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %19 = srem i32 %_25.0, %a
  store i32 %19, ptr %res, align 4
  br label %bb3

panic5:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_4516dc5e5d406b799b6cf624a2f4ca8f) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb16
  %20 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb17:                                             ; preds = %bb16
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds i8, ptr %0, i64 8
  %23 = load i32, ptr %22, align 8
  %24 = insertvalue { ptr, i32 } poison, ptr %21, 0
  %25 = insertvalue { ptr, i32 } %24, i32 %23, 1
  resume { ptr, i32 } %25
}
