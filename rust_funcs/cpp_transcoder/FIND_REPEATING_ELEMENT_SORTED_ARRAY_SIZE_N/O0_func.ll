define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %low, i32 %high) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_4 = icmp sgt i32 %low, %high
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %low, i32 %high)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb18

bb3:                                              ; preds = %bb2
  %_10 = icmp eq i32 %_7.0, -2147483648
  %_11 = and i1 false, %_10
  br i1 %_11, label %panic1, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8b1e147f8e4bb01313089146f9b96943) #22
  unreachable

bb5:                                              ; preds = %bb3
  %mid = sdiv i32 %_7.0, 2
  %_14 = sext i32 %mid to i64
  %_17 = icmp ult i64 %_14, %arr.1
  br i1 %_17, label %bb6, label %panic2

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_8b1e147f8e4bb01313089146f9b96943) #22
  unreachable

bb6:                                              ; preds = %bb5
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_14
  %_13 = load float, ptr %1, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mid, i32 1)
  %_20.0 = extractvalue { i32, i1 } %2, 0
  %_20.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_20.1, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 %arr.1, ptr align 8 @alloc_2f5945c67bfb085bbe416be19a574413) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_18 = sitofp i32 %_20.0 to float
  %_12 = fcmp une float %_13, %_18
  br i1 %_12, label %bb8, label %bb16

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dfebb4ada4a831aa2d2a27c4eaf71131) #22
  unreachable

bb16:                                             ; preds = %bb7
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mid, i32 1)
  %_38.0 = extractvalue { i32, i1 } %3, 0
  %_38.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_38.1, label %panic4, label %bb17

bb8:                                              ; preds = %bb7
  %_21 = icmp sgt i32 %mid, 0
  br i1 %_21, label %bb9, label %bb14

bb17:                                             ; preds = %bb16
  %4 = call i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %_38.0, i32 %high)
  store i32 %4, ptr %_0, align 4
  br label %bb18

panic4:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e3b7190caaabce00f4152eb353408366) #22
  unreachable

bb18:                                             ; preds = %bb1, %bb13, %bb15, %bb17
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

bb14:                                             ; preds = %bb12, %bb8
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %mid, i32 1)
  %_36.0 = extractvalue { i32, i1 } %6, 0
  %_36.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_36.1, label %panic8, label %bb15

bb9:                                              ; preds = %bb8
  %_25 = sext i32 %mid to i64
  %_26.0 = sub i64 %_25, 1
  %_26.1 = icmp ult i64 %_25, 1
  br i1 %_26.1, label %panic5, label %bb10

bb10:                                             ; preds = %bb9
  %_29 = icmp ult i64 %_26.0, %arr.1
  br i1 %_29, label %bb11, label %panic6

panic5:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5927b710192a7a9a1fb1714eb9f8b503) #22
  unreachable

bb11:                                             ; preds = %bb10
  %7 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_26.0
  %_23 = load float, ptr %7, align 4
  %_31 = sext i32 %mid to i64
  %_34 = icmp ult i64 %_31, %arr.1
  br i1 %_34, label %bb12, label %panic7

panic6:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26.0, i64 %arr.1, ptr align 8 @alloc_ba21a861607d779f91722041fe7bd89e) #22
  unreachable

bb12:                                             ; preds = %bb11
  %8 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_31
  %_30 = load float, ptr %8, align 4
  %_22 = fcmp oeq float %_23, %_30
  br i1 %_22, label %bb13, label %bb14

panic7:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 %arr.1, ptr align 8 @alloc_c63c65712d2e414deaf5602e9cb8ec13) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %mid, ptr %_0, align 4
  br label %bb18

bb15:                                             ; preds = %bb14
  %9 = call i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %low, i32 %_36.0)
  store i32 %9, ptr %_0, align 4
  br label %bb18

panic8:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1f7540cb6c73540930bd5a2e93964999) #22
  unreachable
}
