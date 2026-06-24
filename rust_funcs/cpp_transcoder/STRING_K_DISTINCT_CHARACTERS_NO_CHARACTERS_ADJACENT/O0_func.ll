define void @f_gold(ptr sret([24 x i8]) align 8 %_0, i32 %n, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_23 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %count = alloca [4 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [24 x i8], align 8
; call alloc::string::String::new
  call void @_ZN5alloc6string6String3new17h98d61fd0f6523140E(ptr sret([24 x i8]) align 8 %res) #20
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7fc77e79a4b24a0bE"(i32 0, i32 %k)
          to label %bb2 unwind label %cleanup

bb19:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h562e85210cadfdfbE"(ptr align 8 %res) #21
          to label %bb20 unwind label %terminate

cleanup:                                          ; preds = %bb8, %panic5, %panic3, %bb15, %panic2, %bb11, %bb9, %panic, %bb3, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb19

bb2:                                              ; preds = %start
  %_4.0 = extractvalue { i32, i32 } %1, 0
  %_4.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_4.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %6, align 4
  br label %bb3

bb3:                                              ; preds = %bb21, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h833ee902c0db1949E"(ptr align 4 %iter)
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
  %_15 = trunc i32 %i4 to i8
  %_16.0 = add i8 97, %_15
  %_16.1 = icmp ult i8 %_16.0, 97
  br i1 %_16.1, label %panic5, label %bb8

bb7:                                              ; preds = %bb4
  store i32 0, ptr %count, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %k)
  %_21.0 = extractvalue { i32, i1 } %16, 0
  %_21.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_21.1, label %panic, label %bb9

bb9:                                              ; preds = %bb7
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7fc77e79a4b24a0bE"(i32 0, i32 %_21.0)
          to label %bb10 unwind label %cleanup

panic:                                            ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8227d399731fd278fe1843dd5f1cd27f) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic3, %panic2, %panic
  unreachable

bb10:                                             ; preds = %bb9
  %_18.0 = extractvalue { i32, i32 } %17, 0
  %_18.1 = extractvalue { i32, i32 } %17, 1
  store i32 %_18.0, ptr %iter1, align 4
  %18 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_18.1, ptr %18, align 4
  br label %bb11

bb11:                                             ; preds = %bb18, %bb17, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %19 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h833ee902c0db1949E"(ptr align 4 %iter1)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  store i32 %20, ptr %_23, align 4
  %22 = getelementptr inbounds i8, ptr %_23, i64 4
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %_23, align 4
  %24 = getelementptr inbounds i8, ptr %_23, i64 4
  %25 = load i32, ptr %24, align 4
  %_25 = zext i32 %23 to i64
  %26 = trunc nuw i64 %_25 to i1
  br i1 %26, label %bb13, label %bb14

bb13:                                             ; preds = %bb12
  %27 = getelementptr inbounds i8, ptr %_23, i64 4
  %i = load i32, ptr %27, align 4
  %_32 = load i32, ptr %count, align 4
  %_31 = trunc i32 %_32 to i8
  %_33.0 = add i8 97, %_31
  %_33.1 = icmp ult i8 %_33.0, 97
  br i1 %_33.1, label %panic2, label %bb15

bb14:                                             ; preds = %bb12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %res, i64 24, i1 false)
  ret void

bb15:                                             ; preds = %bb13
  %_29 = zext i8 %_33.0 to i32
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17h743da274babc35baE(ptr align 8 %res, i32 %_29)
          to label %bb16 unwind label %cleanup

panic2:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e67a6fd089c18e8ca8915ed9e48cb89d) #23
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %28 = load i32, ptr %count, align 4
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %28, i32 1)
  %_34.0 = extractvalue { i32, i1 } %29, 0
  %_34.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_34.1, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
  store i32 %_34.0, ptr %count, align 4
  %_36 = load i32, ptr %count, align 4
  %_35 = icmp eq i32 %_36, %k
  br i1 %_35, label %bb18, label %bb11

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e8b6078bf5fbfaf14ad7ffac24d12e23) #23
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  store i32 0, ptr %count, align 4
  br label %bb11

bb8:                                              ; preds = %bb6
  %_13 = zext i8 %_16.0 to i32
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17h743da274babc35baE(ptr align 8 %res, i32 %_13)
          to label %bb21 unwind label %cleanup

panic5:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d66071b9a8ee83c620db9ccc917dcb99) #23
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb8
  br label %bb3

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb19
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb20:                                             ; preds = %bb19
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr inbounds i8, ptr %0, i64 8
  %33 = load i32, ptr %32, align 8
  %34 = insertvalue { ptr, i32 } poison, ptr %31, 0
  %35 = insertvalue { ptr, i32 } %34, i32 %33, 1
  resume { ptr, i32 } %35
}
