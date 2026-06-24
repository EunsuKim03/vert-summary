define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_22 = alloca [16 x i8], align 8
  %_20 = alloca [4 x i8], align 4
  %_16 = alloca [16 x i8], align 8
  %_14 = alloca [4 x i8], align 4
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %flag = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17hea5e7f7afa069f64E(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb20:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd0e57e876de3babeE"(ptr align 8 %s) #21
          to label %bb21 unwind label %terminate

cleanup:                                          ; preds = %bb12, %bb11, %bb10, %bb9, %bb8, %bb7, %bb6, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb20

bb1:                                              ; preds = %start
  store i32 0, ptr %flag, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h652c2415d29de430E"(i64 1, i64 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_5.0 = extractvalue { i64, i64 } %5, 0
  %_5.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_5.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb13, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5ae42d374490f46dE"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_8, align 8
  %10 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %9, ptr %10, align 8
  %_10 = load i64, ptr %_8, align 8
  %11 = getelementptr inbounds i8, ptr %_8, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_10 to i1
  br i1 %13, label %bb6, label %bb15

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_8, i64 8
  %i = load i64, ptr %14, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3057977b8f2078e8E"(ptr align 8 %s)
          to label %bb7 unwind label %cleanup

bb15:                                             ; preds = %bb14, %bb4
  %_26 = load i32, ptr %flag, align 4
  %_25 = icmp eq i32 %_26, 0
  br i1 %_25, label %bb16, label %bb17

bb7:                                              ; preds = %bb6
  %_17.0 = extractvalue { ptr, i64 } %15, 0
  %_17.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %16 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h533345c21b09508dE"(ptr align 1 %_17.0, i64 %_17.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %17 = extractvalue { ptr, ptr } %16, 0
  %18 = extractvalue { ptr, ptr } %16, 1
  store ptr %17, ptr %_16, align 8
  %19 = getelementptr inbounds i8, ptr %_16, i64 8
  store ptr %18, ptr %19, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %20 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E(ptr align 8 %_16, i64 %i)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  store i32 %20, ptr %_14, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %21 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3057977b8f2078e8E"(ptr align 8 %s)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %_23.0 = extractvalue { ptr, i64 } %21, 0
  %_23.1 = extractvalue { ptr, i64 } %21, 1
; invoke core::str::<impl str>::chars
  %22 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h533345c21b09508dE"(ptr align 1 %_23.0, i64 %_23.1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %23 = extractvalue { ptr, ptr } %22, 0
  %24 = extractvalue { ptr, ptr } %22, 1
  store ptr %23, ptr %_22, align 8
  %25 = getelementptr inbounds i8, ptr %_22, i64 8
  store ptr %24, ptr %25, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %26 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E(ptr align 8 %_22, i64 0)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i32 %26, ptr %_20, align 4
; invoke core::cmp::PartialEq::ne
  %_12 = invoke zeroext i1 @_ZN4core3cmp9PartialEq2ne17hb4e9e7772fad7c92E(ptr align 4 %_14, ptr align 4 %_20)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  br i1 %_12, label %bb14, label %bb3

bb14:                                             ; preds = %bb13
  store i32 1, ptr %flag, align 4
  br label %bb15

bb17:                                             ; preds = %bb15
  store i32 0, ptr %_0, align 4
  br label %bb18

bb16:                                             ; preds = %bb15
  store i32 1, ptr %_0, align 4
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd0e57e876de3babeE"(ptr align 8 %s)
  %27 = load i32, ptr %_0, align 4
  ret i32 %27

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb20
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb21:                                             ; preds = %bb20
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}
