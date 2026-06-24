define i32 @f_gold(ptr align 4 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %counter = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %last = alloca [4 x i8], align 4
  %_5 = icmp ult i64 0, %str.1
  br i1 %_5, label %bb1, label %panic

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds nuw i32, ptr %str.0, i64 0
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %last, align 4
  store i64 1, ptr %i, align 8
  store i32 0, ptr %counter, align 4
  br label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %str.1, ptr align 8 @alloc_558d15100e9f44fd082272b0ba6c6ff4) #22
  unreachable

bb2:                                              ; preds = %bb16, %bb1
  %_9 = load i64, ptr %i, align 8
  %_8 = icmp ult i64 %_9, %str.1
  br i1 %_8, label %bb3, label %bb17

bb17:                                             ; preds = %bb2
  %_0 = load i32, ptr %counter, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb2
  %_13 = load i64, ptr %i, align 8
  %_15 = icmp ult i64 %_13, %str.1
  br i1 %_15, label %bb4, label %panic1

bb4:                                              ; preds = %bb3
  %2 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_13
  %_12 = load i32, ptr %2, align 4
  %_11 = icmp eq i32 %_12, 48
  br i1 %_11, label %bb5, label %bb14

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 %str.1, ptr align 8 @alloc_0370a6483824d35d9384897e87d15161) #22
  unreachable

bb14:                                             ; preds = %bb13, %bb11, %bb5, %bb4
  %_31 = load i64, ptr %i, align 8
  %_33 = icmp ult i64 %_31, %str.1
  br i1 %_33, label %bb15, label %panic5

bb5:                                              ; preds = %bb4
  %_17 = load i32, ptr %last, align 4
  %_16 = icmp eq i32 %_17, 49
  br i1 %_16, label %bb6, label %bb14

bb6:                                              ; preds = %bb9, %bb5
  %_20 = load i64, ptr %i, align 8
  %_22 = icmp ult i64 %_20, %str.1
  br i1 %_22, label %bb7, label %panic2

bb7:                                              ; preds = %bb6
  %3 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_20
  %_19 = load i32, ptr %3, align 4
  %_18 = icmp eq i32 %_19, 48
  br i1 %_18, label %bb8, label %bb10

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 %str.1, ptr align 8 @alloc_c3896cd4890585e857b24e82b89d3368) #22
  unreachable

bb10:                                             ; preds = %bb7
  %_26 = load i64, ptr %i, align 8
  %_28 = icmp ult i64 %_26, %str.1
  br i1 %_28, label %bb11, label %panic3

bb8:                                              ; preds = %bb7
  %4 = load i64, ptr %i, align 8
  %_23.0 = add i64 %4, 1
  %_23.1 = icmp ult i64 %_23.0, %4
  br i1 %_23.1, label %panic7, label %bb9

bb11:                                             ; preds = %bb10
  %5 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_26
  %_25 = load i32, ptr %5, align 4
  %_24 = icmp eq i32 %_25, 49
  br i1 %_24, label %bb12, label %bb14

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 %str.1, ptr align 8 @alloc_50d0658d92296e8f5fa22a65ebf25a81) #22
  unreachable

bb12:                                             ; preds = %bb11
  %6 = load i32, ptr %counter, align 4
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 1)
  %_29.0 = extractvalue { i32, i1 } %7, 0
  %_29.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_29.1, label %panic4, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_29.0, ptr %counter, align 4
  br label %bb14

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f2cb8e437de5fad2e2e7578964d35af0) #22
  unreachable

bb15:                                             ; preds = %bb14
  %8 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_31
  %_30 = load i32, ptr %8, align 4
  store i32 %_30, ptr %last, align 4
  %9 = load i64, ptr %i, align 8
  %_34.0 = add i64 %9, 1
  %_34.1 = icmp ult i64 %_34.0, %9
  br i1 %_34.1, label %panic6, label %bb16

panic5:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 %str.1, ptr align 8 @alloc_9d15ed37cad1dba1314da640719bb96a) #22
  unreachable

bb16:                                             ; preds = %bb15
  store i64 %_34.0, ptr %i, align 8
  br label %bb2

panic6:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4e720f220b09cd1821c4d492d7974952) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i64 %_23.0, ptr %i, align 8
  br label %bb6

panic7:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9197ebf43d17271d059a326183281eec) #22
  unreachable
}
