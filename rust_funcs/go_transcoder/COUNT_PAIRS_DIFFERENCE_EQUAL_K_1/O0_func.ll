define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %count = alloca [4 x i8], align 4
  %r = alloca [8 x i8], align 8
  %l = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hc20d56ad23bdc838E"(ptr align 4 %arr, i64 2) #20
  store i64 0, ptr %l, align 8
  store i64 0, ptr %r, align 8
  store i32 0, ptr %count, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
  %_11 = load i64, ptr %r, align 8
  %_12 = sext i32 %n to i64
  %_10 = icmp ult i64 %_11, %_12
  br i1 %_10, label %bb3, label %bb10

bb10:                                             ; preds = %bb2
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb2
  %_15 = load i64, ptr %r, align 8
  %_16 = icmp ult i64 %_15, 2
  br i1 %_16, label %bb4, label %panic

bb4:                                              ; preds = %bb3
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15
  %_14 = load i32, ptr %2, align 4
  %_18 = load i64, ptr %l, align 8
  %_19 = icmp ult i64 %_18, 2
  br i1 %_19, label %bb5, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 2, ptr align 8 @alloc_190f9b25faca06df3893f684407c1a87) #22
  unreachable

bb5:                                              ; preds = %bb4
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_18
  %_17 = load i32, ptr %3, align 4
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_14, i32 %_17)
  %_20.0 = extractvalue { i32, i1 } %4, 0
  %_20.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_20.1, label %panic2, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_dfdd7696008d6a4e560bc89f11b0596b) #22
  unreachable

bb6:                                              ; preds = %bb5
  %5 = load i32, ptr %count, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 1)
  %_21.0 = extractvalue { i32, i1 } %6, 0
  %_21.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_21.1, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_190f9b25faca06df3893f684407c1a87) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %_21.0, ptr %count, align 4
  %7 = load i64, ptr %l, align 8
  %_22.0 = add i64 %7, 1
  %_22.1 = icmp ult i64 %_22.0, %7
  br i1 %_22.1, label %panic4, label %bb8

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0f8f7df59f7268a1826d659f245e1687) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i64 %_22.0, ptr %l, align 8
  %8 = load i64, ptr %r, align 8
  %_23.0 = add i64 %8, 1
  %_23.1 = icmp ult i64 %_23.0, %8
  br i1 %_23.1, label %panic5, label %bb9

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bbfc831bc3950fb059154b42142377c9) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i64 %_23.0, ptr %r, align 8
  br label %bb2

panic5:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2ec24883ab931fbdf2f47fd911b7c780) #22
  unreachable
}
