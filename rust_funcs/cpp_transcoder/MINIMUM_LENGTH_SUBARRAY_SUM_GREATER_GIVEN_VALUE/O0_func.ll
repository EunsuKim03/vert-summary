define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %end = alloca [4 x i8], align 4
  %start1 = alloca [4 x i8], align 4
  %min_len = alloca [4 x i8], align 4
  %curr_sum = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %curr_sum, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_6.0 = extractvalue { i32, i1 } %2, 0
  %_6.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i32 %_6.0, ptr %min_len, align 4
  store i32 0, ptr %start1, align 4
  store i32 0, ptr %end, align 4
  br label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cf7cbc20f6e19ba64631bbcaa4feda29) #22
  unreachable

bb2:                                              ; preds = %bb10, %bb9, %bb1
  %_10 = load i32, ptr %end, align 4
  %_9 = icmp slt i32 %_10, %n
  br i1 %_9, label %bb3, label %bb19

bb19:                                             ; preds = %bb2
  %_0 = load i32, ptr %min_len, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb8, %bb2
  %_12 = load i32, ptr %curr_sum, align 4
  %_11 = icmp sle i32 %_12, %x
  br i1 %_11, label %bb4, label %bb9

bb9:                                              ; preds = %bb18, %bb4, %bb3
  %_22 = load i32, ptr %curr_sum, align 4
  %_21 = icmp sgt i32 %_22, %x
  br i1 %_21, label %bb10, label %bb2

bb4:                                              ; preds = %bb3
  %_14 = load i32, ptr %end, align 4
  %_13 = icmp slt i32 %_14, %n
  br i1 %_13, label %bb5, label %bb9

bb5:                                              ; preds = %bb4
  %_17 = load i32, ptr %end, align 4
  %_16 = sext i32 %_17 to i64
  %_18 = icmp ult i64 %_16, 2
  br i1 %_18, label %bb6, label %panic7

bb10:                                             ; preds = %bb9
  %_24 = load i32, ptr %start1, align 4
  %_23 = icmp slt i32 %_24, %n
  br i1 %_23, label %bb11, label %bb2

bb11:                                             ; preds = %bb10
  %_27 = load i32, ptr %end, align 4
  %_28 = load i32, ptr %start1, align 4
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_27, i32 %_28)
  %_29.0 = extractvalue { i32, i1 } %3, 0
  %_29.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_29.1, label %panic2, label %bb12

bb12:                                             ; preds = %bb11
  %_30 = load i32, ptr %min_len, align 4
  %_25 = icmp slt i32 %_29.0, %_30
  br i1 %_25, label %bb13, label %bb15

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9bf96a0b21906bd5b2e1e5123b8fef11) #22
  unreachable

bb15:                                             ; preds = %bb14, %bb12
  %_36 = load i32, ptr %start1, align 4
  %_35 = sext i32 %_36 to i64
  %_37 = icmp ult i64 %_35, 2
  br i1 %_37, label %bb16, label %panic4

bb13:                                             ; preds = %bb12
  %_31 = load i32, ptr %end, align 4
  %_32 = load i32, ptr %start1, align 4
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_31, i32 %_32)
  %_33.0 = extractvalue { i32, i1 } %4, 0
  %_33.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_33.1, label %panic3, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_33.0, ptr %min_len, align 4
  br label %bb15

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2aaeb785dda8168b28a05c7b9b219ba7) #22
  unreachable

bb16:                                             ; preds = %bb15
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_35
  %_34 = load i32, ptr %5, align 4
  %6 = load i32, ptr %curr_sum, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %6, i32 %_34)
  %_38.0 = extractvalue { i32, i1 } %7, 0
  %_38.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_38.1, label %panic5, label %bb17

panic4:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35, i64 2, ptr align 8 @alloc_6af4a4a86ec92964ef3128c5c115c3c3) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_38.0, ptr %curr_sum, align 4
  %8 = load i32, ptr %start1, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 1)
  %_39.0 = extractvalue { i32, i1 } %9, 0
  %_39.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_39.1, label %panic6, label %bb18

panic5:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_17a721d315f08a565a7026b321ebc2f3) #22
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_39.0, ptr %start1, align 4
  br label %bb9

panic6:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e30844289f0cb18b9b78aae401911524) #22
  unreachable

bb6:                                              ; preds = %bb5
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  %_15 = load i32, ptr %10, align 4
  %11 = load i32, ptr %curr_sum, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 %_15)
  %_19.0 = extractvalue { i32, i1 } %12, 0
  %_19.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_19.1, label %panic8, label %bb7

panic7:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_4d413ba44d84e2a31d3fc3011fd6b8a3) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %_19.0, ptr %curr_sum, align 4
  %13 = load i32, ptr %end, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 1)
  %_20.0 = extractvalue { i32, i1 } %14, 0
  %_20.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_20.1, label %panic9, label %bb8

panic8:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2d7a50bec3d7448eb1ff0088f3db9c85) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_20.0, ptr %end, align 4
  br label %bb3

panic9:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2310947ed382b7db1010ba60652c74b5) #22
  unreachable
}
