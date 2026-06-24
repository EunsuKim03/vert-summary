define i32 @f_gold(i64 %0, i64 %1, i32 %n1, i32 %n2) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %min = alloca [4 x i8], align 4
  %max = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr2 = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr1, ptr align 8 %3, i64 8, i1 false)
  store i64 %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr2, ptr align 8 %2, i64 8, i1 false)
  %4 = getelementptr inbounds nuw i32, ptr %arr1, i64 0
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %max, align 4
  %6 = getelementptr inbounds nuw i32, ptr %arr2, i64 0
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %min, align 4
  store float 1.000000e+00, ptr %i, align 4
  br label %bb3

bb3:                                              ; preds = %bb13, %start
  %_13 = load float, ptr %i, align 4
  %_14 = sitofp i32 %n1 to float
  %_12 = fcmp olt float %_13, %_14
  br i1 %_12, label %bb4, label %bb14

bb14:                                             ; preds = %bb19, %bb4, %bb3
  %_39 = load float, ptr %i, align 4
  %_40 = sitofp i32 %n1 to float
  %_38 = fcmp olt float %_39, %_40
  br i1 %_38, label %bb15, label %bb20

bb4:                                              ; preds = %bb3
  %_16 = load float, ptr %i, align 4
  %_17 = sitofp i32 %n2 to float
  %_15 = fcmp olt float %_16, %_17
  br i1 %_15, label %bb5, label %bb14

bb5:                                              ; preds = %bb4
  %_21 = load float, ptr %i, align 4
  %_20 = call i64 @llvm.fptoui.sat.i64.f32(float %_21)
  %_22 = icmp ult i64 %_20, 2
  br i1 %_22, label %bb6, label %panic5

bb20:                                             ; preds = %bb25, %bb14
  %_52 = load float, ptr %i, align 4
  %_53 = sitofp i32 %n2 to float
  %_51 = fcmp olt float %_52, %_53
  br i1 %_51, label %bb21, label %bb26

bb15:                                             ; preds = %bb14
  %_44 = load float, ptr %i, align 4
  %_43 = call i64 @llvm.fptoui.sat.i64.f32(float %_44)
  %_45 = icmp ult i64 %_43, 2
  br i1 %_45, label %bb16, label %panic3

bb26:                                             ; preds = %bb20
  %_64 = load i32, ptr %max, align 4
  %_65 = load i32, ptr %min, align 4
  %8 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_64, i32 %_65)
  %_66.0 = extractvalue { i32, i1 } %8, 0
  %_66.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_66.1, label %panic, label %bb27

bb21:                                             ; preds = %bb20
  %_57 = load float, ptr %i, align 4
  %_56 = call i64 @llvm.fptoui.sat.i64.f32(float %_57)
  %_58 = icmp ult i64 %_56, 2
  br i1 %_58, label %bb22, label %panic1

bb27:                                             ; preds = %bb26
  ret i32 %_66.0

panic:                                            ; preds = %bb26
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_af0a3b6faa0234eff3d35c752dfdd671) #22
  unreachable

bb22:                                             ; preds = %bb21
  %9 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_56
  %_55 = load i32, ptr %9, align 4
  %_59 = load i32, ptr %min, align 4
  %_54 = icmp slt i32 %_55, %_59
  br i1 %_54, label %bb23, label %bb25

panic1:                                           ; preds = %bb21
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_56, i64 2, ptr align 8 @alloc_f915f4c3cc7fcee1820958dd08eef377) #22
  unreachable

bb25:                                             ; preds = %bb24, %bb22
  %10 = load float, ptr %i, align 4
  %11 = fadd float %10, 1.000000e+00
  store float %11, ptr %i, align 4
  br label %bb20

bb23:                                             ; preds = %bb22
  %_62 = load float, ptr %i, align 4
  %_61 = call i64 @llvm.fptoui.sat.i64.f32(float %_62)
  %_63 = icmp ult i64 %_61, 2
  br i1 %_63, label %bb24, label %panic2

bb24:                                             ; preds = %bb23
  %12 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_61
  %_60 = load i32, ptr %12, align 4
  store i32 %_60, ptr %min, align 4
  br label %bb25

panic2:                                           ; preds = %bb23
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_61, i64 2, ptr align 8 @alloc_66b578bc84d151f17818bff9620731a9) #22
  unreachable

bb16:                                             ; preds = %bb15
  %13 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_43
  %_42 = load i32, ptr %13, align 4
  %_46 = load i32, ptr %max, align 4
  %_41 = icmp sgt i32 %_42, %_46
  br i1 %_41, label %bb17, label %bb19

panic3:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_43, i64 2, ptr align 8 @alloc_06d13958b4bfed0a0f933deb020bccba) #22
  unreachable

bb19:                                             ; preds = %bb18, %bb16
  %14 = load float, ptr %i, align 4
  %15 = fadd float %14, 1.000000e+00
  store float %15, ptr %i, align 4
  br label %bb14

bb17:                                             ; preds = %bb16
  %_49 = load float, ptr %i, align 4
  %_48 = call i64 @llvm.fptoui.sat.i64.f32(float %_49)
  %_50 = icmp ult i64 %_48, 2
  br i1 %_50, label %bb18, label %panic4

bb18:                                             ; preds = %bb17
  %16 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_48
  %_47 = load i32, ptr %16, align 4
  store i32 %_47, ptr %max, align 4
  br label %bb19

panic4:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_48, i64 2, ptr align 8 @alloc_1c36751b0828c1c8a3b55f419e8d8df3) #22
  unreachable

bb6:                                              ; preds = %bb5
  %17 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_20
  %_19 = load i32, ptr %17, align 4
  %_23 = load i32, ptr %max, align 4
  %_18 = icmp sgt i32 %_19, %_23
  br i1 %_18, label %bb7, label %bb9

panic5:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 2, ptr align 8 @alloc_fca4eea08d7f81f30300d74c1fcb7c3f) #22
  unreachable

bb9:                                              ; preds = %bb8, %bb6
  %_31 = load float, ptr %i, align 4
  %_30 = call i64 @llvm.fptoui.sat.i64.f32(float %_31)
  %_32 = icmp ult i64 %_30, 2
  br i1 %_32, label %bb10, label %panic7

bb7:                                              ; preds = %bb6
  %_26 = load float, ptr %i, align 4
  %_25 = call i64 @llvm.fptoui.sat.i64.f32(float %_26)
  %_27 = icmp ult i64 %_25, 2
  br i1 %_27, label %bb8, label %panic6

bb8:                                              ; preds = %bb7
  %18 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_25
  %_24 = load i32, ptr %18, align 4
  store i32 %_24, ptr %max, align 4
  br label %bb9

panic6:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_1ae0d986eb1b284108771ca3929a5c86) #22
  unreachable

bb10:                                             ; preds = %bb9
  %19 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_30
  %_29 = load i32, ptr %19, align 4
  %_33 = load i32, ptr %min, align 4
  %_28 = icmp slt i32 %_29, %_33
  br i1 %_28, label %bb11, label %bb13

panic7:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_30, i64 2, ptr align 8 @alloc_232960d684a359ebf72e42b85d51815c) #22
  unreachable

bb13:                                             ; preds = %bb12, %bb10
  %20 = load float, ptr %i, align 4
  %21 = fadd float %20, 1.000000e+00
  store float %21, ptr %i, align 4
  br label %bb3

bb11:                                             ; preds = %bb10
  %_36 = load float, ptr %i, align 4
  %_35 = call i64 @llvm.fptoui.sat.i64.f32(float %_36)
  %_37 = icmp ult i64 %_35, 2
  br i1 %_37, label %bb12, label %panic8

bb12:                                             ; preds = %bb11
  %22 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_35
  %_34 = load i32, ptr %22, align 4
  store i32 %_34, ptr %min, align 4
  br label %bb13

panic8:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35, i64 2, ptr align 8 @alloc_d0ec1a76dc131e363c8b558633bf9824) #22
  unreachable
}
