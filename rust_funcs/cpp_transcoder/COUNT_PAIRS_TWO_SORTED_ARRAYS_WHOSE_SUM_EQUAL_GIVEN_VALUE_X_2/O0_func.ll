define i32 @f_gold(i64 %0, i64 %1, i32 %m, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %r = alloca [4 x i8], align 4
  %l = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr2 = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr1, ptr align 8 %3, i64 8, i1 false)
  store i64 %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr2, ptr align 8 %2, i64 8, i1 false)
  store i32 0, ptr %count, align 4
  store i32 0, ptr %l, align 4
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_9.0 = extractvalue { i32, i1 } %4, 0
  %_9.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_9.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i32 %_9.0, ptr %r, align 4
  br label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d39390c73dcd31eea8d9f96d5a58aaa6) #22
  unreachable

bb2:                                              ; preds = %bb11, %bb17, %bb19, %bb1
  %_11 = load i32, ptr %l, align 4
  %_10 = icmp slt i32 %_11, %m
  br i1 %_10, label %bb3, label %bb20

bb20:                                             ; preds = %bb3, %bb2
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb2
  %_13 = load i32, ptr %r, align 4
  %_12 = icmp sge i32 %_13, 0
  br i1 %_12, label %bb4, label %bb20

bb4:                                              ; preds = %bb3
  %_18 = load i32, ptr %l, align 4
  %_17 = sext i32 %_18 to i64
  %_19 = icmp ult i64 %_17, 2
  br i1 %_19, label %bb5, label %panic1

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_17
  %_16 = load i32, ptr %5, align 4
  %_22 = load i32, ptr %r, align 4
  %_21 = sext i32 %_22 to i64
  %_23 = icmp ult i64 %_21, 2
  br i1 %_23, label %bb6, label %panic2

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 2, ptr align 8 @alloc_cef553a4c40b273bd78b9cab4cb161a0) #22
  unreachable

bb6:                                              ; preds = %bb5
  %6 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_21
  %_20 = load i32, ptr %6, align 4
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_16, i32 %_20)
  %_24.0 = extractvalue { i32, i1 } %7, 0
  %_24.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_24.1, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 2, ptr align 8 @alloc_df96962c0c1739d9fdf3737911a2baad) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_14 = icmp eq i32 %_24.0, %x
  br i1 %_14, label %bb8, label %bb12

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cef553a4c40b273bd78b9cab4cb161a0) #22
  unreachable

bb12:                                             ; preds = %bb7
  %_32 = load i32, ptr %l, align 4
  %_31 = sext i32 %_32 to i64
  %_33 = icmp ult i64 %_31, 2
  br i1 %_33, label %bb13, label %panic4

bb8:                                              ; preds = %bb7
  %8 = load i32, ptr %l, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 1)
  %_25.0 = extractvalue { i32, i1 } %9, 0
  %_25.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_25.1, label %panic9, label %bb9

bb13:                                             ; preds = %bb12
  %10 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_31
  %_30 = load i32, ptr %10, align 4
  %_36 = load i32, ptr %r, align 4
  %_35 = sext i32 %_36 to i64
  %_37 = icmp ult i64 %_35, 2
  br i1 %_37, label %bb14, label %panic5

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 2, ptr align 8 @alloc_aef18a42a3f93133a4ff29fddc816cec) #22
  unreachable

bb14:                                             ; preds = %bb13
  %11 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_35
  %_34 = load i32, ptr %11, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_30, i32 %_34)
  %_38.0 = extractvalue { i32, i1 } %12, 0
  %_38.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_38.1, label %panic6, label %bb15

panic5:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35, i64 2, ptr align 8 @alloc_e83f96609e1c4e486cd95d5d21ecf71d) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_28 = icmp slt i32 %_38.0, %x
  br i1 %_28, label %bb16, label %bb18

panic6:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_aef18a42a3f93133a4ff29fddc816cec) #22
  unreachable

bb18:                                             ; preds = %bb15
  %13 = load i32, ptr %r, align 4
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %13, i32 1)
  %_40.0 = extractvalue { i32, i1 } %14, 0
  %_40.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_40.1, label %panic7, label %bb19

bb16:                                             ; preds = %bb15
  %15 = load i32, ptr %l, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_39.0 = extractvalue { i32, i1 } %16, 0
  %_39.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_39.1, label %panic8, label %bb17

bb19:                                             ; preds = %bb18
  store i32 %_40.0, ptr %r, align 4
  br label %bb2

panic7:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ecd131cc3b8b7fd27752947c183f1bb5) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_39.0, ptr %l, align 4
  br label %bb2

panic8:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a52a8b70c7c1a78812448ebfaab008d5) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_25.0, ptr %l, align 4
  %17 = load i32, ptr %r, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %17, i32 1)
  %_26.0 = extractvalue { i32, i1 } %18, 0
  %_26.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_26.1, label %panic10, label %bb10

panic9:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_532437ad4032eb7b3bd5865919e55c25) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_26.0, ptr %r, align 4
  %19 = load i32, ptr %count, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 1)
  %_27.0 = extractvalue { i32, i1 } %20, 0
  %_27.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_27.1, label %panic11, label %bb11

panic10:                                          ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_99b324eb21d0e78812359e871113eb96) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_27.0, ptr %count, align 4
  br label %bb2

panic11:                                          ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6b81ce55fb65e8cec5eb73a24245d4f6) #22
  unreachable
}
