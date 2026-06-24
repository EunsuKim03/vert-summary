define i32 @f_gold(i64 %0, i32 %low, i32 %high, i32 %x) unnamed_addr #3 {
start:
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %5 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %5, i64 8, i1 false)
  %_8 = sext i32 %low to i64
  %_9 = icmp ult i64 %_8, 2
  br i1 %_9, label %bb1, label %panic

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_8
  %_7 = load i32, ptr %6, align 4
  %_6 = icmp sle i32 %x, %_7
  br i1 %_6, label %bb2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_8, i64 2, ptr align 8 @alloc_1828efba8b859b079e1827ec7329c7e8) #22
  unreachable

bb3:                                              ; preds = %bb1
  %_12 = sext i32 %high to i64
  %_13 = icmp ult i64 %_12, 2
  br i1 %_13, label %bb4, label %panic1

bb2:                                              ; preds = %bb1
  store i32 %low, ptr %_0, align 4
  br label %bb31

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %_12
  %_11 = load i32, ptr %7, align 4
  %_10 = icmp sgt i32 %x, %_11
  br i1 %_10, label %bb5, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 2, ptr align 8 @alloc_0888e9ada2e3d2f61519887a64831764) #22
  unreachable

bb6:                                              ; preds = %bb4
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %low, i32 %high)
  %_15.0 = extractvalue { i32, i1 } %8, 0
  %_15.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_15.1, label %panic2, label %bb7

bb5:                                              ; preds = %bb4
  store i32 -1, ptr %_0, align 4
  br label %bb31

bb7:                                              ; preds = %bb6
  %_18 = icmp eq i32 %_15.0, -2147483648
  %_19 = and i1 false, %_18
  br i1 %_19, label %panic3, label %bb9

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c8778a729cdbb88457a72a8c6670ba95) #22
  unreachable

bb9:                                              ; preds = %bb7
  %mid = sdiv i32 %_15.0, 2
  %_22 = sext i32 %mid to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb10, label %panic4

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_c8778a729cdbb88457a72a8c6670ba95) #22
  unreachable

bb10:                                             ; preds = %bb9
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %_21 = load i32, ptr %9, align 4
  %_20 = icmp eq i32 %_21, %x
  br i1 %_20, label %bb11, label %bb12

panic4:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_cd6b779b75eb92aa6c9a654d56f6a170) #22
  unreachable

bb12:                                             ; preds = %bb10
  %_26 = sext i32 %mid to i64
  %_27 = icmp ult i64 %_26, 2
  br i1 %_27, label %bb13, label %panic5

bb11:                                             ; preds = %bb10
  store i32 %mid, ptr %_0, align 4
  br label %bb31

bb13:                                             ; preds = %bb12
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %_26
  %_25 = load i32, ptr %10, align 4
  %_24 = icmp slt i32 %_25, %x
  br i1 %_24, label %bb14, label %bb23

panic5:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 2, ptr align 8 @alloc_f72f1695dd17081ca2c0084e438a751f) #22
  unreachable

bb23:                                             ; preds = %bb13
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %mid, i32 1)
  %_42.0 = extractvalue { i32, i1 } %11, 0
  %_42.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_42.1, label %panic6, label %bb24

bb14:                                             ; preds = %bb13
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mid, i32 1)
  %_30.0 = extractvalue { i32, i1 } %12, 0
  %_30.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_30.1, label %panic10, label %bb15

bb24:                                             ; preds = %bb23
  %_40 = icmp sge i32 %_42.0, %low
  br i1 %_40, label %bb25, label %bb29

panic6:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a8a6d4fab1fb54ff85387c5968268746) #22
  unreachable

bb29:                                             ; preds = %bb27, %bb24
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %mid, i32 1)
  %_50.0 = extractvalue { i32, i1 } %13, 0
  %_50.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_50.1, label %panic9, label %bb30

bb25:                                             ; preds = %bb24
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %mid, i32 1)
  %_47.0 = extractvalue { i32, i1 } %14, 0
  %_47.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_47.1, label %panic7, label %bb26

bb26:                                             ; preds = %bb25
  %_45 = sext i32 %_47.0 to i64
  %_48 = icmp ult i64 %_45, 2
  br i1 %_48, label %bb27, label %panic8

panic7:                                           ; preds = %bb25
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ac83f887e602e64b2b8f528a10cc034e) #22
  unreachable

bb27:                                             ; preds = %bb26
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_45
  %_44 = load i32, ptr %15, align 4
  %_43 = icmp sgt i32 %x, %_44
  br i1 %_43, label %bb28, label %bb29

panic8:                                           ; preds = %bb26
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_45, i64 2, ptr align 8 @alloc_1421412ab41d3bb094fb45b96a412452) #22
  unreachable

bb28:                                             ; preds = %bb27
  store i32 %mid, ptr %_0, align 4
  br label %bb31

bb30:                                             ; preds = %bb29
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %arr, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 4 %4, i64 8, i1 false)
  %16 = load i64, ptr %3, align 8
  %17 = call i32 @f_gold(i64 %16, i32 %low, i32 %_50.0, i32 %x)
  store i32 %17, ptr %_0, align 4
  br label %bb31

panic9:                                           ; preds = %bb29
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_13187aa36ee66efb1a689a05d1b300f9) #22
  unreachable

bb31:                                             ; preds = %bb2, %bb5, %bb11, %bb20, %bb22, %bb28, %bb30
  %18 = load i32, ptr %_0, align 4
  ret i32 %18

bb15:                                             ; preds = %bb14
  %_28 = icmp sle i32 %_30.0, %high
  br i1 %_28, label %bb16, label %bb21

panic10:                                          ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b356a94afc920a5f825f6902a959b51e) #22
  unreachable

bb21:                                             ; preds = %bb18, %bb15
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mid, i32 1)
  %_39.0 = extractvalue { i32, i1 } %19, 0
  %_39.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_39.1, label %panic13, label %bb22

bb16:                                             ; preds = %bb15
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mid, i32 1)
  %_35.0 = extractvalue { i32, i1 } %20, 0
  %_35.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_35.1, label %panic11, label %bb17

bb17:                                             ; preds = %bb16
  %_33 = sext i32 %_35.0 to i64
  %_36 = icmp ult i64 %_33, 2
  br i1 %_36, label %bb18, label %panic12

panic11:                                          ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6962ad1bf70689f33bcbbb651a662828) #22
  unreachable

bb18:                                             ; preds = %bb17
  %21 = getelementptr inbounds nuw i32, ptr %arr, i64 %_33
  %_32 = load i32, ptr %21, align 4
  %_31 = icmp sle i32 %x, %_32
  br i1 %_31, label %bb19, label %bb21

panic12:                                          ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_33, i64 2, ptr align 8 @alloc_e8200c23653251dab36e15c038449549) #22
  unreachable

bb19:                                             ; preds = %bb18
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mid, i32 1)
  %_37.0 = extractvalue { i32, i1 } %22, 0
  %_37.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_37.1, label %panic14, label %bb20

bb22:                                             ; preds = %bb21
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %arr, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 4 %2, i64 8, i1 false)
  %23 = load i64, ptr %1, align 8
  %24 = call i32 @f_gold(i64 %23, i32 %_39.0, i32 %high, i32 %x)
  store i32 %24, ptr %_0, align 4
  br label %bb31

panic13:                                          ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5ac938cf8ff6dbfc02e86656b2135e78) #22
  unreachable

bb20:                                             ; preds = %bb19
  store i32 %_37.0, ptr %_0, align 4
  br label %bb31

panic14:                                          ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0d6097917dfb781c1c94aad0147797c2) #22
  unreachable
}
