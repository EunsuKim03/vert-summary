define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %i = alloca [8 x i8], align 8
  %max_sum = alloca [4 x i8], align 4
  store i32 0, ptr %max_sum, align 4
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE"(ptr align 4 %arr.0, i64 %arr.1) #20
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %1 = sext i32 %_8.0 to i64
  store i64 %1, ptr %i, align 8
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1031ba0d3039a31cea91e3cb37718b2d) #22
  unreachable

bb3:                                              ; preds = %bb15, %bb2
  %_10 = load i64, ptr %i, align 8
  %_9 = icmp ugt i64 %_10, 0
  br i1 %_9, label %bb4, label %bb16

bb16:                                             ; preds = %bb8, %bb3
  %_0 = load i32, ptr %max_sum, align 4
  ret i32 %_0

bb4:                                              ; preds = %bb3
  %_14 = load i64, ptr %i, align 8
  %_17 = icmp ult i64 %_14, %arr.1
  br i1 %_17, label %bb5, label %panic1

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_14
  %_13 = load i32, ptr %2, align 4
  %_20 = load i64, ptr %i, align 8
  %_21.0 = sub i64 %_20, 1
  %_21.1 = icmp ult i64 %_20, 1
  br i1 %_21.1, label %panic2, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 %arr.1, ptr align 8 @alloc_7828711393b40cf607ce64a357760d7c) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_24 = icmp ult i64 %_21.0, %arr.1
  br i1 %_24, label %bb7, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1e995cdaace752b3ab7e138a43864a75) #22
  unreachable

bb7:                                              ; preds = %bb6
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_21.0
  %_18 = load i32, ptr %3, align 4
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_13, i32 %_18)
  %_25.0 = extractvalue { i32, i1 } %4, 0
  %_25.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_25.1, label %panic4, label %bb8

panic3:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21.0, i64 %arr.1, ptr align 8 @alloc_8075ac7ecdfd83d897ad3e995f80cde6) #22
  unreachable

bb8:                                              ; preds = %bb7
  %_11 = icmp slt i32 %_25.0, %k
  br i1 %_11, label %bb9, label %bb16

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dfa39796179e34d4cf03c875f6f74c99) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_27 = load i64, ptr %i, align 8
  %_30 = icmp ult i64 %_27, %arr.1
  br i1 %_30, label %bb10, label %panic5

bb10:                                             ; preds = %bb9
  %5 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_27
  %_26 = load i32, ptr %5, align 4
  %6 = load i32, ptr %max_sum, align 4
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 %_26)
  %_31.0 = extractvalue { i32, i1 } %7, 0
  %_31.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_31.1, label %panic6, label %bb11

panic5:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 %arr.1, ptr align 8 @alloc_913c3782fd019e43bc39b35f9fe54630) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_31.0, ptr %max_sum, align 4
  %_34 = load i64, ptr %i, align 8
  %_35.0 = sub i64 %_34, 1
  %_35.1 = icmp ult i64 %_34, 1
  br i1 %_35.1, label %panic7, label %bb12

panic6:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5cd276149078343e5ce93011ad334e80) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_38 = icmp ult i64 %_35.0, %arr.1
  br i1 %_38, label %bb13, label %panic8

panic7:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4c328834a99b173c12f7d5c05123e611) #22
  unreachable

bb13:                                             ; preds = %bb12
  %8 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_35.0
  %_32 = load i32, ptr %8, align 4
  %9 = load i32, ptr %max_sum, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 %_32)
  %_39.0 = extractvalue { i32, i1 } %10, 0
  %_39.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_39.1, label %panic9, label %bb14

panic8:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35.0, i64 %arr.1, ptr align 8 @alloc_06af36e9672295ac616ed6469380dab5) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_39.0, ptr %max_sum, align 4
  %11 = load i64, ptr %i, align 8
  %_40.0 = sub i64 %11, 1
  %_40.1 = icmp ult i64 %11, 1
  br i1 %_40.1, label %panic10, label %bb15

panic9:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5e799f8fd18e5fff6ae1f45d15db8d35) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i64 %_40.0, ptr %i, align 8
  br label %bb3

panic10:                                          ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0291373d35b3da4439ca289f1091ad6b) #22
  unreachable
}
