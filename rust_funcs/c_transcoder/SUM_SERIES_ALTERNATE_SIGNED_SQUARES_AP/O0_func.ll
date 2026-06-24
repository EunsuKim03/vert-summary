define i32 @f_gold(i32 %n, i64 %0) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %res, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %n)
  %_7.0 = extractvalue { i32, i1 } %2, 0
  %_7.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb57f4e17a158e77dE"(i32 0, i32 %_7.0) #20
  %_4.0 = extractvalue { i32, i32 } %3, 0
  %_4.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_4.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %4, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a3daea958d4cdaf8716ac8e496c8391d) #22
  unreachable

bb3:                                              ; preds = %bb14, %bb19, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha18b9ea2f223e5a4E"(ptr align 4 %iter) #20
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
  %_17 = icmp eq i32 %i, -2147483648
  %_18 = and i1 false, %_17
  br i1 %_18, label %panic1, label %bb9

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb6
  %_14 = srem i32 %i, 2
  %_13 = icmp eq i32 %_14, 0
  br i1 %_13, label %bb10, label %bb15

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_857f438d397268cf61a55069d861556f) #22
  unreachable

bb15:                                             ; preds = %bb9
  %_30 = sext i32 %i to i64
  %_31 = icmp ult i64 %_30, 2
  br i1 %_31, label %bb16, label %panic2

bb10:                                             ; preds = %bb9
  %_21 = sext i32 %i to i64
  %_22 = icmp ult i64 %_21, 2
  br i1 %_22, label %bb11, label %panic6

bb16:                                             ; preds = %bb15
  %14 = getelementptr inbounds nuw i32, ptr %a, i64 %_30
  %_29 = load i32, ptr %14, align 4
  %_33 = sext i32 %i to i64
  %_34 = icmp ult i64 %_33, 2
  br i1 %_34, label %bb17, label %panic3

panic2:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_30, i64 2, ptr align 8 @alloc_c3a9b5b57c6ac84720354e0fe40857da) #22
  unreachable

bb17:                                             ; preds = %bb16
  %15 = getelementptr inbounds nuw i32, ptr %a, i64 %_33
  %_32 = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_29, i32 %_32)
  %_35.0 = extractvalue { i32, i1 } %16, 0
  %_35.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_35.1, label %panic4, label %bb18

panic3:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_33, i64 2, ptr align 8 @alloc_81dc2414b6ce23e9fc115fe5c9237aaf) #22
  unreachable

bb18:                                             ; preds = %bb17
  %17 = load i32, ptr %res, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %17, i32 %_35.0)
  %_36.0 = extractvalue { i32, i1 } %18, 0
  %_36.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_36.1, label %panic5, label %bb19

panic4:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c3a9b5b57c6ac84720354e0fe40857da) #22
  unreachable

bb19:                                             ; preds = %bb18
  store i32 %_36.0, ptr %res, align 4
  br label %bb3

panic5:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_880b7f21c75f8a64b19669056bf6e71a) #22
  unreachable

bb11:                                             ; preds = %bb10
  %19 = getelementptr inbounds nuw i32, ptr %a, i64 %_21
  %_20 = load i32, ptr %19, align 4
  %_24 = sext i32 %i to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb12, label %panic7

panic6:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 2, ptr align 8 @alloc_705db24cb77cee2129f1cd5423e2b42f) #22
  unreachable

bb12:                                             ; preds = %bb11
  %20 = getelementptr inbounds nuw i32, ptr %a, i64 %_24
  %_23 = load i32, ptr %20, align 4
  %21 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_20, i32 %_23)
  %_26.0 = extractvalue { i32, i1 } %21, 0
  %_26.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_26.1, label %panic8, label %bb13

panic7:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_d89d1c75840054989d2a17fc0769203e) #22
  unreachable

bb13:                                             ; preds = %bb12
  %22 = load i32, ptr %res, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 %_26.0)
  %_27.0 = extractvalue { i32, i1 } %23, 0
  %_27.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_27.1, label %panic9, label %bb14

panic8:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_705db24cb77cee2129f1cd5423e2b42f) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_27.0, ptr %res, align 4
  br label %bb3

panic9:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ba895347e78b5976048bfdde0109b8eb) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
