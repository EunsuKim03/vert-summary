define i32 @f_gold(i64 %0, i64 %1, i32 %m, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %_19 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %count = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr2 = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr1, ptr align 8 %3, i64 8, i1 false)
  store i64 %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr2, ptr align 8 %2, i64 8, i1 false)
  store i32 0, ptr %count, align 4
  %_9 = sext i32 %m to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3e5a6e14a2eced1aE"(i64 0, i64 %_9) #20
  %_7.0 = extractvalue { i64, i64 } %4, 0
  %_7.1 = extractvalue { i64, i64 } %4, 1
  store i64 %_7.0, ptr %iter, align 8
  %5 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_7.1, ptr %5, align 8
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he2a102163840300fE"(ptr align 8 %iter) #20
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  store i64 %7, ptr %_11, align 8
  %9 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %8, ptr %9, align 8
  %_13 = load i64, ptr %_11, align 8
  %10 = getelementptr inbounds i8, ptr %_11, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = trunc nuw i64 %_13 to i1
  br i1 %12, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %13 = getelementptr inbounds i8, ptr %_11, i64 8
  %i = load i64, ptr %13, align 8
  %_17 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3e5a6e14a2eced1aE"(i64 0, i64 %_17) #20
  %_15.0 = extractvalue { i64, i64 } %14, 0
  %_15.1 = extractvalue { i64, i64 } %14, 1
  store i64 %_15.0, ptr %iter1, align 8
  %15 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_15.1, ptr %15, align 8
  br label %bb8

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb15, %bb13, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he2a102163840300fE"(ptr align 8 %iter1) #20
  %17 = extractvalue { i64, i64 } %16, 0
  %18 = extractvalue { i64, i64 } %16, 1
  store i64 %17, ptr %_19, align 8
  %19 = getelementptr inbounds i8, ptr %_19, i64 8
  store i64 %18, ptr %19, align 8
  %_21 = load i64, ptr %_19, align 8
  %20 = getelementptr inbounds i8, ptr %_19, i64 8
  %21 = load i64, ptr %20, align 8
  %22 = trunc nuw i64 %_21 to i1
  br i1 %22, label %bb10, label %bb2

bb10:                                             ; preds = %bb8
  %23 = getelementptr inbounds i8, ptr %_19, i64 8
  %j = load i64, ptr %23, align 8
  %_26 = icmp ult i64 %i, 2
  br i1 %_26, label %bb11, label %panic

bb11:                                             ; preds = %bb10
  %24 = getelementptr inbounds nuw i32, ptr %arr1, i64 %i
  %_25 = load i32, ptr %24, align 4
  %_28 = icmp ult i64 %j, 2
  br i1 %_28, label %bb12, label %panic2

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_cbb7c1d5329b8da382fead80df7aa940) #22
  unreachable

bb12:                                             ; preds = %bb11
  %25 = getelementptr inbounds nuw i32, ptr %arr2, i64 %j
  %_27 = load i32, ptr %25, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_25, i32 %_27)
  %_29.0 = extractvalue { i32, i1 } %26, 0
  %_29.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_29.1, label %panic3, label %bb13

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_b86bf6ac912e92f0477b86200d887d49) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_23 = icmp eq i32 %_29.0, %x
  br i1 %_23, label %bb14, label %bb8

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_93f8a6bcbfc767c44a021ce88c1e0835) #22
  unreachable

bb14:                                             ; preds = %bb13
  %27 = load i32, ptr %count, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1)
  %_30.0 = extractvalue { i32, i1 } %28, 0
  %_30.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_30.1, label %panic4, label %bb15

bb15:                                             ; preds = %bb14
  store i32 %_30.0, ptr %count, align 4
  br label %bb8

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ce7bfabd3161c8a580e925505a60a5c7) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
