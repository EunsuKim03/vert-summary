define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_5 = load i32, ptr %i, align 4
  %_4 = icmp slt i32 %_5, %n
  br i1 %_4, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  store i32 -1, ptr %_0, align 4
  br label %bb8

bb2:                                              ; preds = %bb1
  %_9 = load i32, ptr %i, align 4
  %_8 = sext i32 %_9 to i64
  %_10 = icmp ult i64 %_8, 2
  br i1 %_10, label %bb3, label %panic

bb8:                                              ; preds = %bb4, %bb7
  %2 = load i32, ptr %_0, align 4
  ret i32 %2

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_8
  %_7 = load i32, ptr %3, align 4
  %_11 = load i32, ptr %i, align 4
  %_6 = icmp eq i32 %_7, %_11
  br i1 %_6, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_8, i64 2, ptr align 8 @alloc_d86e36c443320cbcecb6c273d2945322) #22
  unreachable

bb5:                                              ; preds = %bb3
  %4 = load i32, ptr %i, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %_12.0 = extractvalue { i32, i1 } %5, 0
  %_12.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_12.1, label %panic1, label %bb6

bb4:                                              ; preds = %bb3
  %6 = load i32, ptr %i, align 4
  store i32 %6, ptr %_0, align 4
  br label %bb8

bb6:                                              ; preds = %bb5
  store i32 %_12.0, ptr %i, align 4
  br label %bb1

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cdbe8bd91c79ad9d8bffc0b06d2cc388) #22
  unreachable
}
