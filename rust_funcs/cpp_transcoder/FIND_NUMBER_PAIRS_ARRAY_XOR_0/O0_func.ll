define i32 @f_gold(ptr align 4 %a.0, i64 %a.1, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %answer = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hee705435923311feE"(ptr align 4 %a.0, i64 %a.1) #20
  store i32 1, ptr %count, align 4
  store i32 0, ptr %answer, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4245fce193535e5cE"(i32 1, i32 %n) #20
  %_6.0 = extractvalue { i32, i32 } %0, 0
  %_6.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_6.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %1, align 4
  br label %bb3

bb3:                                              ; preds = %bb12, %bb18, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd158d444a1e5db1bE"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_9, align 4
  %5 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_9, align 4
  %7 = getelementptr inbounds i8, ptr %_9, i64 4
  %8 = load i32, ptr %7, align 4
  %_11 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_11 to i1
  br i1 %9, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %10, align 4
  %_15 = sext i32 %i to i64
  %_18 = icmp ult i64 %_15, %a.1
  br i1 %_18, label %bb8, label %panic4

bb7:                                              ; preds = %bb3
  %_41 = load i32, ptr %count, align 4
  %_43 = load i32, ptr %count, align 4
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_43, i32 1)
  %_44.0 = extractvalue { i32, i1 } %11, 0
  %_44.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_44.1, label %panic, label %bb19

bb19:                                             ; preds = %bb7
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_41, i32 %_44.0)
  %_45.0 = extractvalue { i32, i1 } %12, 0
  %_45.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_45.1, label %panic1, label %bb20

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7117d185b3723f57e5567ebb0641e3e3) #22
  unreachable

bb20:                                             ; preds = %bb19
  %_48 = icmp eq i32 %_45.0, -2147483648
  %_49 = and i1 false, %_48
  br i1 %_49, label %panic2, label %bb22

panic1:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_47978755b58e58fed2971daf3426d4b3) #22
  unreachable

bb22:                                             ; preds = %bb20
  %_39 = sdiv i32 %_45.0, 2
  %13 = load i32, ptr %answer, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 %_39)
  %_50.0 = extractvalue { i32, i1 } %14, 0
  %_50.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_50.1, label %panic3, label %bb23

panic2:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_47978755b58e58fed2971daf3426d4b3) #22
  unreachable

bb23:                                             ; preds = %bb22
  store i32 %_50.0, ptr %answer, align 4
  %_0 = load i32, ptr %answer, align 4
  ret i32 %_0

panic3:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8130f3c003c7338f100359c2dc971b45) #22
  unreachable

bb8:                                              ; preds = %bb6
  %15 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_15
  %_14 = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_22.0 = extractvalue { i32, i1 } %16, 0
  %_22.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_22.1, label %panic5, label %bb9

panic4:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 %a.1, ptr align 8 @alloc_aabc9968bb8be278c44b1879721e16d5) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_20 = sext i32 %_22.0 to i64
  %_25 = icmp ult i64 %_20, %a.1
  br i1 %_25, label %bb10, label %panic6

panic5:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_38fddd67142ad9e3db2aec358b5a8706) #22
  unreachable

bb10:                                             ; preds = %bb9
  %17 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_20
  %_19 = load i32, ptr %17, align 4
  %_13 = icmp eq i32 %_14, %_19
  br i1 %_13, label %bb11, label %bb13

panic6:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 %a.1, ptr align 8 @alloc_cfb3433bccfa2542497764cedc20d492) #22
  unreachable

bb13:                                             ; preds = %bb10
  %_29 = load i32, ptr %count, align 4
  %_31 = load i32, ptr %count, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_31, i32 1)
  %_32.0 = extractvalue { i32, i1 } %18, 0
  %_32.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_32.1, label %panic7, label %bb14

bb11:                                             ; preds = %bb10
  %19 = load i32, ptr %count, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 1)
  %_26.0 = extractvalue { i32, i1 } %20, 0
  %_26.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_26.1, label %panic11, label %bb12

bb14:                                             ; preds = %bb13
  %21 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_29, i32 %_32.0)
  %_33.0 = extractvalue { i32, i1 } %21, 0
  %_33.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_33.1, label %panic8, label %bb15

panic7:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bf133fcffcdfe463cf4df19301059a20) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_36 = icmp eq i32 %_33.0, -2147483648
  %_37 = and i1 false, %_36
  br i1 %_37, label %panic9, label %bb17

panic8:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_79ac3b89eec95933948f920c5eba7f73) #22
  unreachable

bb17:                                             ; preds = %bb15
  %_27 = sdiv i32 %_33.0, 2
  %22 = load i32, ptr %answer, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 %_27)
  %_38.0 = extractvalue { i32, i1 } %23, 0
  %_38.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_38.1, label %panic10, label %bb18

panic9:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_79ac3b89eec95933948f920c5eba7f73) #22
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_38.0, ptr %answer, align 4
  store i32 1, ptr %count, align 4
  br label %bb3

panic10:                                          ; preds = %bb17
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bb0077376db195515193dab59e88591d) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_26.0, ptr %count, align 4
  br label %bb3

panic11:                                          ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_202c672032616e47064db6ec8ce3e95f) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
