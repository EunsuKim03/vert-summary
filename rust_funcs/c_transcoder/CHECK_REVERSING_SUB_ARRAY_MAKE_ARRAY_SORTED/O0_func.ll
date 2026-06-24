define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_45 = alloca [1 x i8], align 1
  %back = alloca [8 x i8], align 8
  %front = alloca [8 x i8], align 8
  %temp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::to_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h78ccdfe928fe3ce2E"(ptr sret([24 x i8]) align 8 %temp, ptr align 4 %arr.0, i64 %arr.1) #20
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %1 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h63a55ab367ae56c6E"(ptr align 8 %temp)
          to label %bb2 unwind label %cleanup

bb32:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc4979ccef2812708E"(ptr align 8 %temp) #21
          to label %bb33 unwind label %terminate

cleanup:                                          ; preds = %panic8, %panic7, %bb25, %bb24, %panic6, %panic5, %panic4, %panic3, %panic2, %bb13, %panic1, %panic, %bb5, %bb2, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb32

bb2:                                              ; preds = %start
  %_6.0 = extractvalue { ptr, i64 } %1, 0
  %_6.1 = extractvalue { ptr, i64 } %1, 1
; invoke alloc::slice::<impl [T]>::sort
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h94420bf00e72d9daE"(ptr align 4 %_6.0, i64 %_6.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 0, ptr %front, align 8
  br label %bb4

bb4:                                              ; preds = %bb9, %bb3
  %_10 = load i64, ptr %front, align 8
  %_11 = sext i32 %n to i64
  %_9 = icmp ult i64 %_10, %_11
  br i1 %_9, label %bb5, label %bb10

bb10:                                             ; preds = %bb7, %bb4
  %_24 = sext i32 %n to i64
  %_25.0 = sub i64 %_24, 1
  %_25.1 = icmp ult i64 %_24, 1
  br i1 %_25.1, label %panic1, label %bb11

bb5:                                              ; preds = %bb4
  %_16 = load i64, ptr %front, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_14 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE"(ptr align 8 %temp, i64 %_16, ptr align 8 @alloc_002a255180f84db928a954e882b94c6d)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_13 = load i32, ptr %_14, align 4
  %_18 = load i64, ptr %front, align 8
  %_21 = icmp ult i64 %_18, %arr.1
  br i1 %_21, label %bb7, label %panic

bb7:                                              ; preds = %bb6
  %6 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_18
  %_17 = load i32, ptr %6, align 4
  %_12 = icmp eq i32 %_13, %_17
  br i1 %_12, label %bb8, label %bb10

panic:                                            ; preds = %bb6
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 %arr.1, ptr align 8 @alloc_55a4b443ecc6aa349664b12eafc79a4a) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb8:                                              ; preds = %bb7
  %7 = load i64, ptr %front, align 8
  %_22.0 = add i64 %7, 1
  %_22.1 = icmp ult i64 %_22.0, %7
  br i1 %_22.1, label %panic8, label %bb9

bb11:                                             ; preds = %bb10
  store i64 %_25.0, ptr %back, align 8
  br label %bb12

panic1:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e0b282ac797be5ae20e28ecde2a82037) #23
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb17, %bb11
  %_27 = load i64, ptr %back, align 8
  %_26 = icmp ugt i64 %_27, 0
  br i1 %_26, label %bb13, label %bb18

bb18:                                             ; preds = %bb15, %bb12
  %_40 = load i64, ptr %front, align 8
  %_41 = load i64, ptr %back, align 8
  %_39 = icmp uge i64 %_40, %_41
  br i1 %_39, label %bb19, label %bb20

bb13:                                             ; preds = %bb12
  %_32 = load i64, ptr %back, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_30 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE"(ptr align 8 %temp, i64 %_32, ptr align 8 @alloc_a96896050aa4a0ca4b79276cb4fa5348)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_29 = load i32, ptr %_30, align 4
  %_34 = load i64, ptr %back, align 8
  %_37 = icmp ult i64 %_34, %arr.1
  br i1 %_37, label %bb15, label %panic2

bb15:                                             ; preds = %bb14
  %8 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_34
  %_33 = load i32, ptr %8, align 4
  %_28 = icmp eq i32 %_29, %_33
  br i1 %_28, label %bb16, label %bb18

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_34, i64 %arr.1, ptr align 8 @alloc_0c09e01f4a8673aded7c522f5d09ad96) #23
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %9 = load i64, ptr %back, align 8
  %_38.0 = sub i64 %9, 1
  %_38.1 = icmp ult i64 %9, 1
  br i1 %_38.1, label %panic7, label %bb17

bb20:                                             ; preds = %bb28, %bb18
  %10 = load i64, ptr %front, align 8
  %_42.0 = add i64 %10, 1
  %_42.1 = icmp ult i64 %_42.0, %10
  br i1 %_42.1, label %panic3, label %bb21

bb19:                                             ; preds = %bb18
  store i32 1, ptr %_0, align 4
  br label %bb30

bb21:                                             ; preds = %bb20
  store i64 %_42.0, ptr %front, align 8
  %_48 = load i64, ptr %front, align 8
  %_49.0 = sub i64 %_48, 1
  %_49.1 = icmp ult i64 %_48, 1
  br i1 %_49.1, label %panic4, label %bb22

panic3:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7b4c662c2f6820815ee546fbefa332ef) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_52 = icmp ult i64 %_49.0, %arr.1
  br i1 %_52, label %bb23, label %panic5

panic4:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b0bba7d54e0355555b70225469e5d241) #23
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_46 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_49.0
  %_54 = load i64, ptr %front, align 8
  %_57 = icmp ult i64 %_54, %arr.1
  br i1 %_57, label %bb24, label %panic6

panic5:                                           ; preds = %bb22
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_49.0, i64 %arr.1, ptr align 8 @alloc_bccb9e30fe26e24f7a0999bc52aa5faa) #23
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_53 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_54
; invoke core::cmp::impls::<impl core::cmp::Ord for i32>::cmp
  %11 = invoke i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h0164e41ac015ae2cE"(ptr align 4 %_46, ptr align 4 %_53)
          to label %bb25 unwind label %cleanup

panic6:                                           ; preds = %bb23
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_54, i64 %arr.1, ptr align 8 @alloc_0cf1401e02f1f4c272184d2dd14ba412) #23
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  store i8 %11, ptr %_45, align 1
; invoke <core::cmp::Ordering as core::cmp::PartialEq>::eq
  %_43 = invoke zeroext i1 @"_ZN60_$LT$core..cmp..Ordering$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6c885e6300ab6314E"(ptr align 1 %_45, ptr align 1 @alloc_9a72dc1c87ddefcce62e4b5ab68e5150)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  br i1 %_43, label %bb27, label %bb28

bb28:                                             ; preds = %bb26
  %_60 = load i64, ptr %front, align 8
  %_61 = load i64, ptr %back, align 8
  %_59 = icmp eq i64 %_60, %_61
  br i1 %_59, label %bb29, label %bb20

bb27:                                             ; preds = %bb26
  store i32 0, ptr %_0, align 4
  br label %bb30

bb29:                                             ; preds = %bb28
  store i32 1, ptr %_0, align 4
  br label %bb30

bb30:                                             ; preds = %bb19, %bb27, %bb29
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc4979ccef2812708E"(ptr align 8 %temp)
  %12 = load i32, ptr %_0, align 4
  ret i32 %12

bb17:                                             ; preds = %bb16
  store i64 %_38.0, ptr %back, align 8
  br label %bb12

panic7:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ef3ecb3b51fa948779bfcf7c260bb21d) #23
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb8
  store i64 %_22.0, ptr %front, align 8
  br label %bb4

panic8:                                           ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f5f27cf5a789b41adebb394f03ef2d07) #23
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb32
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb33:                                             ; preds = %bb32
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = insertvalue { ptr, i32 } poison, ptr %14, 0
  %18 = insertvalue { ptr, i32 } %17, i32 %16, 1
  resume { ptr, i32 } %18
}
