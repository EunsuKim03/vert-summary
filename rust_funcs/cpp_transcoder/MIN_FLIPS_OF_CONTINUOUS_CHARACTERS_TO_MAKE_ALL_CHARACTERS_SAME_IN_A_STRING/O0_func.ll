define i32 @f_gold(ptr align 4 %str.0, i64 %str.1, i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %last = alloca [4 x i8], align 4
  store i32 32, ptr %last, align 4
  store i32 0, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h80395db1b84e71ccE"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %0, 0
  %_5.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_5.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hceefa562e71556cdE"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_8, align 4
  %5 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  %8 = load i32, ptr %7, align 4
  %_10 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_10 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %10, align 4
  %_13 = load i32, ptr %last, align 4
  %_15 = sext i32 %i to i64
  %_17 = icmp ult i64 %_15, %str.1
  br i1 %_17, label %bb7, label %panic1

bb6:                                              ; preds = %bb2
  %_23 = load i32, ptr %res, align 4
  %_26 = icmp eq i32 %_23, -2147483648
  %_27 = and i1 false, %_26
  br i1 %_27, label %panic, label %bb13

bb13:                                             ; preds = %bb6
  %_0 = sdiv i32 %_23, 2
  ret i32 %_0

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_89cf9389ab976a2df9b6ccdd2e1ff302) #22
  unreachable

bb7:                                              ; preds = %bb5
  %11 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_15
  %_14 = load i32, ptr %11, align 4
  %_12 = icmp ne i32 %_13, %_14
  br i1 %_12, label %bb8, label %bb10

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 %str.1, ptr align 8 @alloc_b4febcbffa2b604016f24cd2d90fd1c2) #22
  unreachable

bb10:                                             ; preds = %bb9, %bb7
  %_20 = sext i32 %i to i64
  %_22 = icmp ult i64 %_20, %str.1
  br i1 %_22, label %bb11, label %panic3

bb8:                                              ; preds = %bb7
  %12 = load i32, ptr %res, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 1)
  %_18.0 = extractvalue { i32, i1 } %13, 0
  %_18.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_18.1, label %panic2, label %bb9

bb9:                                              ; preds = %bb8
  store i32 %_18.0, ptr %res, align 4
  br label %bb10

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6e8d6d1d66fec4d52f6f4061507fc6f6) #22
  unreachable

bb11:                                             ; preds = %bb10
  %14 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_20
  %_19 = load i32, ptr %14, align 4
  store i32 %_19, ptr %last, align 4
  br label %bb2

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 %str.1, ptr align 8 @alloc_dfca4949766593cea9247dd1164ece7a) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
