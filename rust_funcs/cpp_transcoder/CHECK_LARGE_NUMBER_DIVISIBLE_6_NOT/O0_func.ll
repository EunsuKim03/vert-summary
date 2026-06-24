define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i5 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %digit_sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h56911bae8e099cf4E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb29:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h93c7db9ff08a0bc0E"(ptr align 8 %str) #21
          to label %bb30 unwind label %terminate

cleanup:                                          ; preds = %bb2.i7, %bb2.i, %panic4, %panic3, %bb18, %bb17, %bb15, %panic2, %bb12, %bb10, %panic1, %panic, %bb3, %bb2, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb29

bb1:                                              ; preds = %start
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hab279dafef425b5aE"(ptr align 8 %str)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_11.0 = extractvalue { ptr, i64 } %5, 0
  %_11.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf6344148160c37d7E"(ptr align 1 %_11.0, i64 %_11.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_10.0 = extractvalue { ptr, ptr } %6, 0
  %_10.1 = extractvalue { ptr, ptr } %6, 1
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::last
  %_9 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17h1fe6018d1be0f5ceE"(ptr %_10.0, ptr %_10.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 %_9, ptr %self.i5, align 4
  %7 = load i32, ptr %self.i5, align 4
  %8 = icmp eq i32 %7, 1114112
  %_2.i6 = select i1 %8, i64 0, i64 1
  %9 = trunc nuw i64 %_2.i6 to i1
  br i1 %9, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h586128256480fd9cE.exit10", label %bb2.i7

bb2.i7:                                           ; preds = %bb4
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_65c4c9b4729a289b3ed36eaedaeef5b1) #22
          to label %.noexc9 unwind label %cleanup

.noexc9:                                          ; preds = %bb2.i7
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h586128256480fd9cE.exit10": ; preds = %bb4
  %val.i8 = load i32, ptr %self.i5, align 4
  br label %bb5

bb5:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h586128256480fd9cE.exit10"
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i8, i32 48)
  %_14.0 = extractvalue { i32, i1 } %10, 0
  %_14.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_14.1, label %panic, label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7

panic:                                            ; preds = %bb5
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_15f21ae238e1aab5f795002471c902fd) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb7:                                              ; preds = %bb6
  %_17 = icmp eq i32 %_14.0, -2147483648
  %_18 = and i1 false, %_17
  br i1 %_18, label %panic1, label %bb8

bb8:                                              ; preds = %bb7
  %_5 = srem i32 %_14.0, 2
  %_4 = icmp ne i32 %_5, 0
  br i1 %_4, label %bb9, label %bb10

panic1:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_15f21ae238e1aab5f795002471c902fd) #23
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %bb8
  store i32 0, ptr %digit_sum, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h879a7d57208a7590E"(i64 0, i64 %n)
          to label %bb11 unwind label %cleanup

bb9:                                              ; preds = %bb8
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h93c7db9ff08a0bc0E"(ptr align 8 %str)
  br label %bb28

bb11:                                             ; preds = %bb10
  %_20.0 = extractvalue { i64, i64 } %11, 0
  %_20.1 = extractvalue { i64, i64 } %11, 1
  store i64 %_20.0, ptr %iter, align 8
  %12 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_20.1, ptr %12, align 8
  br label %bb12

bb12:                                             ; preds = %bb22, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %13 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h392bea8e2761f70fE"(ptr align 8 %iter)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %14 = extractvalue { i64, i64 } %13, 0
  %15 = extractvalue { i64, i64 } %13, 1
  store i64 %14, ptr %_23, align 8
  %16 = getelementptr inbounds i8, ptr %_23, i64 8
  store i64 %15, ptr %16, align 8
  %_25 = load i64, ptr %_23, align 8
  %17 = getelementptr inbounds i8, ptr %_23, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = trunc nuw i64 %_25 to i1
  br i1 %19, label %bb15, label %bb16

bb15:                                             ; preds = %bb13
  %20 = getelementptr inbounds i8, ptr %_23, i64 8
  %i = load i64, ptr %20, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %21 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hab279dafef425b5aE"(ptr align 8 %str)
          to label %bb17 unwind label %cleanup

bb16:                                             ; preds = %bb13
  %_40 = load i32, ptr %digit_sum, align 4
  br label %bb23

bb23:                                             ; preds = %bb16
  %_43 = icmp eq i32 %_40, -2147483648
  %_44 = and i1 false, %_43
  br i1 %_44, label %panic2, label %bb24

bb24:                                             ; preds = %bb23
  %_39 = srem i32 %_40, 3
  %_38 = icmp eq i32 %_39, 0
  br i1 %_38, label %bb25, label %bb26

panic2:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_54eba0eaa2c71c88f7794792724b0eea) #23
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb24
  store i32 0, ptr %_0, align 4
  br label %bb27

bb25:                                             ; preds = %bb24
  store i32 1, ptr %_0, align 4
  br label %bb27

bb27:                                             ; preds = %bb25, %bb26
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h93c7db9ff08a0bc0E"(ptr align 8 %str)
  br label %bb28

bb28:                                             ; preds = %bb9, %bb27
  %22 = load i32, ptr %_0, align 4
  ret i32 %22

bb17:                                             ; preds = %bb15
  %_33.0 = extractvalue { ptr, i64 } %21, 0
  %_33.1 = extractvalue { ptr, i64 } %21, 1
; invoke core::str::<impl str>::chars
  %23 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf6344148160c37d7E"(ptr align 1 %_33.0, i64 %_33.1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %24 = extractvalue { ptr, ptr } %23, 0
  %25 = extractvalue { ptr, ptr } %23, 1
  store ptr %24, ptr %_32, align 8
  %26 = getelementptr inbounds i8, ptr %_32, i64 8
  store ptr %25, ptr %26, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_30 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h5330289e5f5b5021E(ptr align 8 %_32, i64 %i)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i32 %_30, ptr %self.i, align 4
  %27 = load i32, ptr %self.i, align 4
  %28 = icmp eq i32 %27, 1114112
  %_2.i = select i1 %28, i64 0, i64 1
  %29 = trunc nuw i64 %_2.i to i1
  br i1 %29, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h586128256480fd9cE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb19
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_9101c28f7e0bbd1896c74c2937738b3d) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h586128256480fd9cE.exit": ; preds = %bb19
  %val.i = load i32, ptr %self.i, align 4
  br label %bb20

bb20:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h586128256480fd9cE.exit"
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_36.0 = extractvalue { i32, i1 } %30, 0
  %_36.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_36.1, label %panic3, label %bb21

bb21:                                             ; preds = %bb20
  %31 = load i32, ptr %digit_sum, align 4
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %31, i32 %_36.0)
  %_37.0 = extractvalue { i32, i1 } %32, 0
  %_37.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_37.1, label %panic4, label %bb22

panic3:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_58a0d8e23d749f48d4b44932e1fee7bc) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_37.0, ptr %digit_sum, align 4
  br label %bb12

panic4:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_480c92f629b5c78a697b39c7c4439a00) #23
          to label %unreachable unwind label %cleanup

bb14:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb29
  %33 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb30:                                             ; preds = %bb29
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds i8, ptr %0, i64 8
  %36 = load i32, ptr %35, align 8
  %37 = insertvalue { ptr, i32 } poison, ptr %34, 0
  %38 = insertvalue { ptr, i32 } %37, i32 %36, 1
  resume { ptr, i32 } %38
}
