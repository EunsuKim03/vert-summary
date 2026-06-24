define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i5 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %even_dig_sum = alloca [4 x i8], align 4
  %odd_dig_sum = alloca [4 x i8], align 4
  store i32 0, ptr %odd_dig_sum, align 4
  store i32 0, ptr %even_dig_sum, align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h53dd20d3992d5121E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb26:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd7690ed170c92de7E"(ptr align 8 %str) #21
          to label %bb27 unwind label %terminate

cleanup:                                          ; preds = %bb2.i7, %bb2.i, %panic4, %panic3, %bb11, %bb10, %bb9, %panic2, %panic1, %bb18, %bb17, %bb16, %panic, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb26

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h20b45a37dc13e898E"(i64 0, i64 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { i64, i64 } %5, 0
  %_6.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_6.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb15, %bb22, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haa8eb70337c44933E"(ptr align 8 %iter)
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
  br label %bb8

bb7:                                              ; preds = %bb4
  %_41 = load i32, ptr %odd_dig_sum, align 4
  %_42 = load i32, ptr %even_dig_sum, align 4
  %_43.0 = sub i32 %_41, %_42
  %_43.1 = icmp ult i32 %_41, %_42
  br i1 %_43.1, label %panic, label %bb23

bb23:                                             ; preds = %bb7
  br label %bb24

panic:                                            ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d03a5e43daae63dccb38372303a5440e) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb24:                                             ; preds = %bb23
  %_39 = urem i32 %_43.0, 11
  %_38 = icmp eq i32 %_39, 0
  %_0 = zext i1 %_38 to i32
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd7690ed170c92de7E"(ptr align 8 %str)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_14 = urem i64 %i, 2
  %_13 = icmp eq i64 %_14, 0
  br i1 %_13, label %bb9, label %bb16

bb16:                                             ; preds = %bb8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h537bafc755c975f2E"(ptr align 8 %str)
          to label %bb17 unwind label %cleanup

bb9:                                              ; preds = %bb8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %16 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h537bafc755c975f2E"(ptr align 8 %str)
          to label %bb10 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_33.0 = extractvalue { ptr, i64 } %15, 0
  %_33.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %17 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5d6a39be5de84c20E"(ptr align 1 %_33.0, i64 %_33.1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %18 = extractvalue { ptr, ptr } %17, 0
  %19 = extractvalue { ptr, ptr } %17, 1
  store ptr %18, ptr %_32, align 8
  %20 = getelementptr inbounds i8, ptr %_32, i64 8
  store ptr %19, ptr %20, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_30 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h5faab260dc5c12e9E(ptr align 8 %_32, i64 %i)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i32 %_30, ptr %self.i5, align 4
  %21 = load i32, ptr %self.i5, align 4
  %22 = icmp eq i32 %21, 1114112
  %_2.i6 = select i1 %22, i64 0, i64 1
  %23 = trunc nuw i64 %_2.i6 to i1
  br i1 %23, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17he723c109e2334512E.exit10", label %bb2.i7

bb2.i7:                                           ; preds = %bb19
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_4e63d36c90f326fa6ac604d323f137d3) #22
          to label %.noexc9 unwind label %cleanup

.noexc9:                                          ; preds = %bb2.i7
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17he723c109e2334512E.exit10": ; preds = %bb19
  %val.i8 = load i32, ptr %self.i5, align 4
  br label %bb20

bb20:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17he723c109e2334512E.exit10"
  %_36.0 = sub i32 %val.i8, 48
  %_36.1 = icmp ult i32 %val.i8, 48
  br i1 %_36.1, label %panic1, label %bb21

bb21:                                             ; preds = %bb20
  %24 = load i32, ptr %even_dig_sum, align 4
  %_37.0 = add i32 %24, %_36.0
  %_37.1 = icmp ult i32 %_37.0, %24
  br i1 %_37.1, label %panic2, label %bb22

panic1:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2478ec8e6dff81f1572c3418b92f5ab0) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_37.0, ptr %even_dig_sum, align 4
  br label %bb3

panic2:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_61e80701e9fbc3e1e4ea1045f1a56639) #23
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %bb9
  %_22.0 = extractvalue { ptr, i64 } %16, 0
  %_22.1 = extractvalue { ptr, i64 } %16, 1
; invoke core::str::<impl str>::chars
  %25 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5d6a39be5de84c20E"(ptr align 1 %_22.0, i64 %_22.1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %26 = extractvalue { ptr, ptr } %25, 0
  %27 = extractvalue { ptr, ptr } %25, 1
  store ptr %26, ptr %_21, align 8
  %28 = getelementptr inbounds i8, ptr %_21, i64 8
  store ptr %27, ptr %28, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_19 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h5faab260dc5c12e9E(ptr align 8 %_21, i64 %i)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i32 %_19, ptr %self.i, align 4
  %29 = load i32, ptr %self.i, align 4
  %30 = icmp eq i32 %29, 1114112
  %_2.i = select i1 %30, i64 0, i64 1
  %31 = trunc nuw i64 %_2.i to i1
  br i1 %31, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17he723c109e2334512E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb12
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_c659836f6953a930a3f6ba7fae26ee32) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17he723c109e2334512E.exit": ; preds = %bb12
  %val.i = load i32, ptr %self.i, align 4
  br label %bb13

bb13:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17he723c109e2334512E.exit"
  %_25.0 = sub i32 %val.i, 48
  %_25.1 = icmp ult i32 %val.i, 48
  br i1 %_25.1, label %panic3, label %bb14

bb14:                                             ; preds = %bb13
  %32 = load i32, ptr %odd_dig_sum, align 4
  %_26.0 = add i32 %32, %_25.0
  %_26.1 = icmp ult i32 %_26.0, %32
  br i1 %_26.1, label %panic4, label %bb15

panic3:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_20ce372714f7dd4e98fab230c775820e) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  store i32 %_26.0, ptr %odd_dig_sum, align 4
  br label %bb3

panic4:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fa31aa18989a67d611956dd8e7693ca2) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb26
  %33 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb27:                                             ; preds = %bb26
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds i8, ptr %0, i64 8
  %36 = load i32, ptr %35, align 8
  %37 = insertvalue { ptr, i32 } poison, ptr %34, 0
  %38 = insertvalue { ptr, i32 } %37, i32 %36, 1
  resume { ptr, i32 } %38
}
