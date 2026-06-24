define i32 @f_gold(ptr align 1 %n.0, i64 %n.1) unnamed_addr #3 {
start:
  %i = alloca [8 x i8], align 8
  %pos = alloca [4 x i8], align 4
  store i32 0, ptr %pos, align 4
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb14, %start
  %0 = insertvalue { ptr, i64 } poison, ptr %n.0, 0
  %1 = insertvalue { ptr, i64 } %0, i64 %n.1, 1
  %_6.0 = extractvalue { ptr, i64 } %1, 0
  %_6.1 = extractvalue { ptr, i64 } %1, 1
  %_7 = load i64, ptr %i, align 8
  %_9 = icmp ult i64 %_7, %_6.1
  br i1 %_9, label %bb3, label %panic

bb3:                                              ; preds = %bb1
  %2 = getelementptr inbounds nuw i8, ptr %_6.0, i64 %_7
  %_5 = load i8, ptr %2, align 1
  %_4 = icmp ne i8 %_5, 0
  br i1 %_4, label %bb4, label %bb15

panic:                                            ; preds = %bb1
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_7, i64 %_6.1, ptr align 8 @alloc_ed40595e4252f6d5b30da857b7601d0e) #22
  unreachable

bb15:                                             ; preds = %bb3
  %_0 = load i32, ptr %pos, align 4
  ret i32 %_0

bb4:                                              ; preds = %bb3
  %3 = insertvalue { ptr, i64 } poison, ptr %n.0, 0
  %4 = insertvalue { ptr, i64 } %3, i64 %n.1, 1
  %_10.0 = extractvalue { ptr, i64 } %4, 0
  %_10.1 = extractvalue { ptr, i64 } %4, 1
  %_11 = load i64, ptr %i, align 8
  %_13 = icmp ult i64 %_11, %_10.1
  br i1 %_13, label %bb6, label %panic1

bb6:                                              ; preds = %bb4
  %5 = getelementptr inbounds nuw i8, ptr %_10.0, i64 %_11
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %bb13 [
    i8 52, label %bb8
    i8 55, label %bb7
  ]

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_11, i64 %_10.1, ptr align 8 @alloc_890764e5bd70fd89ba0c40f9641e4dd8) #22
  unreachable

bb13:                                             ; preds = %bb12, %bb10, %bb6
  %7 = load i64, ptr %i, align 8
  %_22.0 = add i64 %7, 1
  %_22.1 = icmp ult i64 %_22.0, %7
  br i1 %_22.1, label %panic6, label %bb14

bb8:                                              ; preds = %bb6
  %_15 = load i32, ptr %pos, align 4
  %8 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15, i32 2)
  %_16.0 = extractvalue { i32, i1 } %8, 0
  %_16.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_16.1, label %panic2, label %bb9

bb7:                                              ; preds = %bb6
  %_19 = load i32, ptr %pos, align 4
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_19, i32 2)
  %_20.0 = extractvalue { i32, i1 } %9, 0
  %_20.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_20.1, label %panic4, label %bb11

bb9:                                              ; preds = %bb8
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_16.0, i32 1)
  %_17.0 = extractvalue { i32, i1 } %10, 0
  %_17.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_17.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_733a37909208b0b5a8f3a0c56f10cdf2) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_17.0, ptr %pos, align 4
  br label %bb13

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_733a37909208b0b5a8f3a0c56f10cdf2) #22
  unreachable

bb11:                                             ; preds = %bb7
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_20.0, i32 2)
  %_21.0 = extractvalue { i32, i1 } %11, 0
  %_21.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_21.1, label %panic5, label %bb12

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_57071145f60287b642e8f5b44a6ad00c) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_21.0, ptr %pos, align 4
  br label %bb13

panic5:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_57071145f60287b642e8f5b44a6ad00c) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i64 %_22.0, ptr %i, align 8
  br label %bb1

panic6:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_40841b1f9cd8ae04346ea075a0917184) #22
  unreachable
}
