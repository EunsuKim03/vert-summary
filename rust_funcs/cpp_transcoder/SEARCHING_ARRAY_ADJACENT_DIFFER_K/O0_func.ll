define i32 @f_gold(i64 %0, i32 %n, i32 %x, i32 %k) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb12, %start
  %_7 = load i32, ptr %i, align 4
  %_6 = icmp slt i32 %_7, %n
  br i1 %_6, label %bb2, label %bb13

bb13:                                             ; preds = %bb1
; call core::fmt::Arguments::from_str
  %2 = call { ptr, ptr } @_ZN4core3fmt9Arguments8from_str17h18fa1bd1189dbf2cE(ptr align 1 @alloc_3cc4ab2e96aee8eb167dc6f61e3ddf68, i64 23) #21
  %_29.0 = extractvalue { ptr, ptr } %2, 0
  %_29.1 = extractvalue { ptr, ptr } %2, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr %_29.0, ptr %_29.1)
  store i32 -1, ptr %_0, align 4
  br label %bb16

bb2:                                              ; preds = %bb1
  %_11 = load i32, ptr %i, align 4
  %_10 = sext i32 %_11 to i64
  %_12 = icmp ult i64 %_10, 2
  br i1 %_12, label %bb3, label %panic

bb16:                                             ; preds = %bb4, %bb13
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_10
  %_9 = load i32, ptr %4, align 4
  %_8 = icmp eq i32 %_9, %x
  br i1 %_8, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_10, i64 2, ptr align 8 @alloc_43c5fea6832bcadffad8011b90d58bc1) #19
  unreachable

bb5:                                              ; preds = %bb3
  %_13 = load i32, ptr %i, align 4
  %_20 = load i32, ptr %i, align 4
  %_19 = sext i32 %_20 to i64
  %_21 = icmp ult i64 %_19, 2
  br i1 %_21, label %bb6, label %panic1

bb4:                                              ; preds = %bb3
  %5 = load i32, ptr %i, align 4
  store i32 %5, ptr %_0, align 4
  br label %bb16

bb6:                                              ; preds = %bb5
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_18 = load i32, ptr %6, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_18, i32 %x)
  %_22.0 = extractvalue { i32, i1 } %7, 0
  %_22.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_22.1, label %panic2, label %bb7

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_3fc77abfcd0d4a98c562813173c37d68) #19
  unreachable

bb7:                                              ; preds = %bb6
  %_23 = icmp eq i32 %k, 0
  br i1 %_23, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b86ffc5ceea4b9bd0ce245cd5b42733b) #19
  unreachable

bb8:                                              ; preds = %bb7
  %_24 = icmp eq i32 %k, -1
  %_25 = icmp eq i32 %_22.0, -2147483648
  %_26 = and i1 %_24, %_25
  br i1 %_26, label %panic4, label %bb9

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_4224df87bb607972c1fbbfe08c70b205) #19
  unreachable

bb9:                                              ; preds = %bb8
  %_16 = sdiv i32 %_22.0, %k
; call core::num::<impl i32>::abs
  %_15 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h2ae4e3973893ebc7E"(i32 %_16) #21
; call core::cmp::Ord::max
  %_14 = call i32 @_ZN4core3cmp3Ord3max17hb5bc04243d038f50E(i32 %_15, i32 1) #21
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_13, i32 %_14)
  %_27.0 = extractvalue { i32, i1 } %8, 0
  %_27.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_27.1, label %panic5, label %bb12

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_4224df87bb607972c1fbbfe08c70b205) #19
  unreachable

bb12:                                             ; preds = %bb9
  store i32 %_27.0, ptr %i, align 4
  br label %bb1

panic5:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_991516634c84c24ba4d7622313c79bba) #19
  unreachable
}
