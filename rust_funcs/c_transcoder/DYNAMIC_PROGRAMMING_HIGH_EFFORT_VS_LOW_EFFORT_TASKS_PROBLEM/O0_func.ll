define i32 @f_gold(i64 %0, i64 %1, i32 %n) unnamed_addr #3 {
start:
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 4
  %6 = alloca [8 x i8], align 8
  %7 = alloca [8 x i8], align 4
  %8 = alloca [8 x i8], align 8
  %9 = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %10 = alloca [8 x i8], align 8
  %low = alloca [8 x i8], align 4
  %11 = alloca [8 x i8], align 8
  %high = alloca [8 x i8], align 4
  store i64 %0, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %high, ptr align 8 %11, i64 8, i1 false)
  store i64 %1, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %low, ptr align 8 %10, i64 8, i1 false)
  %_4 = icmp sle i32 %n, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = sext i32 %n to i64
  %_8.0 = sub i64 %_7, 1
  %_8.1 = icmp ult i64 %_7, 1
  br i1 %_8.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb13

bb3:                                              ; preds = %bb2
  %_9 = icmp ult i64 %_8.0, 2
  br i1 %_9, label %bb4, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_62bcd119a25023c6a0f5d5e3cd219cd5) #22
  unreachable

bb4:                                              ; preds = %bb3
  %12 = getelementptr inbounds nuw i32, ptr %high, i64 %_8.0
  %high_n = load i32, ptr %12, align 4
  %_12 = sext i32 %n to i64
  %_13.0 = sub i64 %_12, 1
  %_13.1 = icmp ult i64 %_12, 1
  br i1 %_13.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_8.0, i64 2, ptr align 8 @alloc_1a13199bcc1ea5035e85973ed0101f8e) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_14 = icmp ult i64 %_13.0, 2
  br i1 %_14, label %bb6, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3874bbad186ec49361398acf684e429a) #22
  unreachable

bb6:                                              ; preds = %bb5
  %13 = getelementptr inbounds nuw i32, ptr %low, i64 %_13.0
  %low_n = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 2)
  %_17.0 = extractvalue { i32, i1 } %14, 0
  %_17.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_17.1, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13.0, i64 2, ptr align 8 @alloc_6c7976e4b3399a05058e02660de6eb5c) #22
  unreachable

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %high, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 4 %9, i64 8, i1 false)
  %15 = load i64, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %low, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 4 %7, i64 8, i1 false)
  %16 = load i64, ptr %6, align 8
  %high_rec = call i32 @f_gold(i64 %15, i64 %16, i32 %_17.0)
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_20.0 = extractvalue { i32, i1 } %17, 0
  %_20.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_20.1, label %panic5, label %bb9

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e1a53d2a59bb772395a79f3736d567a6) #22
  unreachable

bb9:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %high, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 4 %5, i64 8, i1 false)
  %18 = load i64, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %low, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 4 %3, i64 8, i1 false)
  %19 = load i64, ptr %2, align 8
  %low_rec = call i32 @f_gold(i64 %18, i64 %19, i32 %_20.0)
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %high_n, i32 %high_rec)
  %_22.0 = extractvalue { i32, i1 } %20, 0
  %_22.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_22.1, label %panic6, label %bb11

panic5:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2a406db6b59c59943b091a26b4341951) #22
  unreachable

bb11:                                             ; preds = %bb9
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %low_n, i32 %low_rec)
  %_24.0 = extractvalue { i32, i1 } %21, 0
  %_24.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_24.1, label %panic7, label %bb12

panic6:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_00a1680de4c3effacf2a44b7442293ed) #22
  unreachable

bb12:                                             ; preds = %bb11
; call core::cmp::max
  %22 = call i32 @_ZN4core3cmp3max17ha13c35b070e8dfd0E(i32 %_22.0, i32 %_24.0) #19
  store i32 %22, ptr %_0, align 4
  br label %bb13

panic7:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fee4f0212954606538214626f9320b17) #22
  unreachable

bb13:                                             ; preds = %bb1, %bb12
  %23 = load i32, ptr %_0, align 4
  ret i32 %23
}
