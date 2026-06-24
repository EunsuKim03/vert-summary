define i32 @f_gold(i64 %0, i32 %N, i32 %K) unnamed_addr #3 {
start:
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E"(ptr align 4 %arr, i64 2) #20
  store i32 2147483647, ptr %res, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %N, i32 %K)
  %_11.0 = extractvalue { i32, i1 } %2, 0
  %_11.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_11.1, label %panic, label %bb2

bb2:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1784c07adccf8d73E"(i32 0, i32 %_11.0) #20
  %_8.0 = extractvalue { i32, i32 } %3, 0
  %_8.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_8.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %4, align 4
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4dddc6b5ec92b0a2c1a036b7ad76aa08) #22
  unreachable

bb4:                                              ; preds = %bb13, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h40152c2cfddb2a55E"(ptr align 4 %iter) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_13, align 4
  %8 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_13, align 4
  %10 = getelementptr inbounds i8, ptr %_13, i64 4
  %11 = load i32, ptr %10, align 4
  %_15 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_15 to i1
  br i1 %12, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %13 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %K)
  %_22.0 = extractvalue { i32, i1 } %14, 0
  %_22.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_22.1, label %panic1, label %bb9

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_22.0, i32 1)
  %_23.0 = extractvalue { i32, i1 } %15, 0
  %_23.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_23.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d8a907a4f813c3adaae4d048659729dd) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_19 = sext i32 %_23.0 to i64
  %_24 = icmp ult i64 %_19, 2
  br i1 %_24, label %bb11, label %panic3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d00504fc53a06ec41bfbd20714973149) #22
  unreachable

bb11:                                             ; preds = %bb10
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_18 = load i32, ptr %16, align 4
  %_26 = sext i32 %i to i64
  %_27 = icmp ult i64 %_26, 2
  br i1 %_27, label %bb12, label %panic4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_9cd20fb830182108d7e373d318fd82e4) #22
  unreachable

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds nuw i32, ptr %arr, i64 %_26
  %_25 = load i32, ptr %17, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_18, i32 %_25)
  %_28.0 = extractvalue { i32, i1 } %18, 0
  %_28.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_28.1, label %panic5, label %bb13

panic4:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 2, ptr align 8 @alloc_da390d9f06eeddb6d42e40fc0b868eb8) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_30 = load i32, ptr %res, align 4
; call core::cmp::min
  %_29 = call i32 @_ZN4core3cmp3min17h7e7f98bbc8e62850E(i32 %_30, i32 %_28.0) #20
  store i32 %_29, ptr %res, align 4
  br label %bb4

panic5:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9cd20fb830182108d7e373d318fd82e4) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
