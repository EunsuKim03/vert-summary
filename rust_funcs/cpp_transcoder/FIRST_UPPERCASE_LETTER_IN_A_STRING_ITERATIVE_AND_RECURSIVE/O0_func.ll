define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_7 = alloca [4 x i8], align 4
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %1 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h493a8a51524ea7faE"(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb12:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e7b67456ebc36c1E"(ptr align 8 %str) #21
          to label %bb13 unwind label %terminate

cleanup:                                          ; preds = %bb7, %bb4, %bb2, %bb1, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb12

bb1:                                              ; preds = %start
  %_4.0 = extractvalue { ptr, i64 } %1, 0
  %_4.1 = extractvalue { ptr, i64 } %1, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9a9e85302e1a7ca2E"(ptr align 1 %_4.0, i64 %_4.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_3.0 = extractvalue { ptr, ptr } %6, 0
  %_3.1 = extractvalue { ptr, ptr } %6, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = invoke { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1d23cdb0859229c2E"(ptr %_3.0, ptr %_3.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_2.0 = extractvalue { ptr, ptr } %7, 0
  %_2.1 = extractvalue { ptr, ptr } %7, 1
  store ptr %_2.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_2.1, ptr %8, align 8
  br label %bb4

bb4:                                              ; preds = %bb9, %bb3
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %9 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e107f123d4203eaE"(ptr align 8 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 %9, ptr %_7, align 4
  %10 = load i32, ptr %_7, align 4
  %11 = icmp eq i32 %10, 1114112
  %_9 = select i1 %11, i64 0, i64 1
  %12 = trunc nuw i64 %_9 to i1
  br i1 %12, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %c = load i32, ptr %_7, align 4
; invoke core::char::methods::<impl char>::is_uppercase
  %_11 = invoke zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$12is_uppercase17h98a2c6b94e969cd8E"(i32 %c)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e7b67456ebc36c1E"(ptr align 8 %str)
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb9:                                              ; preds = %bb7
  br i1 %_11, label %bb10, label %bb4

bb10:                                             ; preds = %bb9
  store i32 %c, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e7b67456ebc36c1E"(ptr align 8 %str)
  br label %bb11

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb12
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb13:                                             ; preds = %bb12
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 8
  %18 = insertvalue { ptr, i32 } poison, ptr %15, 0
  %19 = insertvalue { ptr, i32 } %18, i32 %17, 1
  resume { ptr, i32 } %19
}
