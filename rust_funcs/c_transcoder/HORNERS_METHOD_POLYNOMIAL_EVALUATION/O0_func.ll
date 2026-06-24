define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %result = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %poly = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %poly, ptr align 8 %1, i64 8, i1 false)
  %2 = getelementptr inbounds nuw i32, ptr %poly, i64 0
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %result, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha3d407f89be7863bE"(i32 1, i32 %n) #20
  %_7.0 = extractvalue { i32, i32 } %4, 0
  %_7.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_7.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %5, align 4
  br label %bb3

bb3:                                              ; preds = %bb10, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h402305603f435d00E"(ptr align 4 %iter) #20
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_10, align 4
  %9 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_10, align 4
  %11 = getelementptr inbounds i8, ptr %_10, i64 4
  %12 = load i32, ptr %11, align 4
  %_12 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_12 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %14 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %14, align 4
  %_15 = load i32, ptr %result, align 4
  %15 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15, i32 %x)
  %_16.0 = extractvalue { i32, i1 } %15, 0
  %_16.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_16.1, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_18 = sext i32 %i to i64
  %_19 = icmp ult i64 %_18, 2
  br i1 %_19, label %bb9, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_21f7161317563cbc676b78c671fffe86) #22
  unreachable

bb9:                                              ; preds = %bb8
  %16 = getelementptr inbounds nuw i32, ptr %poly, i64 %_18
  %_17 = load i32, ptr %16, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_16.0, i32 %_17)
  %_20.0 = extractvalue { i32, i1 } %17, 0
  %_20.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_20.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_b50e145a28ead3a49df1585c47e238db) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_20.0, ptr %result, align 4
  br label %bb3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_21f7161317563cbc676b78c671fffe86) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
