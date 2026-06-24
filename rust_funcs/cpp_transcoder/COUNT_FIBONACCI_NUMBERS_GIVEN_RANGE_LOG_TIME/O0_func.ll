define i32 @f_gold(i32 %low, i32 %high) unnamed_addr #3 {
start:
  %result = alloca [4 x i8], align 4
  %f3 = alloca [4 x i8], align 4
  %f2 = alloca [4 x i8], align 4
  %f1 = alloca [4 x i8], align 4
  store i32 0, ptr %f1, align 4
  store i32 1, ptr %f2, align 4
  store i32 1, ptr %f3, align 4
  store i32 0, ptr %result, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_8 = load i32, ptr %f1, align 4
  %_7 = icmp sle i32 %_8, %high
  br i1 %_7, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_10 = load i32, ptr %f1, align 4
  %_9 = icmp sge i32 %_10, %low
  br i1 %_9, label %bb3, label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %_12 = load i32, ptr %f2, align 4
  store i32 %_12, ptr %f1, align 4
  %_13 = load i32, ptr %f3, align 4
  store i32 %_13, ptr %f2, align 4
  %_14 = load i32, ptr %f1, align 4
  %_15 = load i32, ptr %f2, align 4
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_14, i32 %_15)
  %_16.0 = extractvalue { i32, i1 } %0, 0
  %_16.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_16.1, label %panic1, label %bb6

bb3:                                              ; preds = %bb2
  %1 = load i32, ptr %result, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %_11.0 = extractvalue { i32, i1 } %2, 0
  %_11.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_11.1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_11.0, ptr %result, align 4
  br label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1a7602fb18bb87f9fb0dea868bc85add) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_16.0, ptr %f3, align 4
  br label %bb1

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3a7f9a3c0392aff7506520a6e94f65fc) #22
  unreachable
}
