define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %j = alloca [8 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %n1 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0cd3043270f24f66E"(i64 0, i64 %n1) #20
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_4.0, ptr %iter, align 8
  %3 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb14, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2a422a1491deff37E"(ptr align 8 %iter) #20
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %_7, align 8
  %7 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %6, ptr %7, align 8
  %_9 = load i64, ptr %_7, align 8
  %8 = getelementptr inbounds i8, ptr %_7, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = trunc nuw i64 %_9 to i1
  br i1 %10, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %11 = getelementptr inbounds i8, ptr %_7, i64 8
  %i = load i64, ptr %11, align 8
  store i64 0, ptr %j, align 8
  br label %bb7

bb6:                                              ; preds = %bb2
  store i32 -1, ptr %_0, align 4
  br label %bb17

bb17:                                             ; preds = %bb16, %bb6
  %12 = load i32, ptr %_0, align 4
  ret i32 %12

bb7:                                              ; preds = %bb13, %bb5
  %_13 = load i64, ptr %j, align 8
  %_12 = icmp ult i64 %_13, %n1
  br i1 %_12, label %bb8, label %bb14

bb14:                                             ; preds = %bb11, %bb7
  %_24 = load i64, ptr %j, align 8
  %_23 = icmp eq i64 %_24, %n1
  br i1 %_23, label %bb15, label %bb2

bb8:                                              ; preds = %bb7
  %_15 = load i64, ptr %j, align 8
  %_14 = icmp ne i64 %i, %_15
  br i1 %_14, label %bb9, label %bb12

bb12:                                             ; preds = %bb11, %bb8
  %13 = load i64, ptr %j, align 8
  %_22.0 = add i64 %13, 1
  %_22.1 = icmp ult i64 %_22.0, %13
  br i1 %_22.1, label %panic3, label %bb13

bb9:                                              ; preds = %bb8
  %_18 = icmp ult i64 %i, 2
  br i1 %_18, label %bb10, label %panic

bb10:                                             ; preds = %bb9
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_17 = load i32, ptr %14, align 4
  %_20 = load i64, ptr %j, align 8
  %_21 = icmp ult i64 %_20, 2
  br i1 %_21, label %bb11, label %panic2

panic:                                            ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_38a537169da9290d117e3a876c4f6466) #22
  unreachable

bb11:                                             ; preds = %bb10
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_20
  %_19 = load i32, ptr %15, align 4
  %_16 = icmp eq i32 %_17, %_19
  br i1 %_16, label %bb14, label %bb12

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 2, ptr align 8 @alloc_ebbc6e0b0310f406638be6701abe67ab) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i64 %_22.0, ptr %j, align 8
  br label %bb7

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f3fe9aa3e0b10f9f40c7b48aae45c161) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_25 = icmp ult i64 %i, 2
  br i1 %_25, label %bb16, label %panic4

bb16:                                             ; preds = %bb15
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %_0, align 4
  br label %bb17

panic4:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_68474bdaccb7a8899d692ae786abcff1) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
