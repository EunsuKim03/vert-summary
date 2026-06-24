define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %c = alloca [4 x i8], align 4
  %_8 = alloca [4 x i8], align 4
  %iter = alloca [16 x i8], align 8
  %set = alloca [48 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke std::collections::hash::set::HashSet<T>::new
  invoke void @"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE"(ptr sret([48 x i8]) align 8 %set)
          to label %bb1 unwind label %cleanup

bb28:                                             ; preds = %bb27, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE"(ptr align 8 %str) #28
          to label %bb29 unwind label %terminate

cleanup:                                          ; preds = %bb24, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb28

bb1:                                              ; preds = %start
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hce0d8fa6b9280187E"(ptr align 8 %str)
          to label %bb2 unwind label %cleanup1

bb27:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<std::collections::hash::set::HashSet<char>>
  invoke void @"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"(ptr align 8 %set) #28
          to label %bb28 unwind label %terminate

cleanup1:                                         ; preds = %bb11, %bb12, %bb8, %bb20, %bb17, %bb15, %bb9, %bb5, %bb3, %bb2, %bb1
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb27

bb2:                                              ; preds = %bb1
  %_5.0 = extractvalue { ptr, i64 } %5, 0
  %_5.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %10 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h6cfe27d3d88c8afdE"(ptr align 1 %_5.0, i64 %_5.1)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  %_4.0 = extractvalue { ptr, ptr } %10, 0
  %_4.1 = extractvalue { ptr, ptr } %10, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = invoke { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfd04e1a8f37b4e06E"(ptr %_4.0, ptr %_4.1)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  %_3.0 = extractvalue { ptr, ptr } %11, 0
  %_3.1 = extractvalue { ptr, ptr } %11, 1
  store ptr %_3.0, ptr %iter, align 8
  %12 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_3.1, ptr %12, align 8
  br label %bb5

bb5:                                              ; preds = %bb30, %bb31, %bb4
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %13 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h65a152c939443d65E"(ptr align 8 %iter)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  store i32 %13, ptr %_8, align 4
  %14 = load i32, ptr %_8, align 4
  %15 = icmp eq i32 %14, 1114112
  %_10 = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_10 to i1
  br i1 %16, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %17 = load i32, ptr %_8, align 4
  store i32 %17, ptr %c, align 4
; invoke std::collections::hash::set::HashSet<T,S>::contains
  %_12 = invoke zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$8contains17h2913e1adc8c1c88aE"(ptr align 8 %set, ptr align 4 %c)
          to label %bb10 unwind label %cleanup1

bb9:                                              ; preds = %bb6
; invoke alloc::string::String::len
  %_22 = invoke i64 @_ZN5alloc6string6String3len17h9bc6203245402a57E(ptr align 8 %str)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb9
  br label %bb14

bb14:                                             ; preds = %bb13
  %_21 = urem i64 %_22, 2
  %_20 = icmp eq i64 %_21, 0
  br i1 %_20, label %bb15, label %bb17

bb17:                                             ; preds = %bb16, %bb14
; invoke alloc::string::String::len
  %_29 = invoke i64 @_ZN5alloc6string6String3len17h9bc6203245402a57E(ptr align 8 %str)
          to label %bb18 unwind label %cleanup1

bb15:                                             ; preds = %bb14
; invoke std::collections::hash::set::HashSet<T,S>::is_empty
  %_25 = invoke zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$8is_empty17hecdc1e2dc34c6c26E"(ptr align 8 %set)
          to label %bb16 unwind label %cleanup1

bb16:                                             ; preds = %bb15
  br i1 %_25, label %bb22, label %bb17

bb22:                                             ; preds = %bb21, %bb16
  store i32 1, ptr %_0, align 4
  br label %bb24

bb18:                                             ; preds = %bb17
  br label %bb19

bb19:                                             ; preds = %bb18
  %_28 = urem i64 %_29, 2
  %_27 = icmp eq i64 %_28, 1
  br i1 %_27, label %bb20, label %bb23

bb23:                                             ; preds = %bb21, %bb19
  store i32 0, ptr %_0, align 4
  br label %bb24

bb20:                                             ; preds = %bb19
; invoke std::collections::hash::set::HashSet<T,S>::len
  %_33 = invoke i64 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$3len17hef0b0e0086b20653E"(ptr align 8 %set)
          to label %bb21 unwind label %cleanup1

bb21:                                             ; preds = %bb20
  %_32 = icmp eq i64 %_33, 1
  br i1 %_32, label %bb22, label %bb23

bb24:                                             ; preds = %bb22, %bb23
; invoke core::ptr::drop_in_place<std::collections::hash::set::HashSet<char>>
  invoke void @"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"(ptr align 8 %set)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE"(ptr align 8 %str)
  %18 = load i32, ptr %_0, align 4
  ret i32 %18

bb10:                                             ; preds = %bb8
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %19 = load i32, ptr %c, align 4
; invoke std::collections::hash::set::HashSet<T,S>::insert
  %_18 = invoke zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$6insert17h792ef0cc2f225051E"(ptr align 8 %set, i32 %19)
          to label %bb31 unwind label %cleanup1

bb11:                                             ; preds = %bb10
; invoke std::collections::hash::set::HashSet<T,S>::remove
  %_15 = invoke zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$6remove17h27acad1641857ea7E"(ptr align 8 %set, ptr align 4 %c)
          to label %bb30 unwind label %cleanup1

bb31:                                             ; preds = %bb12
  br label %bb5

bb30:                                             ; preds = %bb11
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb28, %bb27
  %20 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb29:                                             ; preds = %bb28
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds i8, ptr %0, i64 8
  %23 = load i32, ptr %22, align 8
  %24 = insertvalue { ptr, i32 } poison, ptr %21, 0
  %25 = insertvalue { ptr, i32 } %24, i32 %23, 1
  resume { ptr, i32 } %25
}
