define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_14 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %diff = alloca [4 x i8], align 4
  %_5 = sext i32 %n to i64
; call <core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut
  %0 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h378ef2c6c21a7c5bE"(i64 0, i64 %_5, ptr align 4 %arr.0, i64 %arr.1, ptr align 8 @alloc_2cdb02dd27bc603a77120afc84d75e0b) #21
  %_0.0.i = extractvalue { ptr, i64 } %0, 0
  %_0.1.i = extractvalue { ptr, i64 } %0, 1
  %arr.01 = extractvalue { ptr, i64 } %0, 0
  %arr.12 = extractvalue { ptr, i64 } %0, 1
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h92621445bc9dbb20E"(ptr align 4 %arr.01, i64 %arr.12) #21
  store i32 2147483647, ptr %diff, align 4
  %_11 = sext i32 %n to i64
  %_12.0 = sub i64 %_11, 1
  %_12.1 = icmp ult i64 %_11, 1
  br i1 %_12.1, label %panic, label %bb3

bb3:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hce3a54b754de1e2cE"(i64 0, i64 %_12.0) #21
  %_8.0 = extractvalue { i64, i64 } %1, 0
  %_8.1 = extractvalue { i64, i64 } %1, 1
  store i64 %_8.0, ptr %iter, align 8
  %2 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_8.1, ptr %2, align 8
  br label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6a03adae9f7e3790859394467df68824) #17
  unreachable

bb5:                                              ; preds = %bb18, %bb13, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h02c5a8be5cb7f876E"(ptr align 8 %iter) #21
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  store i64 %4, ptr %_14, align 8
  %6 = getelementptr inbounds i8, ptr %_14, i64 8
  store i64 %5, ptr %6, align 8
  %_16 = load i64, ptr %_14, align 8
  %7 = getelementptr inbounds i8, ptr %_14, i64 8
  %8 = load i64, ptr %7, align 8
  %9 = trunc nuw i64 %_16 to i1
  br i1 %9, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %10 = getelementptr inbounds i8, ptr %_14, i64 8
  %i = load i64, ptr %10, align 8
  %_22.0 = add i64 %i, 1
  %_22.1 = icmp ult i64 %_22.0, %i
  br i1 %_22.1, label %panic3, label %bb10

bb9:                                              ; preds = %bb5
  %_0 = load i32, ptr %diff, align 4
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_25 = icmp ult i64 %_22.0, %arr.12
  br i1 %_25, label %bb11, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c617408f1cab80263ba64509d77a5b64) #17
  unreachable

bb11:                                             ; preds = %bb10
  %11 = getelementptr inbounds nuw i32, ptr %arr.01, i64 %_22.0
  %_20 = load i32, ptr %11, align 4
  %_29 = icmp ult i64 %i, %arr.12
  br i1 %_29, label %bb12, label %panic5

panic4:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22.0, i64 %arr.12, ptr align 8 @alloc_5324fe370d32f1e1056825184ae0db14) #17
  unreachable

bb12:                                             ; preds = %bb11
  %12 = getelementptr inbounds nuw i32, ptr %arr.01, i64 %i
  %_26 = load i32, ptr %12, align 4
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_20, i32 %_26)
  %_30.0 = extractvalue { i32, i1 } %13, 0
  %_30.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_30.1, label %panic6, label %bb13

panic5:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.12, ptr align 8 @alloc_3c52c45f48c26631e4d08f827081f755) #17
  unreachable

bb13:                                             ; preds = %bb12
  %_31 = load i32, ptr %diff, align 4
  %_18 = icmp slt i32 %_30.0, %_31
  br i1 %_18, label %bb14, label %bb5

panic6:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5324fe370d32f1e1056825184ae0db14) #17
  unreachable

bb14:                                             ; preds = %bb13
  %_34.0 = add i64 %i, 1
  %_34.1 = icmp ult i64 %_34.0, %i
  br i1 %_34.1, label %panic7, label %bb15

bb15:                                             ; preds = %bb14
  %_37 = icmp ult i64 %_34.0, %arr.12
  br i1 %_37, label %bb16, label %panic8

panic7:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f3f879c26bf0402e492e207a31ef6e0e) #17
  unreachable

bb16:                                             ; preds = %bb15
  %14 = getelementptr inbounds nuw i32, ptr %arr.01, i64 %_34.0
  %_32 = load i32, ptr %14, align 4
  %_41 = icmp ult i64 %i, %arr.12
  br i1 %_41, label %bb17, label %panic9

panic8:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_34.0, i64 %arr.12, ptr align 8 @alloc_366b8ae1c364a4e6239f5fc1489b8afa) #17
  unreachable

bb17:                                             ; preds = %bb16
  %15 = getelementptr inbounds nuw i32, ptr %arr.01, i64 %i
  %_38 = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_32, i32 %_38)
  %_42.0 = extractvalue { i32, i1 } %16, 0
  %_42.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_42.1, label %panic10, label %bb18

panic9:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.12, ptr align 8 @alloc_3cb17339ba5a5b36703811be16faac72) #17
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_42.0, ptr %diff, align 4
  br label %bb5

panic10:                                          ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_366b8ae1c364a4e6239f5fc1489b8afa) #17
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}
