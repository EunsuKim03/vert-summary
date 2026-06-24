define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %k) unnamed_addr #3 {
start:
  %i = alloca [8 x i8], align 8
  %max_sum = alloca [4 x i8], align 4
  store i32 0, ptr %max_sum, align 4
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hcc45fd14c544789eE"(ptr align 4 %arr.0, i64 %arr.1) #20
  %_8.0 = sub i64 %arr.1, 1
  %_8.1 = icmp ult i64 %arr.1, 1
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  store i64 %_8.0, ptr %i, align 8
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2f5349c2af2bd81f187851d2a4b07437) #22
  unreachable

bb3:                                              ; preds = %bb17, %bb2
  %_10 = load i64, ptr %i, align 8
  %_9 = icmp ugt i64 %_10, 0
  br i1 %_9, label %bb4, label %bb18

bb18:                                             ; preds = %bb3
  %_0 = load i32, ptr %max_sum, align 4
  ret i32 %_0

bb4:                                              ; preds = %bb3
  %_14 = load i64, ptr %i, align 8
  %_17 = icmp ult i64 %_14, %arr.1
  br i1 %_17, label %bb5, label %panic1

bb5:                                              ; preds = %bb4
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_14
  %_13 = load i32, ptr %0, align 4
  %_20 = load i64, ptr %i, align 8
  %_21.0 = sub i64 %_20, 1
  %_21.1 = icmp ult i64 %_20, 1
  br i1 %_21.1, label %panic2, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 %arr.1, ptr align 8 @alloc_84787e75ce7de940e2d85c4e2d781be9) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_24 = icmp ult i64 %_21.0, %arr.1
  br i1 %_24, label %bb7, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b6463ea6217219df889f76ada4fe77b3) #22
  unreachable

bb7:                                              ; preds = %bb6
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_21.0
  %_18 = load i32, ptr %1, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_13, i32 %_18)
  %_25.0 = extractvalue { i32, i1 } %2, 0
  %_25.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_25.1, label %panic4, label %bb8

panic3:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21.0, i64 %arr.1, ptr align 8 @alloc_cd80f30b2ff03e3b3ded22f1d247003c) #22
  unreachable

bb8:                                              ; preds = %bb7
  %_11 = icmp slt i32 %_25.0, %k
  br i1 %_11, label %bb9, label %bb16

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9d82d3ccaa31a57c475286a4e90d1450) #22
  unreachable

bb16:                                             ; preds = %bb15, %bb8
  %3 = load i64, ptr %i, align 8
  %_41.0 = sub i64 %3, 1
  %_41.1 = icmp ult i64 %3, 1
  br i1 %_41.1, label %panic11, label %bb17

bb9:                                              ; preds = %bb8
  %_27 = load i64, ptr %i, align 8
  %_30 = icmp ult i64 %_27, %arr.1
  br i1 %_30, label %bb10, label %panic5

bb10:                                             ; preds = %bb9
  %4 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_27
  %_26 = load i32, ptr %4, align 4
  %5 = load i32, ptr %max_sum, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 %_26)
  %_31.0 = extractvalue { i32, i1 } %6, 0
  %_31.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_31.1, label %panic6, label %bb11

panic5:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 %arr.1, ptr align 8 @alloc_89e0327a2e4a91029761a293a713ac3d) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_31.0, ptr %max_sum, align 4
  %_34 = load i64, ptr %i, align 8
  %_35.0 = sub i64 %_34, 1
  %_35.1 = icmp ult i64 %_34, 1
  br i1 %_35.1, label %panic7, label %bb12

panic6:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3814d6c355786e0b83eeae1039cbf74d) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_38 = icmp ult i64 %_35.0, %arr.1
  br i1 %_38, label %bb13, label %panic8

panic7:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_eff098074e0c69b0e08b2abfece64416) #22
  unreachable

bb13:                                             ; preds = %bb12
  %7 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_35.0
  %_32 = load i32, ptr %7, align 4
  %8 = load i32, ptr %max_sum, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 %_32)
  %_39.0 = extractvalue { i32, i1 } %9, 0
  %_39.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_39.1, label %panic9, label %bb14

panic8:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35.0, i64 %arr.1, ptr align 8 @alloc_0d7eef48c26143433451562949c07461) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_39.0, ptr %max_sum, align 4
  %10 = load i64, ptr %i, align 8
  %_40.0 = sub i64 %10, 1
  %_40.1 = icmp ult i64 %10, 1
  br i1 %_40.1, label %panic10, label %bb15

panic9:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c7869d33bf55a93ca9313380eaeb26e8) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i64 %_40.0, ptr %i, align 8
  br label %bb16

panic10:                                          ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b77402cab9740a36d8644b28e63631dd) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i64 %_41.0, ptr %i, align 8
  br label %bb3

panic11:                                          ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cbf71179aa624a17dae9010925b91890) #22
  unreachable
}
