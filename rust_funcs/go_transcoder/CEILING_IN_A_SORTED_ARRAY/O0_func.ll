define i32 @f_gold(i64 %0, i32 %low, i32 %high, i32 %x) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 %low, ptr %i, align 4
  %_8 = sext i32 %low to i64
  %_9 = icmp ult i64 %_8, 2
  br i1 %_9, label %bb1, label %panic

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_8
  %_7 = load i32, ptr %2, align 4
  %_6 = icmp sle i32 %x, %_7
  br i1 %_6, label %bb2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_8, i64 2, ptr align 8 @alloc_6bd4de88eca7248c45701b78f5e7e7f1) #22
  unreachable

bb3:                                              ; preds = %bb14, %bb1
  %_13 = load i32, ptr %i, align 4
  %_12 = sext i32 %_13 to i64
  %_14 = icmp ult i64 %_12, 2
  br i1 %_14, label %bb4, label %panic1

bb2:                                              ; preds = %bb1
  store i32 %low, ptr %_0, align 4
  br label %bb15

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_12
  %_11 = load i32, ptr %3, align 4
  %_10 = icmp eq i32 %_11, %x
  br i1 %_10, label %bb5, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 2, ptr align 8 @alloc_6dbf4c52095e74397d68b9dd5c3e2ef4) #22
  unreachable

bb6:                                              ; preds = %bb4
  %_18 = load i32, ptr %i, align 4
  %_17 = sext i32 %_18 to i64
  %_19 = icmp ult i64 %_17, 2
  br i1 %_19, label %bb7, label %panic2

bb5:                                              ; preds = %bb4
  %4 = load i32, ptr %i, align 4
  store i32 %4, ptr %_0, align 4
  br label %bb15

bb7:                                              ; preds = %bb6
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_17
  %_16 = load i32, ptr %5, align 4
  %_15 = icmp slt i32 %_16, %x
  br i1 %_15, label %bb8, label %bb13

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 2, ptr align 8 @alloc_e413d1de1e05c00c37392404e9847309) #22
  unreachable

bb13:                                             ; preds = %bb10, %bb7
  %6 = load i32, ptr %i, align 4
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 1)
  %_29.0 = extractvalue { i32, i1 } %7, 0
  %_29.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_29.1, label %panic5, label %bb14

bb8:                                              ; preds = %bb7
  %_24 = load i32, ptr %i, align 4
  %_23 = sext i32 %_24 to i64
  %_25.0 = add i64 %_23, 1
  %_25.1 = icmp ult i64 %_25.0, %_23
  br i1 %_25.1, label %panic3, label %bb9

bb9:                                              ; preds = %bb8
  %_26 = icmp ult i64 %_25.0, 2
  br i1 %_26, label %bb10, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_875e1615cc3c4873a99f5b52e36736f2) #22
  unreachable

bb10:                                             ; preds = %bb9
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %_25.0
  %_21 = load i32, ptr %8, align 4
  %_20 = icmp sge i32 %_21, %x
  br i1 %_20, label %bb11, label %bb13

panic4:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25.0, i64 2, ptr align 8 @alloc_ede153f92fa789f79885e541b394e883) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_27 = load i32, ptr %i, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_27, i32 1)
  %_28.0 = extractvalue { i32, i1 } %9, 0
  %_28.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_28.1, label %panic6, label %bb12

bb14:                                             ; preds = %bb13
  store i32 %_29.0, ptr %i, align 4
  br label %bb3

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e3c692b344c689aad0461c8927f462ee) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_28.0, ptr %_0, align 4
  br label %bb15

panic6:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_50f895ac6b81e4b5393c23c6e78a5cd9) #22
  unreachable

bb15:                                             ; preds = %bb2, %bb5, %bb12
  %10 = load i32, ptr %_0, align 4
  ret i32 %10
}
