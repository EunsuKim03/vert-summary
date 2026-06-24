define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_9 = alloca [4 x i8], align 4
  %iter = alloca [16 x i8], align 8
  %ones = alloca [4 x i8], align 4
  %zeros = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %zeros, align 4
  store i32 0, ptr %ones, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %1 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9d569d8c28f4dc02E"(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb17:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2364c0932dab03abE"(ptr align 8 %str) #21
          to label %bb18 unwind label %terminate

cleanup:                                          ; preds = %panic1, %panic, %bb4, %bb2, %bb1, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb17

bb1:                                              ; preds = %start
  %_6.0 = extractvalue { ptr, i64 } %1, 0
  %_6.1 = extractvalue { ptr, i64 } %1, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h17f098da610e284fE"(ptr align 1 %_6.0, i64 %_6.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_5.0 = extractvalue { ptr, ptr } %6, 0
  %_5.1 = extractvalue { ptr, ptr } %6, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = invoke { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf2f8a799fb814fb1E"(ptr %_5.0, ptr %_5.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_4.0 = extractvalue { ptr, ptr } %7, 0
  %_4.1 = extractvalue { ptr, ptr } %7, 1
  store ptr %_4.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_4.1, ptr %8, align 8
  br label %bb4

bb4:                                              ; preds = %bb10, %bb12, %bb3
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %9 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h79b45c6b60bbfdecE"(ptr align 8 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 %9, ptr %_9, align 4
  %10 = load i32, ptr %_9, align 4
  %11 = icmp eq i32 %10, 1114112
  %_11 = select i1 %11, i64 0, i64 1
  %12 = trunc nuw i64 %_11 to i1
  br i1 %12, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %c = load i32, ptr %_9, align 4
  %_13 = icmp eq i32 %c, 48
  br i1 %_13, label %bb9, label %bb11

bb8:                                              ; preds = %bb5
  %_17 = load i32, ptr %zeros, align 4
  %_16 = icmp eq i32 %_17, 1
  br i1 %_16, label %bb15, label %bb13

bb13:                                             ; preds = %bb8
  %_19 = load i32, ptr %ones, align 4
  %_18 = icmp eq i32 %_19, 1
  br i1 %_18, label %bb15, label %bb14

bb15:                                             ; preds = %bb13, %bb8
  store i32 1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2364c0932dab03abE"(ptr align 8 %str)
  br label %bb16

bb14:                                             ; preds = %bb13
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2364c0932dab03abE"(ptr align 8 %str)
  br label %bb16

bb16:                                             ; preds = %bb15, %bb14
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb11:                                             ; preds = %bb7
  %14 = load i32, ptr %ones, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 1)
  %_15.0 = extractvalue { i32, i1 } %15, 0
  %_15.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_15.1, label %panic, label %bb12

bb9:                                              ; preds = %bb7
  %16 = load i32, ptr %zeros, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 1)
  %_14.0 = extractvalue { i32, i1 } %17, 0
  %_14.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_14.1, label %panic1, label %bb10

bb12:                                             ; preds = %bb11
  store i32 %_15.0, ptr %ones, align 4
  br label %bb4

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f7f2107097baa11b22c1b65a5bae265e) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic1, %panic
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_14.0, ptr %zeros, align 4
  br label %bb4

panic1:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1cf8d9e11f227f54bd68d924dcc81afe) #23
          to label %unreachable unwind label %cleanup

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb17
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb18:                                             ; preds = %bb17
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  %21 = load i32, ptr %20, align 8
  %22 = insertvalue { ptr, i32 } poison, ptr %19, 0
  %23 = insertvalue { ptr, i32 } %22, i32 %21, 1
  resume { ptr, i32 } %23
}
