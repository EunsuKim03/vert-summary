define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %h = alloca [8 x i8], align 8
  %l = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i64 0, ptr %l, align 8
; invoke alloc::string::String::len
  %_4 = invoke i64 @_ZN5alloc6string6String3len17h4d6572067134bf55E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb16:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa4c500212113a3bE"(ptr align 8 %str) #22
          to label %bb17 unwind label %terminate

cleanup:                                          ; preds = %panic4, %panic3, %bb8, %bb7, %panic2, %bb5, %panic1, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb16

bb1:                                              ; preds = %start
  %_6.0 = sub i64 %_4, 1
  %_6.1 = icmp ult i64 %_4, 1
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  store i64 %_6.0, ptr %h, align 8
  br label %bb3

panic:                                            ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d72709a293d002ecab850735338783ea) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb3:                                              ; preds = %bb13, %bb2
  %_8 = load i64, ptr %h, align 8
  %_9 = load i64, ptr %l, align 8
  %_7 = icmp ugt i64 %_8, %_9
  br i1 %_7, label %bb4, label %bb14

bb14:                                             ; preds = %bb3
  store i32 1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa4c500212113a3bE"(ptr align 8 %str)
  br label %bb15

bb4:                                              ; preds = %bb3
  %_14 = load i64, ptr %l, align 8
  %_16 = load i64, ptr %l, align 8
  %_17.0 = add i64 %_16, 1
  %_17.1 = icmp ult i64 %_17.0, %_16
  br i1 %_17.1, label %panic1, label %bb5

bb15:                                             ; preds = %bb10, %bb14
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

bb5:                                              ; preds = %bb4
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %6 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E"(ptr align 8 %str, i64 %_14, i64 %_17.0, ptr align 8 @alloc_be4ff25744a098ef6862f9b219d2b236)
          to label %bb6 unwind label %cleanup

panic1:                                           ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4f408d463035af14c0e20d4d60b08cf2) #24
          to label %unreachable unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_11.0 = extractvalue { ptr, i64 } %6, 0
  %_11.1 = extractvalue { ptr, i64 } %6, 1
  %_21 = load i64, ptr %h, align 8
  %_23 = load i64, ptr %h, align 8
  %_24.0 = add i64 %_23, 1
  %_24.1 = icmp ult i64 %_24.0, %_23
  br i1 %_24.1, label %panic2, label %bb7

bb7:                                              ; preds = %bb6
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %7 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h51e4a5fc2eb46f93E"(ptr align 8 %str, i64 %_21, i64 %_24.0, ptr align 8 @alloc_28bf169b2b1ae354b308a2401d0a45e3)
          to label %bb8 unwind label %cleanup

panic2:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f9f8dce1575faef1d878eb80449b0a1d) #24
          to label %unreachable unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_18.0 = extractvalue { ptr, i64 } %7, 0
  %_18.1 = extractvalue { ptr, i64 } %7, 1
; invoke core::cmp::PartialEq::ne
  %_10 = invoke zeroext i1 @_ZN4core3cmp9PartialEq2ne17h687c96da00129ad2E(ptr align 1 %_11.0, i64 %_11.1, ptr align 1 %_18.0, i64 %_18.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_10, label %bb10, label %bb11

bb11:                                             ; preds = %bb9
  %8 = load i64, ptr %l, align 8
  %_25.0 = add i64 %8, 1
  %_25.1 = icmp ult i64 %_25.0, %8
  br i1 %_25.1, label %panic3, label %bb12

bb10:                                             ; preds = %bb9
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa4c500212113a3bE"(ptr align 8 %str)
  br label %bb15

bb12:                                             ; preds = %bb11
  store i64 %_25.0, ptr %l, align 8
  %9 = load i64, ptr %h, align 8
  %_26.0 = sub i64 %9, 1
  %_26.1 = icmp ult i64 %9, 1
  br i1 %_26.1, label %panic4, label %bb13

panic3:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_deda5e7a6a35824b28df3221b5245fc2) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  store i64 %_26.0, ptr %h, align 8
  br label %bb3

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8a087d61f3551fc07751132f56bcb5ff) #24
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb16
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb17:                                             ; preds = %bb16
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 8
  %14 = insertvalue { ptr, i32 } poison, ptr %11, 0
  %15 = insertvalue { ptr, i32 } %14, i32 %13, 1
  resume { ptr, i32 } %15
}
