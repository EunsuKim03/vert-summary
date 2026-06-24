define i32 @f_gold(ptr align 8 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %_13 = alloca [4 x i8], align 4
  %_8 = alloca [16 x i8], align 8
  %_6 = alloca [4 x i8], align 4
  %pos = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  store i64 0, ptr %i, align 8
  store i32 0, ptr %pos, align 4
  br label %bb1

bb1:                                              ; preds = %bb18, %start
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %1 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7e8ec1307d0c4553E"(ptr align 8 %n)
          to label %bb2 unwind label %cleanup

bb21:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h59a3c95e9111bc67E"(ptr align 8 %n) #21
          to label %bb22 unwind label %terminate

cleanup:                                          ; preds = %panic4, %panic3, %panic2, %panic1, %panic, %bb8, %bb7, %bb6, %bb4, %bb3, %bb2, %bb1
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb21

bb2:                                              ; preds = %bb1
  %_9.0 = extractvalue { ptr, i64 } %1, 0
  %_9.1 = extractvalue { ptr, i64 } %1, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h423d565c5c51066dE"(ptr align 1 %_9.0, i64 %_9.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  store ptr %7, ptr %_8, align 8
  %9 = getelementptr inbounds i8, ptr %_8, i64 8
  store ptr %8, ptr %9, align 8
  %_11 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %10 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha18065dfa8ab1866E(ptr align 8 %_8, i64 %_11)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 %10, ptr %_6, align 4
; invoke core::cmp::PartialEq::ne
  %_4 = invoke zeroext i1 @_ZN4core3cmp9PartialEq2ne17hdfc1417984fb716fE(ptr align 4 %_6, ptr align 4 @alloc_2375231e2dd9610b64f5e252376e6e97)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  br i1 %_4, label %bb6, label %bb19

bb19:                                             ; preds = %bb5
  %_0 = load i32, ptr %pos, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h59a3c95e9111bc67E"(ptr align 8 %n)
  ret i32 %_0

bb6:                                              ; preds = %bb5
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %11 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7e8ec1307d0c4553E"(ptr align 8 %n)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %_16.0 = extractvalue { ptr, i64 } %11, 0
  %_16.1 = extractvalue { ptr, i64 } %11, 1
; invoke core::str::<impl str>::chars
  %12 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h423d565c5c51066dE"(ptr align 1 %_16.0, i64 %_16.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %13 = extractvalue { ptr, ptr } %12, 0
  %14 = extractvalue { ptr, ptr } %12, 1
  store ptr %13, ptr %_15, align 8
  %15 = getelementptr inbounds i8, ptr %_15, i64 8
  store ptr %14, ptr %15, align 8
  %_18 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %16 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha18065dfa8ab1866E(ptr align 8 %_15, i64 %_18)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  store i32 %16, ptr %_13, align 4
  %17 = load i32, ptr %_13, align 4
  %18 = icmp eq i32 %17, 1114112
  %_19 = select i1 %18, i64 0, i64 1
  %19 = trunc nuw i64 %_19 to i1
  br i1 %19, label %bb10, label %bb17

bb10:                                             ; preds = %bb9
  %20 = load i32, ptr %_13, align 4
  switch i32 %20, label %bb17 [
    i32 52, label %bb12
    i32 55, label %bb11
  ]

bb17:                                             ; preds = %bb16, %bb14, %bb10, %bb9
  %21 = load i64, ptr %i, align 8
  %_28.0 = add i64 %21, 1
  %_28.1 = icmp ult i64 %_28.0, %21
  br i1 %_28.1, label %panic4, label %bb18

bb12:                                             ; preds = %bb10
  %_21 = load i32, ptr %pos, align 4
  %22 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_21, i32 2)
  %_22.0 = extractvalue { i32, i1 } %22, 0
  %_22.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_22.1, label %panic, label %bb13

bb11:                                             ; preds = %bb10
  %_25 = load i32, ptr %pos, align 4
  %23 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_25, i32 2)
  %_26.0 = extractvalue { i32, i1 } %23, 0
  %_26.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_26.1, label %panic2, label %bb15

bb13:                                             ; preds = %bb12
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_22.0, i32 1)
  %_23.0 = extractvalue { i32, i1 } %24, 0
  %_23.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_23.1, label %panic1, label %bb14

panic:                                            ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_fbb322ed5d5dad0fc3272c401d8becff) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_23.0, ptr %pos, align 4
  br label %bb17

panic1:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fbb322ed5d5dad0fc3272c401d8becff) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb11
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_26.0, i32 2)
  %_27.0 = extractvalue { i32, i1 } %25, 0
  %_27.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_27.1, label %panic3, label %bb16

panic2:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1d774a267c0001d827e303a4bd7e4bcd) #23
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  store i32 %_27.0, ptr %pos, align 4
  br label %bb17

panic3:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1d774a267c0001d827e303a4bd7e4bcd) #23
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  store i64 %_28.0, ptr %i, align 8
  br label %bb1

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1b741a89bacd68c45ae6b228f4ad0144) #23
          to label %unreachable unwind label %cleanup

bb23:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb21
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb22:                                             ; preds = %bb21
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = insertvalue { ptr, i32 } poison, ptr %27, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %29, 1
  resume { ptr, i32 } %31
}
