define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %result = alloca [4 x i8], align 4
  store i32 2147483647, ptr %result, align 4
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE"(ptr align 4 %arr.0, i64 %arr.1) #17
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %k)
  %_9.0 = extractvalue { i32, i1 } %0, 0
  %_9.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_9.1, label %panic, label %bb2

bb2:                                              ; preds = %start
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h337372a298372dc4E"(ptr sret([12 x i8]) align 4 %_7, i32 0, i32 %_9.0) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h431437566178d4ceE"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_26f822ca11a9e0e244353a79ed62364e) #22
  unreachable

bb5:                                              ; preds = %bb14, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %1 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he5c116147552491bE"(ptr align 4 %iter) #17
  %2 = extractvalue { i32, i32 } %1, 0
  %3 = extractvalue { i32, i32 } %1, 1
  store i32 %2, ptr %_11, align 4
  %4 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %_11, align 4
  %6 = getelementptr inbounds i8, ptr %_11, i64 4
  %7 = load i32, ptr %6, align 4
  %_13 = zext i32 %5 to i64
  %8 = trunc nuw i64 %_13 to i1
  br i1 %8, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %9 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %9, align 4
  %_16 = load i32, ptr %result, align 4
  %_21 = sext i32 %i to i64
  %_22 = sext i32 %k to i64
  %_23.0 = add i64 %_21, %_22
  %_23.1 = icmp ult i64 %_23.0, %_21
  br i1 %_23.1, label %panic1, label %bb10

bb9:                                              ; preds = %bb5
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_24.0 = sub i64 %_23.0, 1
  %_24.1 = icmp ult i64 %_23.0, 1
  br i1 %_24.1, label %panic2, label %bb11

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c4551b44ebecf66bb6777813822b7c0e) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_27 = icmp ult i64 %_24.0, %arr.1
  br i1 %_27, label %bb12, label %panic3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c4551b44ebecf66bb6777813822b7c0e) #22
  unreachable

bb12:                                             ; preds = %bb11
  %10 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_24.0
  %_18 = load i32, ptr %10, align 4
  %_29 = sext i32 %i to i64
  %_32 = icmp ult i64 %_29, %arr.1
  br i1 %_32, label %bb13, label %panic4

panic3:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24.0, i64 %arr.1, ptr align 8 @alloc_57a4bc2bdc30f95ef3c348f2b71a3037) #22
  unreachable

bb13:                                             ; preds = %bb12
  %11 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_29
  %_28 = load i32, ptr %11, align 4
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_18, i32 %_28)
  %_33.0 = extractvalue { i32, i1 } %12, 0
  %_33.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_33.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_29, i64 %arr.1, ptr align 8 @alloc_b0da599a05f5885e97e888bf4bb6f68e) #22
  unreachable

bb14:                                             ; preds = %bb13
; call core::cmp::Ord::min
  %_15 = call i32 @_ZN4core3cmp3Ord3min17h0bb56eabc8c53525E(i32 %_16, i32 %_33.0) #17
  store i32 %_15, ptr %result, align 4
  br label %bb5

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_57a4bc2bdc30f95ef3c348f2b71a3037) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}
