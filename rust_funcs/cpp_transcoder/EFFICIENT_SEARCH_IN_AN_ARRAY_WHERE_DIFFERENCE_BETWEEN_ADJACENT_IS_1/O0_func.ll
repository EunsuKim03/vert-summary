define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb10, %start
  %_6 = load i32, ptr %i, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = icmp sle i32 %_6, %_8.0
  br i1 %_5, label %bb3, label %bb11

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9abe3b12c511f95d63ef4d12d2b01748) #19
  unreachable

bb11:                                             ; preds = %bb2
  store i32 -1, ptr %_0, align 4
  br label %bb12

bb3:                                              ; preds = %bb2
  %_12 = load i32, ptr %i, align 4
  %_11 = sext i32 %_12 to i64
  %_13 = icmp ult i64 %_11, 2
  br i1 %_13, label %bb4, label %panic1

bb12:                                             ; preds = %bb5, %bb11
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb4:                                              ; preds = %bb3
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_11
  %_10 = load i32, ptr %4, align 4
  %_9 = icmp eq i32 %_10, %x
  br i1 %_9, label %bb5, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_11, i64 2, ptr align 8 @alloc_33ef3150d7ff5be1f13c9b6e82fdb289) #19
  unreachable

bb6:                                              ; preds = %bb4
  %_18 = load i32, ptr %i, align 4
  %_17 = sext i32 %_18 to i64
  %_19 = icmp ult i64 %_17, 2
  br i1 %_19, label %bb7, label %panic2

bb5:                                              ; preds = %bb4
  %5 = load i32, ptr %i, align 4
  store i32 %5, ptr %_0, align 4
  br label %bb12

bb7:                                              ; preds = %bb6
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_17
  %_16 = load i32, ptr %6, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_16, i32 %x)
  %_20.0 = extractvalue { i32, i1 } %7, 0
  %_20.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_20.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 2, ptr align 8 @alloc_056311e9d1ac0e7acdb2c72d3d5674fe) #19
  unreachable

bb8:                                              ; preds = %bb7
; call core::num::<impl i32>::abs
  %_14 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17hef5982716f9d0f48E"(i32 %_20.0) #21
  %8 = load i32, ptr %i, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 %_14)
  %_21.0 = extractvalue { i32, i1 } %9, 0
  %_21.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_21.1, label %panic4, label %bb10

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_390933bec776e1776c6f1f427555a8cc) #19
  unreachable

bb10:                                             ; preds = %bb8
  store i32 %_21.0, ptr %i, align 4
  br label %bb1

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bb36b802d67511960d8ad324a2bbff34) #19
  unreachable
}
