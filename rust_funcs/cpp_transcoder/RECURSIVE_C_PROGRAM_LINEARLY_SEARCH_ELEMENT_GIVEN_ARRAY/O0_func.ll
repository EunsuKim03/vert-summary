define i32 @f_gold(i64 %0, i32 %l, i32 %r, i32 %x) unnamed_addr #3 {
start:
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %3, i64 8, i1 false)
  %_5 = icmp slt i32 %r, %l
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_8 = sext i32 %l to i64
  %_9 = icmp ult i64 %_8, 2
  br i1 %_9, label %bb3, label %panic

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb11

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_8
  %_7 = load i32, ptr %4, align 4
  %_6 = icmp eq i32 %_7, %x
  br i1 %_6, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_8, i64 2, ptr align 8 @alloc_c62fc899894916d0cc2e61cf97ef2e81) #22
  unreachable

bb5:                                              ; preds = %bb3
  %_12 = sext i32 %r to i64
  %_13 = icmp ult i64 %_12, 2
  br i1 %_13, label %bb6, label %panic1

bb4:                                              ; preds = %bb3
  store i32 %l, ptr %_0, align 4
  br label %bb11

bb6:                                              ; preds = %bb5
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_12
  %_11 = load i32, ptr %5, align 4
  %_10 = icmp eq i32 %_11, %x
  br i1 %_10, label %bb7, label %bb8

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 2, ptr align 8 @alloc_7ea5a74eb217e91dca487057373648e4) #22
  unreachable

bb8:                                              ; preds = %bb6
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l, i32 1)
  %_15.0 = extractvalue { i32, i1 } %6, 0
  %_15.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_15.1, label %panic2, label %bb9

bb7:                                              ; preds = %bb6
  store i32 %r, ptr %_0, align 4
  br label %bb11

bb9:                                              ; preds = %bb8
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %r, i32 1)
  %_17.0 = extractvalue { i32, i1 } %7, 0
  %_17.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_17.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e3bf5a0839ce511b932c7e94c3208c77) #22
  unreachable

bb10:                                             ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %arr, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 4 %2, i64 8, i1 false)
  %8 = load i64, ptr %1, align 8
  %9 = call i32 @f_gold(i64 %8, i32 %_15.0, i32 %_17.0, i32 %x)
  store i32 %9, ptr %_0, align 4
  br label %bb11

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2885ca65c8286cc4803fc822eee1ed66) #22
  unreachable

bb11:                                             ; preds = %bb1, %bb4, %bb7, %bb10
  %10 = load i32, ptr %_0, align 4
  ret i32 %10
}
