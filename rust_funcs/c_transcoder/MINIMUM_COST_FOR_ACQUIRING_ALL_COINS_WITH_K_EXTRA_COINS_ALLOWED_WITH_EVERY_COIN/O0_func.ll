define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_18 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %ans = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %coin = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %coin, ptr align 8 %1, i64 8, i1 false)
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5bd5bd7c29b4dc04E"(ptr align 4 %coin, i64 2) #20
  %_10 = sitofp i32 %n to float
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %k, i32 1)
  %_13.0 = extractvalue { i32, i1 } %2, 0
  %_13.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_13.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_11 = sitofp i32 %_13.0 to float
  %_9 = fdiv float %_10, %_11
; call std::f32::<impl f32>::ceil
  %_8 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4ceil17h29ceb018f0fedf5bE"(float %_9) #20
  %coins_needed = call i32 @llvm.fptosi.sat.i32.f32(float %_8)
  store i32 0, ptr %ans, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h906ef883793e454bE"(i32 0, i32 %coins_needed) #20
  %_15.0 = extractvalue { i32, i32 } %3, 0
  %_15.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_15.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_15.1, ptr %4, align 4
  br label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_64275d19002dc188e9d90c313f1af959) #22
  unreachable

bb5:                                              ; preds = %bb11, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h98b61c19aba8b316E"(ptr align 4 %iter) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_18, align 4
  %8 = getelementptr inbounds i8, ptr %_18, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_18, align 4
  %10 = getelementptr inbounds i8, ptr %_18, i64 4
  %11 = load i32, ptr %10, align 4
  %_20 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_20 to i1
  br i1 %12, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %13 = getelementptr inbounds i8, ptr %_18, i64 4
  %i = load i32, ptr %13, align 4
  %_23 = sext i32 %i to i64
  %_24 = icmp ult i64 %_23, 2
  br i1 %_24, label %bb10, label %panic1

bb9:                                              ; preds = %bb5
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %14 = getelementptr inbounds nuw i32, ptr %coin, i64 %_23
  %_22 = load i32, ptr %14, align 4
  %15 = load i32, ptr %ans, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 %_22)
  %_25.0 = extractvalue { i32, i1 } %16, 0
  %_25.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_25.1, label %panic2, label %bb11

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 2, ptr align 8 @alloc_720df47507a6986b360d679d827ada95) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_25.0, ptr %ans, align 4
  br label %bb5

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_eb6b358d5a5d53a3f24452733804df5f) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}
