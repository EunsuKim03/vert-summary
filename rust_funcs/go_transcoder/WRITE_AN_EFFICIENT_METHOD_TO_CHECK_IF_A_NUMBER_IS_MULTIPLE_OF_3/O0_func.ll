define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %even_count = alloca [4 x i8], align 4
  %odd_count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  store i32 0, ptr %odd_count, align 4
  store i32 0, ptr %even_count, align 4
  %_5 = load i32, ptr %n, align 4
  %_4 = icmp slt i32 %_5, 0
  br i1 %_4, label %bb1, label %bb3

bb3:                                              ; preds = %bb2, %start
  %_9 = load i32, ptr %n, align 4
  %_8 = icmp eq i32 %_9, 0
  br i1 %_8, label %bb4, label %bb5

bb1:                                              ; preds = %start
  %_6 = load i32, ptr %n, align 4
  %_7 = icmp eq i32 %_6, -2147483648
  br i1 %_7, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %1 = sub i32 0, %_6
  store i32 %1, ptr %n, align 4
  br label %bb3

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_neg_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_neg_overflow17hf7841d7385a517f1E(ptr align 8 @alloc_f1e0f4aa03ff9ac1d914b08e2c381542) #22
  unreachable

bb5:                                              ; preds = %bb3
  %_11 = load i32, ptr %n, align 4
  %_10 = icmp eq i32 %_11, 1
  br i1 %_10, label %bb6, label %bb7

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_0, align 4
  br label %bb18

bb7:                                              ; preds = %bb14, %bb5
  %_13 = load i32, ptr %n, align 4
  %_12 = icmp ne i32 %_13, 0
  br i1 %_12, label %bb8, label %bb16

bb6:                                              ; preds = %bb5
  store i32 0, ptr %_0, align 4
  br label %bb18

bb16:                                             ; preds = %bb7
  %_25 = load i32, ptr %odd_count, align 4
  %_26 = load i32, ptr %even_count, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_25, i32 %_26)
  %_27.0 = extractvalue { i32, i1 } %2, 0
  %_27.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_27.1, label %panic1, label %bb17

bb8:                                              ; preds = %bb7
  %_16 = load i32, ptr %n, align 4
  %_15 = and i32 %_16, 1
  %_14 = icmp ne i32 %_15, 0
  br i1 %_14, label %bb9, label %bb11

bb17:                                             ; preds = %bb16
  %3 = call i32 @f_gold(i32 %_27.0)
  store i32 %3, ptr %_0, align 4
  br label %bb18

panic1:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a24b881f92f08d2a326eb4a514efe18a) #22
  unreachable

bb18:                                             ; preds = %bb4, %bb6, %bb17
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb11:                                             ; preds = %bb10, %bb8
  %_20 = load i32, ptr %n, align 4
  %_19 = and i32 %_20, 2
  %_18 = icmp ne i32 %_19, 0
  br i1 %_18, label %bb12, label %bb14

bb9:                                              ; preds = %bb8
  %5 = load i32, ptr %odd_count, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 1)
  %_17.0 = extractvalue { i32, i1 } %6, 0
  %_17.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_17.1, label %panic2, label %bb10

bb10:                                             ; preds = %bb9
  store i32 %_17.0, ptr %odd_count, align 4
  br label %bb11

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_faadfd3f3c8fd457986397e02c349518) #22
  unreachable

bb14:                                             ; preds = %bb13, %bb11
  %7 = load i32, ptr %n, align 4
  %8 = ashr i32 %7, 2
  store i32 %8, ptr %n, align 4
  br label %bb7

bb12:                                             ; preds = %bb11
  %9 = load i32, ptr %even_count, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 1)
  %_21.0 = extractvalue { i32, i1 } %10, 0
  %_21.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_21.1, label %panic3, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_21.0, ptr %even_count, align 4
  br label %bb14

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_143aa95d3d302d262ba0929f9cf91935) #22
  unreachable
}
