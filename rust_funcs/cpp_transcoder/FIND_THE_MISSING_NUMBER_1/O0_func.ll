define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %total = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store i32 1, ptr %total, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_7.0 = extractvalue { i32, i1 } %2, 0
  %_7.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h7a1be11898a6f59cE"(ptr sret([12 x i8]) align 4 %_5, i32 2, i32 %_7.0) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hef19f440baeaf18eE"(ptr sret([12 x i8]) align 4 %_4, ptr align 4 %_5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_4, i64 12, i1 false)
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_134071e599d9f5894ca0b06ec394e05b) #22
  unreachable

bb4:                                              ; preds = %bb12, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h524930415dbe374bE"(ptr align 4 %iter) #17
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_9, align 4
  %6 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_9, align 4
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  %9 = load i32, ptr %8, align 4
  %_11 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_11 to i1
  br i1 %10, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %11 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %11, align 4
  %12 = load i32, ptr %total, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 %i)
  %_13.0 = extractvalue { i32, i1 } %13, 0
  %_13.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_13.1, label %panic1, label %bb9

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %total, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  store i32 %_13.0, ptr %total, align 4
  %_16 = sext i32 %i to i64
  %_17.0 = sub i64 %_16, 2
  %_17.1 = icmp ult i64 %_16, 2
  br i1 %_17.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ef4f2d498e9fdb10711c37d0444ee34d) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_18 = icmp ult i64 %_17.0, 2
  br i1 %_18, label %bb11, label %panic3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d0a76606debe69f68c675ceb0b254a06) #22
  unreachable

bb11:                                             ; preds = %bb10
  %14 = getelementptr inbounds nuw i32, ptr %a, i64 %_17.0
  %_14 = load i32, ptr %14, align 4
  %15 = load i32, ptr %total, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %15, i32 %_14)
  %_19.0 = extractvalue { i32, i1 } %16, 0
  %_19.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_19.1, label %panic4, label %bb12

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17.0, i64 2, ptr align 8 @alloc_fa4536fa7a8b60cc860a632acbdca4d0) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_19.0, ptr %total, align 4
  br label %bb4

panic4:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_83ec35325bb0ec7fff473872e6e5a661) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
