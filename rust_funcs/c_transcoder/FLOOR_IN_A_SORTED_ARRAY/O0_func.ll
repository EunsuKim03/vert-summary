define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %_18 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_7 = sext i32 %n to i64
  %_8.0 = sub i64 %_7, 1
  %_8.1 = icmp ult i64 %_7, 1
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_9 = icmp ult i64 %_8.0, 2
  br i1 %_9, label %bb2, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9bdfe7a0cb9b3757b741e5b0ead7813e) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_8.0
  %_5 = load i32, ptr %2, align 4
  %_4 = icmp sge i32 %x, %_5
  br i1 %_4, label %bb3, label %bb5

panic1:                                           ; preds = %bb1
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_8.0, i64 2, ptr align 8 @alloc_6404a44fa4ef95d4358b8a2729ccab3c) #22
  unreachable

bb5:                                              ; preds = %bb2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_12 = load i32, ptr %3, align 4
  %_11 = icmp slt i32 %x, %_12
  br i1 %_11, label %bb7, label %bb8

bb3:                                              ; preds = %bb2
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_10.0 = extractvalue { i32, i1 } %4, 0
  %_10.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_10.1, label %panic4, label %bb4

bb8:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc29ac39e69d31a02E"(i32 1, i32 %n) #20
  %_15.0 = extractvalue { i32, i32 } %5, 0
  %_15.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_15.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_15.1, ptr %6, align 4
  br label %bb10

bb7:                                              ; preds = %bb5
  store i32 -1, ptr %_0, align 4
  br label %bb18

bb10:                                             ; preds = %bb15, %bb8
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5b0b7bb53f443e7fE"(ptr align 4 %iter) #20
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_18, align 4
  %10 = getelementptr inbounds i8, ptr %_18, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_18, align 4
  %12 = getelementptr inbounds i8, ptr %_18, i64 4
  %13 = load i32, ptr %12, align 4
  %_20 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_20 to i1
  br i1 %14, label %bb13, label %bb14

bb13:                                             ; preds = %bb10
  %15 = getelementptr inbounds i8, ptr %_18, i64 4
  %i = load i32, ptr %15, align 4
  %_24 = sext i32 %i to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb15, label %panic2

bb14:                                             ; preds = %bb10
  store i32 -1, ptr %_0, align 4
  br label %bb18

bb18:                                             ; preds = %bb4, %bb7, %bb17, %bb14
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb15:                                             ; preds = %bb13
  %17 = getelementptr inbounds nuw i32, ptr %arr, i64 %_24
  %_23 = load i32, ptr %17, align 4
  %_22 = icmp sgt i32 %_23, %x
  br i1 %_22, label %bb16, label %bb10

panic2:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_73e5a2c70922e3ef7c1ab2fc18c99199) #22
  unreachable

bb16:                                             ; preds = %bb15
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_26.0 = extractvalue { i32, i1 } %18, 0
  %_26.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_26.1, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
  store i32 %_26.0, ptr %_0, align 4
  br label %bb18

panic3:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_14f6fe50217c9f8c8a7a3f53894eebed) #22
  unreachable

bb12:                                             ; No predecessors!
  unreachable

bb4:                                              ; preds = %bb3
  store i32 %_10.0, ptr %_0, align 4
  br label %bb18

panic4:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a3b273cb0e912f284a03304817023b3d) #22
  unreachable
}
