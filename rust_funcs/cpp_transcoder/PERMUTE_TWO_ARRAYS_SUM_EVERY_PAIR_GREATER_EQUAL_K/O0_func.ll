define i32 @f_gold(ptr align 4 %a.0, i64 %a.1, ptr align 4 %b.0, i64 %b.1, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE"(ptr align 4 %a.0, i64 %a.1) #20
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E"(ptr align 4 %b.0, i64 %b.1) #20
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d88025db2e74946E"(i32 0, i32 %n) #20
  %_7.0 = extractvalue { i32, i32 } %0, 0
  %_7.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_7.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %1, align 4
  br label %bb4

bb4:                                              ; preds = %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h12f8417716cb4bd5E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_10, align 4
  %5 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_10, align 4
  %7 = getelementptr inbounds i8, ptr %_10, i64 4
  %8 = load i32, ptr %7, align 4
  %_12 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_12 to i1
  br i1 %9, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %10 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %10, align 4
  %_17 = sext i32 %i to i64
  %_20 = icmp ult i64 %_17, %a.1
  br i1 %_20, label %bb9, label %panic

bb8:                                              ; preds = %bb4
  store i32 1, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb12, %bb8
  %11 = load i32, ptr %_0, align 4
  ret i32 %11

bb9:                                              ; preds = %bb7
  %12 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_17
  %_16 = load i32, ptr %12, align 4
  %_22 = sext i32 %i to i64
  %_25 = icmp ult i64 %_22, %b.1
  br i1 %_25, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 %a.1, ptr align 8 @alloc_1a2ee0b019ed70f55536196ba492661d) #22
  unreachable

bb10:                                             ; preds = %bb9
  %13 = getelementptr inbounds nuw i32, ptr %b.0, i64 %_22
  %_21 = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_16, i32 %_21)
  %_26.0 = extractvalue { i32, i1 } %14, 0
  %_26.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_26.1, label %panic2, label %bb11

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 %b.1, ptr align 8 @alloc_6eb7515f2e20320b75b916ddc6ae64cb) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_14 = icmp slt i32 %_26.0, %k
  br i1 %_14, label %bb12, label %bb4

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1a2ee0b019ed70f55536196ba492661d) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 0, ptr %_0, align 4
  br label %bb13

bb6:                                              ; No predecessors!
  unreachable
}
