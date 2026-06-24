define i32 @f_gold(i64 %0, float %low, float %high, float %x) unnamed_addr #3 {
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
  %_6 = fadd float %low, %high
  %mid = fdiv float %_6, 2.000000e+00
  %_9 = call i64 @llvm.fptoui.sat.i64.f32(float %low)
  %_10 = icmp ult i64 %_9, 2
  br i1 %_10, label %bb1, label %panic

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds nuw float, ptr %arr, i64 %_9
  %_8 = load float, ptr %6, align 4
  %_7 = fcmp ole float %x, %_8
  br i1 %_7, label %bb2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_9, i64 2, ptr align 8 @alloc_0ede3545f0ddfc2307823b3d1308bf9c) #22
  unreachable

bb3:                                              ; preds = %bb1
  %_13 = call i64 @llvm.fptoui.sat.i64.f32(float %high)
  %_14 = icmp ult i64 %_13, 2
  br i1 %_14, label %bb4, label %panic1

bb2:                                              ; preds = %bb1
  %7 = call i32 @llvm.fptosi.sat.i32.f32(float %low)
  store i32 %7, ptr %_0, align 4
  br label %bb21

bb4:                                              ; preds = %bb3
  %8 = getelementptr inbounds nuw float, ptr %arr, i64 %_13
  %_12 = load float, ptr %8, align 4
  %_11 = fcmp ogt float %x, %_12
  br i1 %_11, label %bb5, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 2, ptr align 8 @alloc_0cfd1ed7a246ddad1d928ca680821682) #22
  unreachable

bb6:                                              ; preds = %bb4
  %_17 = call i64 @llvm.fptoui.sat.i64.f32(float %mid)
  %_18 = icmp ult i64 %_17, 2
  br i1 %_18, label %bb7, label %panic2

bb5:                                              ; preds = %bb4
  store i32 -1, ptr %_0, align 4
  br label %bb21

bb7:                                              ; preds = %bb6
  %9 = getelementptr inbounds nuw float, ptr %arr, i64 %_17
  %_16 = load float, ptr %9, align 4
  %_15 = fcmp oeq float %_16, %x
  br i1 %_15, label %bb8, label %bb9

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 2, ptr align 8 @alloc_b2a0a8713e9aeb8c50a78f43cc67d55b) #22
  unreachable

bb9:                                              ; preds = %bb7
  %_21 = call i64 @llvm.fptoui.sat.i64.f32(float %mid)
  %_22 = icmp ult i64 %_21, 2
  br i1 %_22, label %bb10, label %panic3

bb8:                                              ; preds = %bb7
  %10 = call i32 @llvm.fptosi.sat.i32.f32(float %mid)
  store i32 %10, ptr %_0, align 4
  br label %bb21

bb10:                                             ; preds = %bb9
  %11 = getelementptr inbounds nuw float, ptr %arr, i64 %_21
  %_20 = load float, ptr %11, align 4
  %_19 = fcmp olt float %_20, %x
  br i1 %_19, label %bb11, label %bb16

panic3:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 2, ptr align 8 @alloc_1bf79bfaedb545f95912c594b73ea5e0) #22
  unreachable

bb16:                                             ; preds = %bb10
  %_33 = fsub float %mid, 1.000000e+00
  %_32 = fcmp oge float %_33, %low
  br i1 %_32, label %bb17, label %bb20

bb11:                                             ; preds = %bb10
  %_24 = fadd float %mid, 1.000000e+00
  %_23 = fcmp ole float %_24, %high
  br i1 %_23, label %bb12, label %bb15

bb20:                                             ; preds = %bb18, %bb16
  %_39 = fsub float %mid, 1.000000e+00
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %arr, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 4 %4, i64 8, i1 false)
  %12 = load i64, ptr %3, align 8
  %13 = call i32 @f_gold(i64 %12, float %low, float %_39, float %x)
  store i32 %13, ptr %_0, align 4
  br label %bb21

bb17:                                             ; preds = %bb16
  %_37 = fsub float %mid, 1.000000e+00
  %_36 = call i64 @llvm.fptoui.sat.i64.f32(float %_37)
  %_38 = icmp ult i64 %_36, 2
  br i1 %_38, label %bb18, label %panic4

bb18:                                             ; preds = %bb17
  %14 = getelementptr inbounds nuw float, ptr %arr, i64 %_36
  %_35 = load float, ptr %14, align 4
  %_34 = fcmp ogt float %x, %_35
  br i1 %_34, label %bb19, label %bb20

panic4:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_36, i64 2, ptr align 8 @alloc_4bea39901254538bf9fd58d8d9d2aac0) #22
  unreachable

bb19:                                             ; preds = %bb18
  %15 = call i32 @llvm.fptosi.sat.i32.f32(float %mid)
  store i32 %15, ptr %_0, align 4
  br label %bb21

bb21:                                             ; preds = %bb2, %bb5, %bb8, %bb14, %bb15, %bb19, %bb20
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb15:                                             ; preds = %bb13, %bb11
  %_31 = fadd float %mid, 1.000000e+00
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %arr, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 4 %2, i64 8, i1 false)
  %17 = load i64, ptr %1, align 8
  %18 = call i32 @f_gold(i64 %17, float %_31, float %high, float %x)
  store i32 %18, ptr %_0, align 4
  br label %bb21

bb12:                                             ; preds = %bb11
  %_28 = fadd float %mid, 1.000000e+00
  %_27 = call i64 @llvm.fptoui.sat.i64.f32(float %_28)
  %_29 = icmp ult i64 %_27, 2
  br i1 %_29, label %bb13, label %panic5

bb13:                                             ; preds = %bb12
  %19 = getelementptr inbounds nuw float, ptr %arr, i64 %_27
  %_26 = load float, ptr %19, align 4
  %_25 = fcmp ole float %x, %_26
  br i1 %_25, label %bb14, label %bb15

panic5:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 2, ptr align 8 @alloc_816cf9c507bebe3aa2a0c869671c2791) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_30 = fadd float %mid, 1.000000e+00
  %20 = call i32 @llvm.fptosi.sat.i32.f32(float %_30)
  store i32 %20, ptr %_0, align 4
  br label %bb21
}
