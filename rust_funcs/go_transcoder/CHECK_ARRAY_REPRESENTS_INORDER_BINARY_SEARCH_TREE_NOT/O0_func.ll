define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_12 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %prev = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_3 = icmp eq i32 %n, 0
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_4 = icmp eq i32 %n, 1
  br i1 %_4, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 1, ptr %_0, align 4
  br label %bb15

bb3:                                              ; preds = %bb1
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %prev, align 4
  %_10 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fe0ee0d76449820E"(i64 1, i64 %_10) #20
  %_8.0 = extractvalue { i64, i64 } %4, 0
  %_8.1 = extractvalue { i64, i64 } %4, 1
  store i64 %_8.0, ptr %iter, align 8
  %5 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_8.1, ptr %5, align 8
  br label %bb6

bb6:                                              ; preds = %bb14, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6fcd2b4fb4467a23E"(ptr align 8 %iter) #20
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  store i64 %7, ptr %_12, align 8
  %9 = getelementptr inbounds i8, ptr %_12, i64 8
  store i64 %8, ptr %9, align 8
  %_14 = load i64, ptr %_12, align 8
  %10 = getelementptr inbounds i8, ptr %_12, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = trunc nuw i64 %_14 to i1
  br i1 %12, label %bb9, label %bb10

bb9:                                              ; preds = %bb6
  %13 = getelementptr inbounds i8, ptr %_12, i64 8
  %i = load i64, ptr %13, align 8
  %_17 = load i32, ptr %prev, align 4
  %_19 = icmp ult i64 %i, 2
  br i1 %_19, label %bb11, label %panic

bb10:                                             ; preds = %bb6
  store i32 1, ptr %_0, align 4
  br label %bb15

bb15:                                             ; preds = %bb2, %bb12, %bb10
  %14 = load i32, ptr %_0, align 4
  ret i32 %14

bb11:                                             ; preds = %bb9
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_18 = load i32, ptr %15, align 4
  %_16 = icmp sgt i32 %_17, %_18
  br i1 %_16, label %bb12, label %bb13

panic:                                            ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_8d921cfed0b8f8443a578ad0733d632c) #22
  unreachable

bb13:                                             ; preds = %bb11
  %_21 = icmp ult i64 %i, 2
  br i1 %_21, label %bb14, label %panic1

bb12:                                             ; preds = %bb11
  store i32 0, ptr %_0, align 4
  br label %bb15

bb14:                                             ; preds = %bb13
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_20 = load i32, ptr %16, align 4
  store i32 %_20, ptr %prev, align 4
  br label %bb6

panic1:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_e5725848edfc5403aa5c1621a276e6b3) #22
  unreachable

bb8:                                              ; No predecessors!
  unreachable
}
