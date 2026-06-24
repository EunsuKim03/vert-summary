define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %N, i32 %K) unnamed_addr #3 {
start:
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E"(ptr align 4 %arr.0, i64 %arr.1) #20
  store i32 2147483647, ptr %res, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %N, i32 %K)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_10.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_10.0, i32 1)
  %_11.0 = extractvalue { i32, i1 } %1, 0
  %_11.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_11.1, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9bcdfec96f3c3713ada6a511b98eeae5) #22
  unreachable

bb3:                                              ; preds = %bb2
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1784c07adccf8d73E"(i32 0, i32 %_11.0) #20
  %_6.0 = extractvalue { i32, i32 } %2, 0
  %_6.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_6.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %3, align 4
  br label %bb5

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9bcdfec96f3c3713ada6a511b98eeae5) #22
  unreachable

bb5:                                              ; preds = %bb14, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h40152c2cfddb2a55E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_13, align 4
  %7 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_13, align 4
  %9 = getelementptr inbounds i8, ptr %_13, i64 4
  %10 = load i32, ptr %9, align 4
  %_15 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_15 to i1
  br i1 %11, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %12 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %12, align 4
  %_21 = sext i32 %i to i64
  %_22 = sext i32 %K to i64
  %_23.0 = add i64 %_21, %_22
  %_23.1 = icmp ult i64 %_23.0, %_21
  br i1 %_23.1, label %panic2, label %bb10

bb9:                                              ; preds = %bb5
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_24.0 = sub i64 %_23.0, 1
  %_24.1 = icmp ult i64 %_23.0, 1
  br i1 %_24.1, label %panic3, label %bb11

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a45146437b24cbdd15a6d9b1aa842e55) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_27 = icmp ult i64 %_24.0, %arr.1
  br i1 %_27, label %bb12, label %panic4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a45146437b24cbdd15a6d9b1aa842e55) #22
  unreachable

bb12:                                             ; preds = %bb11
  %13 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_24.0
  %_18 = load i32, ptr %13, align 4
  %_29 = sext i32 %i to i64
  %_32 = icmp ult i64 %_29, %arr.1
  br i1 %_32, label %bb13, label %panic5

panic4:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24.0, i64 %arr.1, ptr align 8 @alloc_4c5c8c83042d3aa69c48209f1baef5a0) #22
  unreachable

bb13:                                             ; preds = %bb12
  %14 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_29
  %_28 = load i32, ptr %14, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_18, i32 %_28)
  %_33.0 = extractvalue { i32, i1 } %15, 0
  %_33.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_33.1, label %panic6, label %bb14

panic5:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_29, i64 %arr.1, ptr align 8 @alloc_efea62c0a092be16729b3c99d233a759) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_35 = load i32, ptr %res, align 4
; call core::cmp::Ord::min
  %_34 = call i32 @_ZN4core3cmp3Ord3min17h7963a1e9ae3121daE(i32 %_35, i32 %_33.0) #20
  store i32 %_34, ptr %res, align 4
  br label %bb5

panic6:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4c5c8c83042d3aa69c48209f1baef5a0) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}
