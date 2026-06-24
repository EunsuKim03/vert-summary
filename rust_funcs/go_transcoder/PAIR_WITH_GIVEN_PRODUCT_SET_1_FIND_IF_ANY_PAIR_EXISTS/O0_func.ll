define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %j = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb13, %start
  %_6 = load i32, ptr %i, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = icmp slt i32 %_6, %_8.0
  br i1 %_5, label %bb3, label %bb14

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d02d663097140ef9f8e5b1486d74d324) #22
  unreachable

bb14:                                             ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb15

bb3:                                              ; preds = %bb2
  %_10 = load i32, ptr %i, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_10, i32 1)
  %_11.0 = extractvalue { i32, i1 } %3, 0
  %_11.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_11.1, label %panic1, label %bb4

bb15:                                             ; preds = %bb9, %bb14
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb4:                                              ; preds = %bb3
  store i32 %_11.0, ptr %j, align 4
  br label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f525bf07fe2a089ed132bb3ce77355b9) #22
  unreachable

bb5:                                              ; preds = %bb11, %bb4
  %_13 = load i32, ptr %j, align 4
  %_12 = icmp slt i32 %_13, %n
  br i1 %_12, label %bb6, label %bb12

bb12:                                             ; preds = %bb5
  %5 = load i32, ptr %i, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 1)
  %_28.0 = extractvalue { i32, i1 } %6, 0
  %_28.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_28.1, label %panic2, label %bb13

bb6:                                              ; preds = %bb5
  %_19 = load i32, ptr %i, align 4
  %_18 = sext i32 %_19 to i64
  %_20 = icmp ult i64 %_18, 2
  br i1 %_20, label %bb7, label %panic3

bb13:                                             ; preds = %bb12
  store i32 %_28.0, ptr %i, align 4
  br label %bb1

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_222a202e4d3a6857e298870dfaa0860c) #22
  unreachable

bb7:                                              ; preds = %bb6
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %_18
  %_17 = load i32, ptr %7, align 4
  %_16 = sitofp i32 %_17 to float
  %_24 = load i32, ptr %j, align 4
  %_23 = sext i32 %_24 to i64
  %_25 = icmp ult i64 %_23, 2
  br i1 %_25, label %bb8, label %panic4

panic3:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_b9376217ec17177bb060a9151269e606) #22
  unreachable

bb8:                                              ; preds = %bb7
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %_23
  %_22 = load i32, ptr %8, align 4
  %_21 = sitofp i32 %_22 to float
  %_15 = fmul float %_16, %_21
  %_26 = sitofp i32 %x to float
  %_14 = fcmp oeq float %_15, %_26
  br i1 %_14, label %bb9, label %bb10

panic4:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 2, ptr align 8 @alloc_4663183fb16f640426edf99e91e8db9d) #22
  unreachable

bb10:                                             ; preds = %bb8
  %9 = load i32, ptr %j, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 1)
  %_27.0 = extractvalue { i32, i1 } %10, 0
  %_27.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_27.1, label %panic5, label %bb11

bb9:                                              ; preds = %bb8
  store i32 1, ptr %_0, align 4
  br label %bb15

bb11:                                             ; preds = %bb10
  store i32 %_27.0, ptr %j, align 4
  br label %bb5

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3d936c9f3222b238c37dc6c08a230401) #22
  unreachable
}
