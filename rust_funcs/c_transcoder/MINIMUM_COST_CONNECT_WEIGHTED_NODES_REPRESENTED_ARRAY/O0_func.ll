define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %mn = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store i32 2147483647, ptr %mn, align 4
  store i32 0, ptr %sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0e948a429e5f2e5E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb10, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4c4b4378509671d2E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_8, align 4
  %9 = getelementptr inbounds i8, ptr %_8, i64 4
  %10 = load i32, ptr %9, align 4
  %_10 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_10 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %12, align 4
  %_14 = sext i32 %i to i64
  %_15 = icmp ult i64 %_14, 2
  br i1 %_15, label %bb7, label %panic2

bb6:                                              ; preds = %bb2
  %_21 = load i32, ptr %mn, align 4
  %_23 = load i32, ptr %sum, align 4
  %_24 = load i32, ptr %mn, align 4
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_23, i32 %_24)
  %_25.0 = extractvalue { i32, i1 } %13, 0
  %_25.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_25.1, label %panic, label %bb11

bb11:                                             ; preds = %bb6
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_21, i32 %_25.0)
  %_26.0 = extractvalue { i32, i1 } %14, 0
  %_26.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_26.1, label %panic1, label %bb12

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2d603a5aa42e1330106a6475cb2831b6) #22
  unreachable

bb12:                                             ; preds = %bb11
  ret i32 %_26.0

panic1:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_17f5f8f81fa6acc400d063583bb48e61) #22
  unreachable

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds nuw i32, ptr %a, i64 %_14
  %_13 = load i32, ptr %15, align 4
  %_16 = load i32, ptr %mn, align 4
; call core::cmp::Ord::min
  %_12 = call i32 @_ZN4core3cmp3Ord3min17h69e50a5061cfb7e5E(i32 %_13, i32 %_16) #20
  store i32 %_12, ptr %mn, align 4
  %_18 = sext i32 %i to i64
  %_19 = icmp ult i64 %_18, 2
  br i1 %_19, label %bb9, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 2, ptr align 8 @alloc_4bd3d8b7149ab27e362f96f177cf9513) #22
  unreachable

bb9:                                              ; preds = %bb7
  %16 = getelementptr inbounds nuw i32, ptr %a, i64 %_18
  %_17 = load i32, ptr %16, align 4
  %17 = load i32, ptr %sum, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 %_17)
  %_20.0 = extractvalue { i32, i1 } %18, 0
  %_20.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_20.1, label %panic4, label %bb10

panic3:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_6089667775c8fc45eaceaa8b7b6385ae) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_20.0, ptr %sum, align 4
  br label %bb2

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_548f4871d6b43ad64e066f2967800674) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
