define i32 @f_gold(i64 %0, i32 %low, i32 %high) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %max = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_5 = sext i32 %low to i64
  %_6 = icmp ult i64 %_5, 2
  br i1 %_6, label %bb1, label %panic

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_5
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %max, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %low, i32 1)
  %_8.0 = extractvalue { i32, i1 } %4, 0
  %_8.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_8.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_5, i64 2, ptr align 8 @alloc_85b482372b0f0c1c7f6f18e41e80e072) #22
  unreachable

bb2:                                              ; preds = %bb1
  store i32 %_8.0, ptr %i, align 4
  br label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_055a265f3cec35554993e6d889557ffb) #22
  unreachable

bb3:                                              ; preds = %bb8, %bb2
  %_10 = load i32, ptr %i, align 4
  %_9 = icmp sle i32 %_10, %high
  br i1 %_9, label %bb4, label %bb9

bb9:                                              ; preds = %bb5, %bb3
  %_0 = load i32, ptr %max, align 4
  ret i32 %_0

bb4:                                              ; preds = %bb3
  %_14 = load i32, ptr %i, align 4
  %_13 = sext i32 %_14 to i64
  %_15 = icmp ult i64 %_13, 2
  br i1 %_15, label %bb5, label %panic2

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_13
  %_12 = load i32, ptr %5, align 4
  %_16 = load i32, ptr %max, align 4
  %_11 = icmp sgt i32 %_12, %_16
  br i1 %_11, label %bb6, label %bb9

panic2:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 2, ptr align 8 @alloc_16ba686749d500822906d29c9b5e2af2) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_19 = load i32, ptr %i, align 4
  %_18 = sext i32 %_19 to i64
  %_20 = icmp ult i64 %_18, 2
  br i1 %_20, label %bb7, label %panic3

bb7:                                              ; preds = %bb6
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_18
  %_17 = load i32, ptr %6, align 4
  store i32 %_17, ptr %max, align 4
  %7 = load i32, ptr %i, align 4
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 1)
  %_21.0 = extractvalue { i32, i1 } %8, 0
  %_21.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_21.1, label %panic4, label %bb8

panic3:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_7f8075db916170d5bf966cafa78d277f) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_21.0, ptr %i, align 4
  br label %bb3

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_009794590576b101e028a20b8821ab86) #22
  unreachable
}
