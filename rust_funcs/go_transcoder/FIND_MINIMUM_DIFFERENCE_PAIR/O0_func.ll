define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_20 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %diff = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 2147483647, ptr %diff, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_6 = sext i32 %_8.0 to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17haac6bcf573959deaE"(i64 0, i64 %_6) #21
  %_4.0 = extractvalue { i64, i64 } %3, 0
  %_4.1 = extractvalue { i64, i64 } %3, 1
  store i64 %_4.0, ptr %iter, align 8
  %4 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %4, align 8
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_93d8136b9924f49daa96c0466dc902b4) #20
  unreachable

bb3:                                              ; preds = %bb10, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h83a6ccc922d3384bE"(ptr align 8 %iter) #21
  %6 = extractvalue { i64, i64 } %5, 0
  %7 = extractvalue { i64, i64 } %5, 1
  store i64 %6, ptr %_10, align 8
  %8 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %7, ptr %8, align 8
  %_12 = load i64, ptr %_10, align 8
  %9 = getelementptr inbounds i8, ptr %_10, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = trunc nuw i64 %_12 to i1
  br i1 %11, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %12 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %12, align 8
  %_17.0 = add i64 %i, 1
  %_17.1 = icmp ult i64 %_17.0, %i
  br i1 %_17.1, label %panic2, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %diff, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_18 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17haac6bcf573959deaE"(i64 %_17.0, i64 %_18) #21
  %_14.0 = extractvalue { i64, i64 } %13, 0
  %_14.1 = extractvalue { i64, i64 } %13, 1
  store i64 %_14.0, ptr %iter1, align 8
  %14 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_14.1, ptr %14, align 8
  br label %bb10

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a28a8cf833bcbf2b4be0e5165aa67189) #20
  unreachable

bb10:                                             ; preds = %bb15, %bb8
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h83a6ccc922d3384bE"(ptr align 8 %iter1) #21
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  store i64 %16, ptr %_20, align 8
  %18 = getelementptr inbounds i8, ptr %_20, i64 8
  store i64 %17, ptr %18, align 8
  %_22 = load i64, ptr %_20, align 8
  %19 = getelementptr inbounds i8, ptr %_20, i64 8
  %20 = load i64, ptr %19, align 8
  %21 = trunc nuw i64 %_22 to i1
  br i1 %21, label %bb12, label %bb3

bb12:                                             ; preds = %bb10
  %22 = getelementptr inbounds i8, ptr %_20, i64 8
  %j = load i64, ptr %22, align 8
  %_25 = load i32, ptr %diff, align 4
  %_29 = icmp ult i64 %i, 2
  br i1 %_29, label %bb13, label %panic3

bb13:                                             ; preds = %bb12
  %23 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_28 = load i32, ptr %23, align 4
  %_31 = icmp ult i64 %j, 2
  br i1 %_31, label %bb14, label %panic4

panic3:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_eb80c4f76e330d7d9a37078f76c4858c) #20
  unreachable

bb14:                                             ; preds = %bb13
  %24 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_30 = load i32, ptr %24, align 4
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_28, i32 %_30)
  %_32.0 = extractvalue { i32, i1 } %25, 0
  %_32.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_32.1, label %panic5, label %bb15

panic4:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_9bacd6fca5735c30055c8dbd0f953e7b) #20
  unreachable

bb15:                                             ; preds = %bb14
; call core::num::<impl i32>::abs
  %_26 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h44a7e8b90b0616eeE"(i32 %_32.0) #21
; call core::cmp::Ord::min
  %_24 = call i32 @_ZN4core3cmp3Ord3min17h11afdf31c484cd68E(i32 %_25, i32 %_26) #21
  store i32 %_24, ptr %diff, align 4
  br label %bb10

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_283bb99831f0da15a1d5ac54deec3ede) #20
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
