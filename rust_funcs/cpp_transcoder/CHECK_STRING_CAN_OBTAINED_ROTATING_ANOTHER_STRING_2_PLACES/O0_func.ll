define i32 @f_gold(ptr align 8 %str1, ptr align 8 %str2) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %anticlock_rot = alloca [24 x i8], align 8
  %clock_rot = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::new
  invoke void @_ZN5alloc6string6String3new17h4a0ddd761d6276f7E(ptr sret([24 x i8]) align 8 %clock_rot)
          to label %bb1 unwind label %cleanup

bb26:                                             ; preds = %bb25, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr align 8 %str2) #22
          to label %bb27 unwind label %terminate

cleanup:                                          ; preds = %bb20, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb26

bb1:                                              ; preds = %start
; invoke alloc::string::String::new
  invoke void @_ZN5alloc6string6String3new17h4a0ddd761d6276f7E(ptr sret([24 x i8]) align 8 %anticlock_rot)
          to label %bb2 unwind label %cleanup1

bb25:                                             ; preds = %bb24, %cleanup1
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr align 8 %clock_rot) #22
          to label %bb26 unwind label %terminate

cleanup1:                                         ; preds = %bb19, %bb1
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb25

bb2:                                              ; preds = %bb1
; invoke alloc::string::String::len
  %len = invoke i64 @_ZN5alloc6string6String3len17hda8ac44099b468a6E(ptr align 8 %str2)
          to label %bb3 unwind label %cleanup2

bb24:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr align 8 %anticlock_rot) #22
          to label %bb25 unwind label %terminate

cleanup2:                                         ; preds = %bb15, %bb13, %bb12, %bb11, %bb10, %bb9, %bb8, %bb7, %panic3, %bb5, %bb4, %panic, %bb2
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %11, ptr %12, align 8
  br label %bb24

bb3:                                              ; preds = %bb2
  %_13.0 = sub i64 %len, 2
  %_13.1 = icmp ult i64 %len, 2
  br i1 %_13.1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %13 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E"(ptr align 8 %str2, i64 %_13.0, i64 %len, ptr align 8 @alloc_c8270cce062007783179b63036de03d7)
          to label %bb5 unwind label %cleanup2

panic:                                            ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b6d868c13c6309568248f01d75a8f652) #24
          to label %unreachable unwind label %cleanup2

unreachable:                                      ; preds = %panic3, %panic
  unreachable

bb5:                                              ; preds = %bb4
  %_9.0 = extractvalue { ptr, i64 } %13, 0
  %_9.1 = extractvalue { ptr, i64 } %13, 1
; invoke alloc::string::String::push_str
  invoke void @_ZN5alloc6string6String8push_str17hbf74064ec06812b2E(ptr align 8 %anticlock_rot, ptr align 1 %_9.0, i64 %_9.1)
          to label %bb6 unwind label %cleanup2

bb6:                                              ; preds = %bb5
  %_20.0 = sub i64 %len, 2
  %_20.1 = icmp ult i64 %len, 2
  br i1 %_20.1, label %panic3, label %bb7

bb7:                                              ; preds = %bb6
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %14 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E"(ptr align 8 %str2, i64 0, i64 %_20.0, ptr align 8 @alloc_2bcc43f06b47b13f4322c35062bc9814)
          to label %bb8 unwind label %cleanup2

panic3:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a42994388ef983b790a85c9b8bd5b794) #24
          to label %unreachable unwind label %cleanup2

bb8:                                              ; preds = %bb7
  %_16.0 = extractvalue { ptr, i64 } %14, 0
  %_16.1 = extractvalue { ptr, i64 } %14, 1
; invoke alloc::string::String::push_str
  invoke void @_ZN5alloc6string6String8push_str17hbf74064ec06812b2E(ptr align 8 %anticlock_rot, ptr align 1 %_16.0, i64 %_16.1)
          to label %bb9 unwind label %cleanup2

bb9:                                              ; preds = %bb8
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %15 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E"(ptr align 8 %str2, i64 2, i64 %len, ptr align 8 @alloc_9a1ce75ec7b40457b1872c2279b3cfff)
          to label %bb10 unwind label %cleanup2

bb10:                                             ; preds = %bb9
  %_23.0 = extractvalue { ptr, i64 } %15, 0
  %_23.1 = extractvalue { ptr, i64 } %15, 1
; invoke alloc::string::String::push_str
  invoke void @_ZN5alloc6string6String8push_str17hbf74064ec06812b2E(ptr align 8 %clock_rot, ptr align 1 %_23.0, i64 %_23.1)
          to label %bb11 unwind label %cleanup2

bb11:                                             ; preds = %bb10
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %16 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8f10742b627d7901E"(ptr align 8 %str2, i64 0, i64 2, ptr align 8 @alloc_0dcff3af21340686aedebe730c08cf7a)
          to label %bb12 unwind label %cleanup2

bb12:                                             ; preds = %bb11
  %_28.0 = extractvalue { ptr, i64 } %16, 0
  %_28.1 = extractvalue { ptr, i64 } %16, 1
; invoke alloc::string::String::push_str
  invoke void @_ZN5alloc6string6String8push_str17hbf74064ec06812b2E(ptr align 8 %clock_rot, ptr align 1 %_28.0, i64 %_28.1)
          to label %bb13 unwind label %cleanup2

bb13:                                             ; preds = %bb12
; invoke <alloc::string::String as core::cmp::PartialEq>::eq
  %_31 = invoke zeroext i1 @"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h10a72c4ff1702bdaE"(ptr align 8 %str1, ptr align 8 %clock_rot)
          to label %bb14 unwind label %cleanup2

bb14:                                             ; preds = %bb13
  br i1 %_31, label %bb17, label %bb15

bb15:                                             ; preds = %bb14
; invoke <alloc::string::String as core::cmp::PartialEq>::eq
  %_34 = invoke zeroext i1 @"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h10a72c4ff1702bdaE"(ptr align 8 %str1, ptr align 8 %anticlock_rot)
          to label %bb16 unwind label %cleanup2

bb17:                                             ; preds = %bb16, %bb14
  store i32 1, ptr %_0, align 4
  br label %bb19

bb16:                                             ; preds = %bb15
  br i1 %_34, label %bb17, label %bb18

bb18:                                             ; preds = %bb16
  store i32 0, ptr %_0, align 4
  br label %bb19

bb19:                                             ; preds = %bb17, %bb18
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr align 8 %anticlock_rot)
          to label %bb20 unwind label %cleanup1

bb20:                                             ; preds = %bb19
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr align 8 %clock_rot)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr align 8 %str2)
          to label %bb22 unwind label %cleanup4

bb27:                                             ; preds = %bb26, %cleanup4
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr align 8 %str1) #22
          to label %bb28 unwind label %terminate

cleanup4:                                         ; preds = %bb21
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = extractvalue { ptr, i32 } %17, 1
  store ptr %18, ptr %0, align 8
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %19, ptr %20, align 8
  br label %bb27

bb22:                                             ; preds = %bb21
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h89223ae69590377bE"(ptr align 8 %str1)
  %21 = load i32, ptr %_0, align 4
  ret i32 %21

terminate:                                        ; preds = %bb27, %bb26, %bb25, %bb24
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb28:                                             ; preds = %bb27
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds i8, ptr %0, i64 8
  %25 = load i32, ptr %24, align 8
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27
}
