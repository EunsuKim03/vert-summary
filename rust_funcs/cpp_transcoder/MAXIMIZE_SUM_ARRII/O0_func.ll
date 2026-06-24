define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hecbc03128c160344E"(ptr align 4 %arr, i64 2) #20
  store i32 0, ptr %sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8d119424a725c43fE"(i32 0, i32 %n) #20
  %_7.0 = extractvalue { i32, i32 } %2, 0
  %_7.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_7.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %3, align 4
  br label %bb3

bb3:                                              ; preds = %bb10, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf4b518bd7033fac5E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_10, align 4
  %7 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_10, align 4
  %9 = getelementptr inbounds i8, ptr %_10, i64 4
  %10 = load i32, ptr %9, align 4
  %_12 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_12 to i1
  br i1 %11, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %12 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %12, align 4
  %_16 = sext i32 %i to i64
  %_17 = icmp ult i64 %_16, 2
  br i1 %_17, label %bb8, label %panic

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  %_15 = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15, i32 %i)
  %_18.0 = extractvalue { i32, i1 } %14, 0
  %_18.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_18.1, label %panic1, label %bb9

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_0b6bd549e7152e3219d87f755ab1df3d) #22
  unreachable

bb9:                                              ; preds = %bb8
  %15 = load i32, ptr %sum, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 %_18.0)
  %_19.0 = extractvalue { i32, i1 } %16, 0
  %_19.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_19.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_0b6bd549e7152e3219d87f755ab1df3d) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_19.0, ptr %sum, align 4
  br label %bb3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9f6a0c665dccb6842c15321bc8bc8e6e) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
