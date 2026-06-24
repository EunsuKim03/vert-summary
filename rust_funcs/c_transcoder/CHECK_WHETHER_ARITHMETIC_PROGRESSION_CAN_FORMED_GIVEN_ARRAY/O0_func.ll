define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_19 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %n1 = sext i32 %n to i64
  %_4 = icmp eq i64 %n1, 1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h461af4d195a80f37E"(ptr align 4 %arr, i64 2) #20
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 1
  %_9 = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_12 = load i32, ptr %3, align 4
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_9, i32 %_12)
  %_15.0 = extractvalue { i32, i1 } %4, 0
  %_15.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_15.1, label %panic, label %bb6

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb18

bb6:                                              ; preds = %bb2
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h67a2d035d541d2deE"(i64 2, i64 %n1) #20
  %_16.0 = extractvalue { i64, i64 } %5, 0
  %_16.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_16.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_16.1, ptr %6, align 8
  br label %bb8

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5ff43c6eea4dc96046cfa1f2861cecb7) #22
  unreachable

bb8:                                              ; preds = %bb16, %bb6
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdaf03364e6a9a8c4E"(ptr align 8 %iter) #20
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_19, align 8
  %10 = getelementptr inbounds i8, ptr %_19, i64 8
  store i64 %9, ptr %10, align 8
  %_21 = load i64, ptr %_19, align 8
  %11 = getelementptr inbounds i8, ptr %_19, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_21 to i1
  br i1 %13, label %bb11, label %bb12

bb11:                                             ; preds = %bb8
  %14 = getelementptr inbounds i8, ptr %_19, i64 8
  %i = load i64, ptr %14, align 8
  %_26 = icmp ult i64 %i, 2
  br i1 %_26, label %bb13, label %panic2

bb12:                                             ; preds = %bb8
  store i32 1, ptr %_0, align 4
  br label %bb18

bb18:                                             ; preds = %bb1, %bb17, %bb12
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb13:                                             ; preds = %bb11
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_25 = load i32, ptr %16, align 4
  %_29.0 = sub i64 %i, 1
  %_29.1 = icmp ult i64 %i, 1
  br i1 %_29.1, label %panic3, label %bb14

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_9972ad9b29499ca7b674268c09717254) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_30 = icmp ult i64 %_29.0, 2
  br i1 %_30, label %bb15, label %panic4

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2d37a9871fada046a3aec5bc6e06213e) #22
  unreachable

bb15:                                             ; preds = %bb14
  %17 = getelementptr inbounds nuw i32, ptr %arr, i64 %_29.0
  %_27 = load i32, ptr %17, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_25, i32 %_27)
  %_31.0 = extractvalue { i32, i1 } %18, 0
  %_31.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_31.1, label %panic5, label %bb16

panic4:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_29.0, i64 2, ptr align 8 @alloc_5b6dd9e6a477a7e0e57e40875bf24eac) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_23 = icmp ne i32 %_31.0, %_15.0
  br i1 %_23, label %bb17, label %bb8

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9972ad9b29499ca7b674268c09717254) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 0, ptr %_0, align 4
  br label %bb18

bb10:                                             ; No predecessors!
  unreachable
}
