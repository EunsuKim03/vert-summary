define i32 @f_gold(i64 %0, i32 %start1, i32 %end) unnamed_addr #3 {
start:
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %5 = alloca [8 x i8], align 8
  %array = alloca [8 x i8], align 4
  store i64 %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 8 %5, i64 8, i1 false)
  %_4 = icmp sgt i32 %start1, %end
  br i1 %_4, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %_8 = sext i32 %start1 to i64
  %_9 = icmp ult i64 %_8, 2
  br i1 %_9, label %bb4, label %panic

bb1:                                              ; preds = %start
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %end, i32 1)
  %_5.0 = extractvalue { i32, i1 } %6, 0
  %_5.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_5.1, label %panic5, label %bb2

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds nuw i32, ptr %array, i64 %_8
  %_7 = load i32, ptr %7, align 4
  %_6 = icmp ne i32 %start1, %_7
  br i1 %_6, label %bb5, label %bb6

panic:                                            ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_8, i64 2, ptr align 8 @alloc_a56c3ae2c8720567901f8c6a6bd168f9) #22
  unreachable

bb6:                                              ; preds = %bb4
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %start1, i32 %end)
  %_13.0 = extractvalue { i32, i1 } %8, 0
  %_13.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_13.1, label %panic2, label %bb7

bb5:                                              ; preds = %bb4
  store i32 %start1, ptr %_0, align 4
  br label %bb12

bb7:                                              ; preds = %bb6
  %_11 = sitofp i32 %_13.0 to float
  %mid = fdiv float %_11, 2.000000e+00
  %_16 = call i64 @llvm.fptoui.sat.i64.f32(float %mid)
  %_17 = icmp ult i64 %_16, 2
  br i1 %_17, label %bb8, label %panic3

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e6344d2c60a51f97ffc8fdf678d70799) #22
  unreachable

bb8:                                              ; preds = %bb7
  %9 = getelementptr inbounds nuw i32, ptr %array, i64 %_16
  %_15 = load i32, ptr %9, align 4
  %_18 = call i32 @llvm.fptosi.sat.i32.f32(float %mid)
  %_14 = icmp eq i32 %_15, %_18
  br i1 %_14, label %bb9, label %bb11

panic3:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_231b40b605c5224069c6c989caaa70a9) #22
  unreachable

bb11:                                             ; preds = %bb8
  %_22 = call i32 @llvm.fptosi.sat.i32.f32(float %mid)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %array, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 4 %4, i64 8, i1 false)
  %10 = load i64, ptr %3, align 8
  %11 = call i32 @f_gold(i64 %10, i32 %start1, i32 %_22)
  store i32 %11, ptr %_0, align 4
  br label %bb12

bb9:                                              ; preds = %bb8
  %_20 = call i32 @llvm.fptosi.sat.i32.f32(float %mid)
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_20, i32 1)
  %_21.0 = extractvalue { i32, i1 } %12, 0
  %_21.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_21.1, label %panic4, label %bb10

bb12:                                             ; preds = %bb2, %bb5, %bb10, %bb11
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb10:                                             ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %array, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 4 %2, i64 8, i1 false)
  %14 = load i64, ptr %1, align 8
  %15 = call i32 @f_gold(i64 %14, i32 %_21.0, i32 %end)
  store i32 %15, ptr %_0, align 4
  br label %bb12

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dda582ec20aa7173cc2125d2524aa0bc) #22
  unreachable

bb2:                                              ; preds = %bb1
  store i32 %_5.0, ptr %_0, align 4
  br label %bb12

panic5:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1a2f0e5afff5d34cf4499574002c60c4) #22
  unreachable
}
