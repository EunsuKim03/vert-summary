define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %_16 = alloca [4 x i8], align 4
  %_11 = alloca [16 x i8], align 8
  %_9 = alloca [4 x i8], align 4
  %j = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %l = invoke i64 @_ZN5alloc6string6String3len17h73be2dfde9b91503E(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb17:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf1aa63a2419c5b8cE"(ptr align 8 %s) #21
          to label %bb18 unwind label %terminate

cleanup:                                          ; preds = %panic2, %panic1, %bb9, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb17

bb1:                                              ; preds = %start
  store i64 0, ptr %i, align 8
  %_6.0 = sub i64 %l, 1
  %_6.1 = icmp ult i64 %l, 1
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  store i64 %_6.0, ptr %j, align 8
  br label %bb3

panic:                                            ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_344066d526a542d1c097b4c630711dff) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic1, %panic
  unreachable

bb3:                                              ; preds = %bb14, %bb2
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aea4f30082d9024E"(ptr align 8 %s)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_12.0 = extractvalue { ptr, i64 } %5, 0
  %_12.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hadef8d667f02cad7E"(ptr align 1 %_12.0, i64 %_12.1)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  store ptr %7, ptr %_11, align 8
  %9 = getelementptr inbounds i8, ptr %_11, i64 8
  store ptr %8, ptr %9, align 8
  %_14 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %10 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h736da4aa94a4b97aE(ptr align 8 %_11, i64 %_14)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i32 %10, ptr %_9, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %11 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aea4f30082d9024E"(ptr align 8 %s)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %_19.0 = extractvalue { ptr, i64 } %11, 0
  %_19.1 = extractvalue { ptr, i64 } %11, 1
; invoke core::str::<impl str>::chars
  %12 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hadef8d667f02cad7E"(ptr align 1 %_19.0, i64 %_19.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %13 = extractvalue { ptr, ptr } %12, 0
  %14 = extractvalue { ptr, ptr } %12, 1
  store ptr %13, ptr %_18, align 8
  %15 = getelementptr inbounds i8, ptr %_18, i64 8
  store ptr %14, ptr %15, align 8
  %_21 = load i64, ptr %j, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %16 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h736da4aa94a4b97aE(ptr align 8 %_18, i64 %_21)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  store i32 %16, ptr %_16, align 4
; invoke core::cmp::PartialEq::ne
  %_7 = invoke zeroext i1 @_ZN4core3cmp9PartialEq2ne17hce561ee908ee71f5E(ptr align 4 %_9, ptr align 4 %_16)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  br i1 %_7, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %17 = load i64, ptr %i, align 8
  %_22.0 = add i64 %17, 1
  %_22.1 = icmp ult i64 %_22.0, %17
  br i1 %_22.1, label %panic1, label %bb13

bb11:                                             ; preds = %bb10
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf1aa63a2419c5b8cE"(ptr align 8 %s)
  br label %bb16

bb13:                                             ; preds = %bb12
  store i64 %_22.0, ptr %i, align 8
  %18 = load i64, ptr %j, align 8
  %_23.0 = sub i64 %18, 1
  %_23.1 = icmp ult i64 %18, 1
  br i1 %_23.1, label %panic2, label %bb14

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1697e076307c7b78cc29e95ad2a9f944) #23
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  store i64 %_23.0, ptr %j, align 8
  %_25 = load i64, ptr %i, align 8
  %_26 = load i64, ptr %j, align 8
  %_24 = icmp ugt i64 %_25, %_26
  br i1 %_24, label %bb15, label %bb3

panic2:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_49c0526b2d5c257bdad5387d0d25ae67) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  store i32 1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf1aa63a2419c5b8cE"(ptr align 8 %s)
  br label %bb16

bb16:                                             ; preds = %bb11, %bb15
  %19 = load i32, ptr %_0, align 4
  ret i32 %19

terminate:                                        ; preds = %bb17
  %20 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb18:                                             ; preds = %bb17
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds i8, ptr %0, i64 8
  %23 = load i32, ptr %22, align 8
  %24 = insertvalue { ptr, i32 } poison, ptr %21, 0
  %25 = insertvalue { ptr, i32 } %24, i32 %23, 1
  resume { ptr, i32 } %25
}
