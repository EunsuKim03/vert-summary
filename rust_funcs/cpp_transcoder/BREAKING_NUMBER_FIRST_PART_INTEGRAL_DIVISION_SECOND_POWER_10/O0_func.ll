define i32 @f_gold(ptr align 8 %N) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %t = alloca [16 x i8], align 8
  %s = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_8 = alloca [24 x i8], align 8
  %_7 = alloca [24 x i8], align 8
  %count = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %len = invoke i64 @_ZN5alloc6string6String3len17h4476e0ebd9b9aeaeE(ptr align 8 %N)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E"(ptr align 8 %N) #23
          to label %bb23 unwind label %terminate

cleanup:                                          ; preds = %panic1, %bb17, %bb15, %bb13, %bb12, %panic, %bb10, %bb8, %bb5, %bb3, %bb2, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb22

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %l = udiv i64 %len, 2
  store i32 0, ptr %count, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17ha9a367c7ac698b0bE"(ptr sret([24 x i8]) align 8 %_8, i64 1, i64 %l)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbf4e35bcb02e83e7E"(ptr sret([24 x i8]) align 8 %_7, ptr align 8 %_8)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_7, i64 24, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb20, %bb18, %bb16, %bb14, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha8cdc507af8783ecE"(ptr align 8 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %6 = extractvalue { i64, i64 } %5, 0
  %7 = extractvalue { i64, i64 } %5, 1
  store i64 %6, ptr %_10, align 8
  %8 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %7, ptr %8, align 8
  %_12 = load i64, ptr %_10, align 8
  %9 = getelementptr inbounds i8, ptr %_10, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = trunc nuw i64 %_12 to i1
  br i1 %11, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %12 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %12, align 8
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %13 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE"(ptr align 8 %N, i64 %i, ptr align 8 @alloc_4589facc9212bd32fc6a75ca289ca8b8)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
  %_0 = load i32, ptr %count, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E"(ptr align 8 %N)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_15.0 = extractvalue { ptr, i64 } %13, 0
  %_15.1 = extractvalue { ptr, i64 } %13, 1
  store ptr %_15.0, ptr %s, align 8
  %14 = getelementptr inbounds i8, ptr %s, i64 8
  store i64 %_15.1, ptr %14, align 8
  %15 = load ptr, ptr %s, align 8
  %16 = getelementptr inbounds i8, ptr %s, i64 8
  %17 = load i64, ptr %16, align 8
; invoke core::str::<impl str>::len
  %l1 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h532acdef3c88b379E"(ptr align 1 %15, i64 %17)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_24.0 = add i64 %i, %l1
  %_24.1 = icmp ult i64 %_24.0, %i
  br i1 %_24.1, label %panic, label %bb12

bb12:                                             ; preds = %bb11
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %18 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E"(ptr align 8 %N, i64 %i, i64 %_24.0, ptr align 8 @alloc_1ffb130ac39c8ca8f51bcb2b0095d451)
          to label %bb13 unwind label %cleanup

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_86f3ab4c1798175ab89f63f94d44039d) #25
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic1, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %_20.0 = extractvalue { ptr, i64 } %18, 0
  %_20.1 = extractvalue { ptr, i64 } %18, 1
  store ptr %_20.0, ptr %t, align 8
  %19 = getelementptr inbounds i8, ptr %t, i64 8
  store i64 %_20.1, ptr %19, align 8
  %20 = load ptr, ptr %s, align 8
  %21 = getelementptr inbounds i8, ptr %s, i64 8
  %22 = load i64, ptr %21, align 8
; invoke core::str::<impl str>::starts_with
  %_25 = invoke zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE"(ptr align 1 %20, i64 %22, i32 48)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  br i1 %_25, label %bb5, label %bb15

bb15:                                             ; preds = %bb14
  %23 = load ptr, ptr %t, align 8
  %24 = getelementptr inbounds i8, ptr %t, i64 8
  %25 = load i64, ptr %24, align 8
; invoke core::str::<impl str>::starts_with
  %_26 = invoke zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE"(ptr align 1 %23, i64 %25, i32 48)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  br i1 %_26, label %bb5, label %bb17

bb17:                                             ; preds = %bb16
; invoke core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::eq
  %_27 = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h245db563f56abb8dE"(ptr align 8 %s, ptr align 8 %t)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  br i1 %_27, label %bb19, label %bb5

bb19:                                             ; preds = %bb18
  %26 = load i32, ptr %count, align 4
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 1)
  %_30.0 = extractvalue { i32, i1 } %27, 0
  %_30.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_30.1, label %panic1, label %bb20

bb20:                                             ; preds = %bb19
  store i32 %_30.0, ptr %count, align 4
  br label %bb5

panic1:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e57a74fec0e5edf215b6c2e8807df9c9) #25
          to label %unreachable unwind label %cleanup

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb22
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #22
  unreachable

bb23:                                             ; preds = %bb22
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}
