define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  store i32 0, ptr %result, align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17ha9098db169c3666bE(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb20:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h928a35790b52e802E"(ptr align 8 %s) #22
          to label %bb21 unwind label %terminate

cleanup:                                          ; preds = %panic3, %bb15, %bb14, %panic2, %bb12, %panic, %bb9, %bb6, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb20

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8cd67896268825f0E"(i64 0, i64 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_5.0 = extractvalue { i64, i64 } %5, 0
  %_5.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_5.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb10, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5182fcda00aa7bfbE"(ptr align 8 %iter)
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
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_8, i64 8
  %i = load i64, ptr %14, align 8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %15 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8cd67896268825f0E"(i64 %i, i64 %n)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  %_0 = load i32, ptr %result, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h928a35790b52e802E"(ptr align 8 %s)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_12.0 = extractvalue { i64, i64 } %15, 0
  %_12.1 = extractvalue { i64, i64 } %15, 1
  store i64 %_12.0, ptr %iter1, align 8
  %16 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_12.1, ptr %16, align 8
  br label %bb9

bb9:                                              ; preds = %bb18, %bb16, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %17 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5182fcda00aa7bfbE"(ptr align 8 %iter1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  store i64 %18, ptr %_15, align 8
  %20 = getelementptr inbounds i8, ptr %_15, i64 8
  store i64 %19, ptr %20, align 8
  %_17 = load i64, ptr %_15, align 8
  %21 = getelementptr inbounds i8, ptr %_15, i64 8
  %22 = load i64, ptr %21, align 8
  %23 = trunc nuw i64 %_17 to i1
  br i1 %23, label %bb11, label %bb3

bb11:                                             ; preds = %bb10
  %24 = getelementptr inbounds i8, ptr %_15, i64 8
  %j = load i64, ptr %24, align 8
  %_24.0 = add i64 %i, 1
  %_24.1 = icmp ult i64 %_24.0, %i
  br i1 %_24.1, label %panic, label %bb12

bb12:                                             ; preds = %bb11
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %25 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E"(ptr align 8 %s, i64 %i, i64 %_24.0, ptr align 8 @alloc_14a7387d30e9abb0ad6712e3f36724b8)
          to label %bb13 unwind label %cleanup

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c0b82602499dd68fc5fb95a439d7ecee) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %_20.0 = extractvalue { ptr, i64 } %25, 0
  %_20.1 = extractvalue { ptr, i64 } %25, 1
  %_29.0 = add i64 %j, 1
  %_29.1 = icmp ult i64 %_29.0, %j
  br i1 %_29.1, label %panic2, label %bb14

bb14:                                             ; preds = %bb13
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %26 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2241b1b722366a15E"(ptr align 8 %s, i64 %j, i64 %_29.0, ptr align 8 @alloc_298ce3af6bd84e2d4444a31b53f3dca8)
          to label %bb15 unwind label %cleanup

panic2:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4b0e666a7405d8bc704ca8aed0eb8c76) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_25.0 = extractvalue { ptr, i64 } %26, 0
  %_25.1 = extractvalue { ptr, i64 } %26, 1
; invoke core::str::traits::<impl core::cmp::PartialEq for str>::eq
  %_19 = invoke zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h95d9eb50c991f6d3E"(ptr align 1 %_20.0, i64 %_20.1, ptr align 1 %_25.0, i64 %_25.1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  br i1 %_19, label %bb17, label %bb9

bb17:                                             ; preds = %bb16
  %27 = load i32, ptr %result, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1)
  %_30.0 = extractvalue { i32, i1 } %28, 0
  %_30.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_30.1, label %panic3, label %bb18

bb18:                                             ; preds = %bb17
  store i32 %_30.0, ptr %result, align 4
  br label %bb9

panic3:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1ffe5a090749df86fe09c77757991336) #24
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb20
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb21:                                             ; preds = %bb20
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds i8, ptr %0, i64 8
  %32 = load i32, ptr %31, align 8
  %33 = insertvalue { ptr, i32 } poison, ptr %30, 0
  %34 = insertvalue { ptr, i32 } %33, i32 %32, 1
  resume { ptr, i32 } %34
}
