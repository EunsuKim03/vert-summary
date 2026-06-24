define i32 @f_gold(i64 %0, i32 %n, i32 %key) unnamed_addr #3 {
start:
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_6 = load i64, ptr %i, align 8
  %_7 = sext i32 %n to i64
  %_5 = icmp ult i64 %_6, %_7
  br i1 %_5, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  store i32 -1, ptr %_0, align 4
  br label %bb8

bb2:                                              ; preds = %bb1
  %_10 = load i64, ptr %i, align 8
  %_11 = icmp ult i64 %_10, 2
  br i1 %_11, label %bb3, label %panic

bb8:                                              ; preds = %bb4, %bb7
  %2 = load i32, ptr %_0, align 4
  ret i32 %2

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_10
  %_9 = load i32, ptr %3, align 4
  %_8 = icmp eq i32 %_9, %key
  br i1 %_8, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_10, i64 2, ptr align 8 @alloc_3e54bf5db9d0af93d0885e2c6be4dd01) #22
  unreachable

bb5:                                              ; preds = %bb3
  %4 = load i64, ptr %i, align 8
  %_13.0 = add i64 %4, 1
  %_13.1 = icmp ult i64 %_13.0, %4
  br i1 %_13.1, label %panic1, label %bb6

bb4:                                              ; preds = %bb3
  %_12 = load i64, ptr %i, align 8
  %5 = trunc i64 %_12 to i32
  store i32 %5, ptr %_0, align 4
  br label %bb8

bb6:                                              ; preds = %bb5
  store i64 %_13.0, ptr %i, align 8
  br label %bb1

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_18f4652ef8e1cc65a832dfa3e95fdbb0) #22
  unreachable
}
