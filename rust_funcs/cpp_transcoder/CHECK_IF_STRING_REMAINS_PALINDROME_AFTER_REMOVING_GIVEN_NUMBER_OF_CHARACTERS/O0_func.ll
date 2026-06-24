define i32 @f_gold(ptr align 8 %str, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %len = invoke i64 @_ZN5alloc6string6String3len17h37287a06491cc16dE(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha537421ad80c1202E"(ptr align 8 %str) #21
          to label %bb7 unwind label %terminate

cleanup:                                          ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb6

bb1:                                              ; preds = %start
  %_6 = sext i32 %n to i64
  %_5 = icmp uge i64 %len, %_6
  br i1 %_5, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_0, align 4
  br label %bb4

bb2:                                              ; preds = %bb1
  store i32 1, ptr %_0, align 4
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha537421ad80c1202E"(ptr align 8 %str)
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

terminate:                                        ; preds = %bb6
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb7:                                              ; preds = %bb6
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load i32, ptr %8, align 8
  %10 = insertvalue { ptr, i32 } poison, ptr %7, 0
  %11 = insertvalue { ptr, i32 } %10, i32 %9, 1
  resume { ptr, i32 } %11
}
