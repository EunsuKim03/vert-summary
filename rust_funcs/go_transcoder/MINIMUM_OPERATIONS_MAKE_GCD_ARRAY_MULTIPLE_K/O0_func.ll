define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %result = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %result, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1d38c6954fd20497E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb19, %bb23, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha6b4f3d366d36531E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_8, align 4
  %9 = getelementptr inbounds i8, ptr %_8, i64 4
  %10 = load i32, ptr %9, align 4
  %_10 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_10 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %12, align 4
  %_14 = sext i32 %i to i64
  %_15 = icmp ult i64 %_14, 2
  br i1 %_15, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %13 = getelementptr inbounds nuw i32, ptr %a, i64 %_14
  %_13 = load i32, ptr %13, align 4
  %_12 = icmp ne i32 %_13, 1
  br i1 %_12, label %bb8, label %bb20

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 2, ptr align 8 @alloc_7c57fad45a0fbeab06bfcb0c070d811f) #22
  unreachable

bb20:                                             ; preds = %bb9, %bb7
  %_42 = sext i32 %i to i64
  %_43 = icmp ult i64 %_42, 2
  br i1 %_43, label %bb21, label %panic2

bb8:                                              ; preds = %bb7
  %_18 = sext i32 %i to i64
  %_19 = icmp ult i64 %_18, 2
  br i1 %_19, label %bb9, label %panic1

bb9:                                              ; preds = %bb8
  %14 = getelementptr inbounds nuw i32, ptr %a, i64 %_18
  %_17 = load i32, ptr %14, align 4
  %_16 = icmp sgt i32 %_17, %k
  br i1 %_16, label %bb10, label %bb20

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_2cf540a143c37c246c96ef774e7543c5) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_22 = sext i32 %i to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb11, label %panic5

bb21:                                             ; preds = %bb20
  %15 = getelementptr inbounds nuw i32, ptr %a, i64 %_42
  %_41 = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 %_41)
  %_44.0 = extractvalue { i32, i1 } %16, 0
  %_44.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_44.1, label %panic3, label %bb22

panic2:                                           ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_42, i64 2, ptr align 8 @alloc_ce122e836535c14ead985932d5d97108) #22
  unreachable

bb22:                                             ; preds = %bb21
  %17 = load i32, ptr %result, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 %_44.0)
  %_45.0 = extractvalue { i32, i1 } %18, 0
  %_45.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_45.1, label %panic4, label %bb23

panic3:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b533ac11a624cefc663342513433e11a) #22
  unreachable

bb23:                                             ; preds = %bb22
  store i32 %_45.0, ptr %result, align 4
  br label %bb2

panic4:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d289b62601ccadfffa4c7dab0312935e) #22
  unreachable

bb11:                                             ; preds = %bb10
  %19 = getelementptr inbounds nuw i32, ptr %a, i64 %_22
  %_21 = load i32, ptr %19, align 4
  %_24 = icmp eq i32 %k, 0
  br i1 %_24, label %panic6, label %bb12

panic5:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_61a5b2f216f58a7ff3ef160782835f81) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_25 = icmp eq i32 %k, -1
  %_26 = icmp eq i32 %_21, -2147483648
  %_27 = and i1 %_25, %_26
  br i1 %_27, label %panic7, label %bb13

panic6:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_61a5b2f216f58a7ff3ef160782835f81) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_20 = srem i32 %_21, %k
  %20 = load i32, ptr %result, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 %_20)
  %_28.0 = extractvalue { i32, i1 } %21, 0
  %_28.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_28.1, label %panic8, label %bb14

panic7:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_61a5b2f216f58a7ff3ef160782835f81) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_28.0, ptr %result, align 4
  %_32 = sext i32 %i to i64
  %_33 = icmp ult i64 %_32, 2
  br i1 %_33, label %bb15, label %panic9

panic8:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_76b7da74978578b1ed68e9c80bf8233b) #22
  unreachable

bb15:                                             ; preds = %bb14
  %22 = getelementptr inbounds nuw i32, ptr %a, i64 %_32
  %_31 = load i32, ptr %22, align 4
  %_34 = icmp eq i32 %k, 0
  br i1 %_34, label %panic10, label %bb16

panic9:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 2, ptr align 8 @alloc_057150a8d575d250a2a5f66a681f896d) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_35 = icmp eq i32 %k, -1
  %_36 = icmp eq i32 %_31, -2147483648
  %_37 = and i1 %_35, %_36
  br i1 %_37, label %panic11, label %bb17

panic10:                                          ; preds = %bb15
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_057150a8d575d250a2a5f66a681f896d) #22
  unreachable

bb17:                                             ; preds = %bb16
  %_30 = srem i32 %_31, %k
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 %_30)
  %_38.0 = extractvalue { i32, i1 } %23, 0
  %_38.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_38.1, label %panic12, label %bb18

panic11:                                          ; preds = %bb16
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_057150a8d575d250a2a5f66a681f896d) #22
  unreachable

bb18:                                             ; preds = %bb17
  %24 = load i32, ptr %result, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 %_38.0)
  %_39.0 = extractvalue { i32, i1 } %25, 0
  %_39.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_39.1, label %panic13, label %bb19

panic12:                                          ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_14c32587e69b621a4047107bb10e1dd2) #22
  unreachable

bb19:                                             ; preds = %bb18
  store i32 %_39.0, ptr %result, align 4
  br label %bb2

panic13:                                          ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5cd5a4fb7f2a8bd250648ee5d024ae00) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
