define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_4 = icmp eq i32 %n, 0
  br i1 %_4, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 1, ptr %_0, align 4
  br label %bb11

bb3:                                              ; preds = %bb1
  %_8 = sext i32 %n to i64
  %_9.0 = sub i64 %_8, 1
  %_9.1 = icmp ult i64 %_8, 1
  br i1 %_9.1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  %_12 = icmp ult i64 %_9.0, %arr.1
  br i1 %_12, label %bb5, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_509a5b63c1656b7e66206e764df74474) #22
  unreachable

bb5:                                              ; preds = %bb4
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_9.0
  %_6 = load i32, ptr %0, align 4
  %_15 = sext i32 %n to i64
  %_16.0 = sub i64 %_15, 2
  %_16.1 = icmp ult i64 %_15, 2
  br i1 %_16.1, label %panic2, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_9.0, i64 %arr.1, ptr align 8 @alloc_718fa8878655353a6e53f4a9b5e03a3d) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_19 = icmp ult i64 %_16.0, %arr.1
  br i1 %_19, label %bb7, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a887f65bf28d4c15260c98899e2c9984) #22
  unreachable

bb7:                                              ; preds = %bb6
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_16.0
  %_13 = load i32, ptr %1, align 4
  %_5 = icmp slt i32 %_6, %_13
  br i1 %_5, label %bb8, label %bb9

panic3:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16.0, i64 %arr.1, ptr align 8 @alloc_ea8152f9a4157690a70f14c0f1230358) #22
  unreachable

bb9:                                              ; preds = %bb7
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_21.0 = extractvalue { i32, i1 } %2, 0
  %_21.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_21.1, label %panic4, label %bb10

bb8:                                              ; preds = %bb7
  store i32 0, ptr %_0, align 4
  br label %bb11

bb10:                                             ; preds = %bb9
  %3 = call i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %_21.0)
  store i32 %3, ptr %_0, align 4
  br label %bb11

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5b16319997511ccb81924a07715435e5) #22
  unreachable

bb11:                                             ; preds = %bb2, %bb8, %bb10
  %4 = load i32, ptr %_0, align 4
  ret i32 %4
}
