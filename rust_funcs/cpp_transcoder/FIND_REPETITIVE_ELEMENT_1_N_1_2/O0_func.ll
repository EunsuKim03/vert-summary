define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %res, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_7.0 = extractvalue { i32, i1 } %2, 0
  %_7.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1444c50f4f3f9583E"(i32 0, i32 %_7.0) #20
  %_4.0 = extractvalue { i32, i32 } %3, 0
  %_4.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_4.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %4, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3216b93fd49ba76b421d06821387deb0) #22
  unreachable

bb3:                                              ; preds = %bb9, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6f2493189f196d26E"(ptr align 4 %iter) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_9, align 4
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_9, align 4
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  %11 = load i32, ptr %10, align 4
  %_11 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_11 to i1
  br i1 %12, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %13 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %13, align 4
  %_14 = load i32, ptr %res, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_16.0 = extractvalue { i32, i1 } %14, 0
  %_16.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_16.1, label %panic3, label %bb8

bb7:                                              ; preds = %bb3
  %_20 = load i32, ptr %res, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_24.0 = extractvalue { i32, i1 } %15, 0
  %_24.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_24.1, label %panic1, label %bb10

bb10:                                             ; preds = %bb7
  %_22 = sext i32 %_24.0 to i64
  %_25 = icmp ult i64 %_22, 2
  br i1 %_25, label %bb11, label %panic2

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_26b16a7aaf60b2d2eba0461f31f39ac5) #22
  unreachable

bb11:                                             ; preds = %bb10
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %_21 = load i32, ptr %16, align 4
  %17 = xor i32 %_20, %_21
  store i32 %17, ptr %res, align 4
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_aed8be85cd359367044931f8115b68fe) #22
  unreachable

bb8:                                              ; preds = %bb6
  %_13 = xor i32 %_14, %_16.0
  %_18 = sext i32 %i to i64
  %_19 = icmp ult i64 %_18, 2
  br i1 %_19, label %bb9, label %panic4

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_01b3aee4b98598439c5f655aee9660cd) #22
  unreachable

bb9:                                              ; preds = %bb8
  %18 = getelementptr inbounds nuw i32, ptr %arr, i64 %_18
  %_17 = load i32, ptr %18, align 4
  %19 = xor i32 %_13, %_17
  store i32 %19, ptr %res, align 4
  br label %bb3

panic4:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_8f981141c0dda8cb9a2bfadf094fd338) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
