define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n, i32 %key, i32 %capacity) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_5 = icmp sge i32 %n, %capacity
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 %n, ptr %_0, align 4
  br label %bb16

bb3:                                              ; preds = %bb2
  store i32 %_7.0, ptr %i, align 4
  br label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8f4b67683ec5b4b13612adeee8c072b7) #22
  unreachable

bb4:                                              ; preds = %bb11, %bb3
  %_9 = load i32, ptr %i, align 4
  %_8 = icmp sge i32 %_9, 0
  br i1 %_8, label %bb5, label %bb12

bb12:                                             ; preds = %bb6, %bb4
  %_34 = load i32, ptr %i, align 4
  %_33 = sext i32 %_34 to i64
  %_35.0 = add i64 %_33, 1
  %_35.1 = icmp ult i64 %_35.0, %_33
  br i1 %_35.1, label %panic2, label %bb13

bb5:                                              ; preds = %bb4
  %_13 = load i32, ptr %i, align 4
  %_12 = sext i32 %_13 to i64
  %_16 = icmp ult i64 %_12, %arr.1
  br i1 %_16, label %bb6, label %panic1

bb6:                                              ; preds = %bb5
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_12
  %_11 = load i32, ptr %1, align 4
  %_10 = icmp sgt i32 %_11, %key
  br i1 %_10, label %bb7, label %bb12

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 %arr.1, ptr align 8 @alloc_fdef84eae1e644e8191ec151d67b43ed) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_19 = load i32, ptr %i, align 4
  %_18 = sext i32 %_19 to i64
  %_22 = icmp ult i64 %_18, %arr.1
  br i1 %_22, label %bb8, label %panic5

bb13:                                             ; preds = %bb12
  %_38 = icmp ult i64 %_35.0, %arr.1
  br i1 %_38, label %bb14, label %panic3

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7341e1091d90aa3fe63cddca33a8a50d) #22
  unreachable

bb14:                                             ; preds = %bb13
  %2 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_35.0
  store i32 %key, ptr %2, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_39.0 = extractvalue { i32, i1 } %3, 0
  %_39.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_39.1, label %panic4, label %bb15

panic3:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35.0, i64 %arr.1, ptr align 8 @alloc_81b91b1520a00a6b496128f71dce0532) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %_39.0, ptr %_0, align 4
  br label %bb16

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_93bb9b42a7de39a38ca6154110f11a08) #22
  unreachable

bb16:                                             ; preds = %bb1, %bb15
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb8:                                              ; preds = %bb7
  %5 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_18
  %_17 = load i32, ptr %5, align 4
  %_25 = load i32, ptr %i, align 4
  %_24 = sext i32 %_25 to i64
  %_26.0 = add i64 %_24, 1
  %_26.1 = icmp ult i64 %_26.0, %_24
  br i1 %_26.1, label %panic6, label %bb9

panic5:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 %arr.1, ptr align 8 @alloc_d9abb50afea2b469047b0c5040fb112c) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_29 = icmp ult i64 %_26.0, %arr.1
  br i1 %_29, label %bb10, label %panic7

panic6:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_beca232c07d183610e3801b75486f56a) #22
  unreachable

bb10:                                             ; preds = %bb9
  %6 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_26.0
  store i32 %_17, ptr %6, align 4
  %_30 = load i32, ptr %i, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_30, i32 1)
  %_31.0 = extractvalue { i32, i1 } %7, 0
  %_31.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_31.1, label %panic8, label %bb11

panic7:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26.0, i64 %arr.1, ptr align 8 @alloc_d4ec36adf174b59e12a03193b0be7386) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_31.0, ptr %i, align 4
  br label %bb4

panic8:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_68df259dde30191755dcf6c5442c227e) #22
  unreachable
}
