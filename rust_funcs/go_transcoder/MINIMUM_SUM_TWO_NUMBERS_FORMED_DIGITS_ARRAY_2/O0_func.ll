define i32 @f_gold(ptr align 4 %a.0, i64 %a.1, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %num2 = alloca [4 x i8], align 4
  %num1 = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE"(ptr align 4 %a.0, i64 %a.1) #20
  store i32 0, ptr %num1, align 4
  store i32 0, ptr %num2, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6a414972e624b3a3E"(i32 0, i32 %n) #20
  %_6.0 = extractvalue { i32, i32 } %0, 0
  %_6.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_6.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %1, align 4
  br label %bb3

bb3:                                              ; preds = %bb13, %bb17, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17had9f62172d728e56E"(ptr align 4 %iter) #20
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
  %_17 = icmp eq i32 %i, -2147483648
  %_18 = and i1 false, %_17
  br i1 %_18, label %panic1, label %bb9

bb7:                                              ; preds = %bb3
  %_37 = load i32, ptr %num2, align 4
  %_38 = load i32, ptr %num1, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_37, i32 %_38)
  %_39.0 = extractvalue { i32, i1 } %11, 0
  %_39.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_39.1, label %panic, label %bb18

bb18:                                             ; preds = %bb7
  ret i32 %_39.0

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_242b86e3727902897f5e6437c85041f7) #22
  unreachable

bb9:                                              ; preds = %bb6
  %_14 = srem i32 %i, 2
  %_13 = icmp eq i32 %_14, 0
  br i1 %_13, label %bb10, label %bb14

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b9964aaa15311383b73818afaf494f30) #22
  unreachable

bb14:                                             ; preds = %bb9
  %_29 = load i32, ptr %num2, align 4
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_29, i32 10)
  %_30.0 = extractvalue { i32, i1 } %12, 0
  %_30.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_30.1, label %panic2, label %bb15

bb10:                                             ; preds = %bb9
  %_20 = load i32, ptr %num1, align 4
  %13 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_20, i32 10)
  %_21.0 = extractvalue { i32, i1 } %13, 0
  %_21.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_21.1, label %panic5, label %bb11

bb15:                                             ; preds = %bb14
  %_32 = sext i32 %i to i64
  %_35 = icmp ult i64 %_32, %a.1
  br i1 %_35, label %bb16, label %panic3

panic2:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a3d9bb9f40c7c973ac7b54a7eca097fb) #22
  unreachable

bb16:                                             ; preds = %bb15
  %14 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_32
  %_31 = load i32, ptr %14, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_30.0, i32 %_31)
  %_36.0 = extractvalue { i32, i1 } %15, 0
  %_36.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_36.1, label %panic4, label %bb17

panic3:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 %a.1, ptr align 8 @alloc_7b228c90b80b621fb514b635ed87e9c1) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_36.0, ptr %num2, align 4
  br label %bb3

panic4:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a3d9bb9f40c7c973ac7b54a7eca097fb) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_23 = sext i32 %i to i64
  %_26 = icmp ult i64 %_23, %a.1
  br i1 %_26, label %bb12, label %panic6

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b328fc1de00608af3e94a211f6680cc0) #22
  unreachable

bb12:                                             ; preds = %bb11
  %16 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_23
  %_22 = load i32, ptr %16, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_21.0, i32 %_22)
  %_27.0 = extractvalue { i32, i1 } %17, 0
  %_27.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_27.1, label %panic7, label %bb13

panic6:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 %a.1, ptr align 8 @alloc_5fe2aef6a41e144108e36fc49a021af7) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %_27.0, ptr %num1, align 4
  br label %bb3

panic7:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b328fc1de00608af3e94a211f6680cc0) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
