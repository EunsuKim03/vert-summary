define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
; invoke alloc::string::String::len
  %_3 = invoke i64 @_ZN5alloc6string6String3len17h962a030f290fbb6eE(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb7:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h48488adad84d3b6cE"(ptr align 8 %str) #21
          to label %bb8 unwind label %terminate

cleanup:                                          ; preds = %panic2, %panic1, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb7

bb1:                                              ; preds = %start
  %n = trunc i64 %_3 to i32
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_7.0 = extractvalue { i32, i1 } %5, 0
  %_7.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_7.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %6 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %_7.0)
  %_8.0 = extractvalue { i32, i1 } %6, 0
  %_8.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_8.1, label %panic1, label %bb3

panic:                                            ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_73523c81cdbe6dfd14a0a03cf2cdbc5d) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic1, %panic
  unreachable

bb3:                                              ; preds = %bb2
  br label %bb4

panic1:                                           ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a678b1579af82469de893f2ab3ac48b6) #23
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_11 = icmp eq i32 %_8.0, -2147483648
  %_12 = and i1 false, %_11
  br i1 %_12, label %panic2, label %bb5

bb5:                                              ; preds = %bb4
  %_0 = sdiv i32 %_8.0, 2
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h48488adad84d3b6cE"(ptr align 8 %str)
  ret i32 %_0

panic2:                                           ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_a678b1579af82469de893f2ab3ac48b6) #23
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb7
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb8:                                              ; preds = %bb7
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1
  resume { ptr, i32 } %12
}
