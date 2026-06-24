define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha496d94d7e9d9cd2E"(ptr align 4 %arr, i64 2) #19
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_9 = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 1
  %_12 = load i32, ptr %3, align 4
  %4 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_9, i32 %_12)
  %_15.0 = extractvalue { i32, i1 } %4, 0
  %_15.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_15.1, label %panic, label %bb6

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb18

bb6:                                              ; preds = %bb2
  %_18 = sext i32 %n to i64
  %_19.0 = sub i64 %_18, 1
  %_19.1 = icmp ult i64 %_18, 1
  br i1 %_19.1, label %panic1, label %bb7

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a0ab39278918071780c58a54455a6e17) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_20 = icmp ult i64 %_19.0, 2
  br i1 %_20, label %bb8, label %panic2

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_13d041fda7ea7d3ea33542dca97568c0) #22
  unreachable

bb8:                                              ; preds = %bb7
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19.0
  %_16 = load i32, ptr %5, align 4
  %6 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15.0, i32 %_16)
  %_21.0 = extractvalue { i32, i1 } %6, 0
  %_21.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_21.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19.0, i64 2, ptr align 8 @alloc_a0d5aa47d31dbb54dab47b0a5a3e05c2) #22
  unreachable

bb9:                                              ; preds = %bb8
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_27.0 = extractvalue { i32, i1 } %7, 0
  %_27.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_27.1, label %panic4, label %bb10

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a0ab39278918071780c58a54455a6e17) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_25 = sext i32 %_27.0 to i64
  %_28 = icmp ult i64 %_25, 2
  br i1 %_28, label %bb11, label %panic5

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a7eeba8050b75bd22f90897dd6dc736d) #22
  unreachable

bb11:                                             ; preds = %bb10
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %_25
  %_24 = load i32, ptr %8, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 2)
  %_32.0 = extractvalue { i32, i1 } %9, 0
  %_32.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_32.1, label %panic6, label %bb12

panic5:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_d85626f459a7b88c261322f016c95b3e) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_30 = sext i32 %_32.0 to i64
  %_33 = icmp ult i64 %_30, 2
  br i1 %_33, label %bb13, label %panic7

panic6:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dcbb58e917f4ea3c796589bab943a7d2) #22
  unreachable

bb13:                                             ; preds = %bb12
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %_30
  %_29 = load i32, ptr %10, align 4
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_24, i32 %_29)
  %_34.0 = extractvalue { i32, i1 } %11, 0
  %_34.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_34.1, label %panic8, label %bb14

panic7:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_30, i64 2, ptr align 8 @alloc_9225d6ae2bb42808b35f64edbeaf2eee) #22
  unreachable

bb14:                                             ; preds = %bb13
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 3)
  %_38.0 = extractvalue { i32, i1 } %12, 0
  %_38.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_38.1, label %panic9, label %bb15

panic8:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d85626f459a7b88c261322f016c95b3e) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_36 = sext i32 %_38.0 to i64
  %_39 = icmp ult i64 %_36, 2
  br i1 %_39, label %bb16, label %panic10

panic9:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3ef5dce3b9bfcdd1a2a46d95ad48c6e3) #22
  unreachable

bb16:                                             ; preds = %bb15
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %_36
  %_35 = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_34.0, i32 %_35)
  %_40.0 = extractvalue { i32, i1 } %14, 0
  %_40.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_40.1, label %panic11, label %bb17

panic10:                                          ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_36, i64 2, ptr align 8 @alloc_9744a0cad57e77664684db9614b09a80) #22
  unreachable

bb17:                                             ; preds = %bb16
; call core::cmp::max
  %15 = call i32 @_ZN4core3cmp3max17he6c2125b25e1f552E(i32 %_21.0, i32 %_40.0) #19
  store i32 %15, ptr %_0, align 4
  br label %bb18

panic11:                                          ; preds = %bb16
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d85626f459a7b88c261322f016c95b3e) #22
  unreachable

bb18:                                             ; preds = %bb1, %bb17
  %16 = load i32, ptr %_0, align 4
  ret i32 %16
}
