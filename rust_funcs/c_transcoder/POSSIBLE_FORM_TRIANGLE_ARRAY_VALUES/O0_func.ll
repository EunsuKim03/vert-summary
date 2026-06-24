define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E"(ptr align 4 %arr.0, i64 %arr.1) #17
  store i64 0, ptr %i, align 8
  br label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb17

bb4:                                              ; preds = %bb15, %bb2
  %_7 = load i64, ptr %i, align 8
  %_9 = sext i32 %n to i64
  %_10.0 = sub i64 %_9, 2
  %_10.1 = icmp ult i64 %_9, 2
  br i1 %_10.1, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  %_6 = icmp ult i64 %_7, %_10.0
  br i1 %_6, label %bb6, label %bb16

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d3f4fe82beb3839e2f818cb7b3de3d02) #22
  unreachable

bb16:                                             ; preds = %bb5
  store i32 0, ptr %_0, align 4
  br label %bb17

bb6:                                              ; preds = %bb5
  %_14 = load i64, ptr %i, align 8
  %_17 = icmp ult i64 %_14, %arr.1
  br i1 %_17, label %bb7, label %panic1

bb17:                                             ; preds = %bb1, %bb13, %bb16
  %0 = load i32, ptr %_0, align 4
  ret i32 %0

bb7:                                              ; preds = %bb6
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_14
  %_13 = load i32, ptr %1, align 4
  %_20 = load i64, ptr %i, align 8
  %_21.0 = add i64 %_20, 1
  %_21.1 = icmp ult i64 %_21.0, %_20
  br i1 %_21.1, label %panic2, label %bb8

panic1:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 %arr.1, ptr align 8 @alloc_7dfa0041315cec4bed7c7690a4e25e62) #22
  unreachable

bb8:                                              ; preds = %bb7
  %_24 = icmp ult i64 %_21.0, %arr.1
  br i1 %_24, label %bb9, label %panic3

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_65a36439fa7dcf910e0e22f573b02e28) #22
  unreachable

bb9:                                              ; preds = %bb8
  %2 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_21.0
  %_18 = load i32, ptr %2, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_13, i32 %_18)
  %_25.0 = extractvalue { i32, i1 } %3, 0
  %_25.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_25.1, label %panic4, label %bb10

panic3:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21.0, i64 %arr.1, ptr align 8 @alloc_2e2557740e5afd8e22f8bcf6486be8df) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_28 = load i64, ptr %i, align 8
  %_29.0 = add i64 %_28, 2
  %_29.1 = icmp ult i64 %_29.0, %_28
  br i1 %_29.1, label %panic5, label %bb11

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7dfa0041315cec4bed7c7690a4e25e62) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_32 = icmp ult i64 %_29.0, %arr.1
  br i1 %_32, label %bb12, label %panic6

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c2342fc87ac6a83b377056c89e4c8d73) #22
  unreachable

bb12:                                             ; preds = %bb11
  %4 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_29.0
  %_26 = load i32, ptr %4, align 4
  %_11 = icmp sgt i32 %_25.0, %_26
  br i1 %_11, label %bb13, label %bb14

panic6:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_29.0, i64 %arr.1, ptr align 8 @alloc_5e20287c63c9b23ef3cff9903ae81108) #22
  unreachable

bb14:                                             ; preds = %bb12
  %5 = load i64, ptr %i, align 8
  %_33.0 = add i64 %5, 1
  %_33.1 = icmp ult i64 %_33.0, %5
  br i1 %_33.1, label %panic7, label %bb15

bb13:                                             ; preds = %bb12
  store i32 1, ptr %_0, align 4
  br label %bb17

bb15:                                             ; preds = %bb14
  store i64 %_33.0, ptr %i, align 8
  br label %bb4

panic7:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0a55f550358b3d8a67835a3a305a3616) #22
  unreachable
}
