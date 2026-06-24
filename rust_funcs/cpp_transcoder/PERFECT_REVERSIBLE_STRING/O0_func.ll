define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %_19 = alloca [4 x i8], align 4
  %_14 = alloca [16 x i8], align 8
  %_12 = alloca [4 x i8], align 4
  %j = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i64 0, ptr %i, align 8
; invoke alloc::string::String::len
  %_4 = invoke i64 @_ZN5alloc6string6String3len17h1be86232862de486E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb18:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6f8f80408cbcc046E"(ptr align 8 %str) #21
          to label %bb19 unwind label %terminate

cleanup:                                          ; preds = %panic2, %panic1, %bb10, %bb9, %bb8, %bb7, %bb6, %bb5, %bb4, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb18

bb1:                                              ; preds = %start
  %_6.0 = sub i64 %_4, 1
  %_6.1 = icmp ult i64 %_4, 1
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  store i64 %_6.0, ptr %j, align 8
  br label %bb3

panic:                                            ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d81f6803ee5e35cb5aba0ce5482fa7f7) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic1, %panic
  unreachable

bb3:                                              ; preds = %bb15, %bb2
  %_8 = load i64, ptr %i, align 8
  %_9 = load i64, ptr %j, align 8
  %_7 = icmp ult i64 %_8, %_9
  br i1 %_7, label %bb4, label %bb16

bb16:                                             ; preds = %bb3
  store i32 1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6f8f80408cbcc046E"(ptr align 8 %str)
  br label %bb17

bb4:                                              ; preds = %bb3
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6de960550fd4e290E"(ptr align 8 %str)
          to label %bb5 unwind label %cleanup

bb17:                                             ; preds = %bb12, %bb16
  %6 = load i32, ptr %_0, align 4
  ret i32 %6

bb5:                                              ; preds = %bb4
  %_15.0 = extractvalue { ptr, i64 } %5, 0
  %_15.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %7 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b8487731fb6dc8E"(ptr align 1 %_15.0, i64 %_15.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %8 = extractvalue { ptr, ptr } %7, 0
  %9 = extractvalue { ptr, ptr } %7, 1
  store ptr %8, ptr %_14, align 8
  %10 = getelementptr inbounds i8, ptr %_14, i64 8
  store ptr %9, ptr %10, align 8
  %_17 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %11 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbc85fccd123f6c83E(ptr align 8 %_14, i64 %_17)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  store i32 %11, ptr %_12, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %12 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6de960550fd4e290E"(ptr align 8 %str)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_22.0 = extractvalue { ptr, i64 } %12, 0
  %_22.1 = extractvalue { ptr, i64 } %12, 1
; invoke core::str::<impl str>::chars
  %13 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b8487731fb6dc8E"(ptr align 1 %_22.0, i64 %_22.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %14 = extractvalue { ptr, ptr } %13, 0
  %15 = extractvalue { ptr, ptr } %13, 1
  store ptr %14, ptr %_21, align 8
  %16 = getelementptr inbounds i8, ptr %_21, i64 8
  store ptr %15, ptr %16, align 8
  %_24 = load i64, ptr %j, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %17 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbc85fccd123f6c83E(ptr align 8 %_21, i64 %_24)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %17, ptr %_19, align 4
; invoke core::cmp::PartialEq::ne
  %_10 = invoke zeroext i1 @_ZN4core3cmp9PartialEq2ne17hb51585412cf75a59E(ptr align 4 %_12, ptr align 4 %_19)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  br i1 %_10, label %bb12, label %bb13

bb13:                                             ; preds = %bb11
  %18 = load i64, ptr %i, align 8
  %_25.0 = add i64 %18, 1
  %_25.1 = icmp ult i64 %_25.0, %18
  br i1 %_25.1, label %panic1, label %bb14

bb12:                                             ; preds = %bb11
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6f8f80408cbcc046E"(ptr align 8 %str)
  br label %bb17

bb14:                                             ; preds = %bb13
  store i64 %_25.0, ptr %i, align 8
  %19 = load i64, ptr %j, align 8
  %_26.0 = sub i64 %19, 1
  %_26.1 = icmp ult i64 %19, 1
  br i1 %_26.1, label %panic2, label %bb15

panic1:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_976c06e3a1e06533efd2341a4e37e49f) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  store i64 %_26.0, ptr %j, align 8
  br label %bb3

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_96dcf1c283aa5389b64f20a95ea38d56) #23
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb18
  %20 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb19:                                             ; preds = %bb18
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds i8, ptr %0, i64 8
  %23 = load i32, ptr %22, align 8
  %24 = insertvalue { ptr, i32 } poison, ptr %21, 0
  %25 = insertvalue { ptr, i32 } %24, i32 %23, 1
  resume { ptr, i32 } %25
}
