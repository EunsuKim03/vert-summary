define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
  store i32 1, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_5 = load i32, ptr %sum, align 4
  %_4 = icmp slt i32 %_5, %n
  br i1 %_4, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  store i32 0, ptr %_0, align 4
  br label %bb8

bb2:                                              ; preds = %bb1
  %_6 = load i32, ptr %i, align 4
  %0 = load i32, ptr %sum, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %_6)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic, label %bb3

bb8:                                              ; preds = %bb4, %bb7
  %2 = load i32, ptr %_0, align 4
  ret i32 %2

bb3:                                              ; preds = %bb2
  store i32 %_7.0, ptr %sum, align 4
  %_9 = load i32, ptr %sum, align 4
  %_8 = icmp eq i32 %_9, %n
  br i1 %_8, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f4f419888d8b8eda927d0f413832f8d7) #22
  unreachable

bb5:                                              ; preds = %bb3
  %3 = load i32, ptr %i, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2)
  %_10.0 = extractvalue { i32, i1 } %4, 0
  %_10.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_10.1, label %panic1, label %bb6

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_0, align 4
  br label %bb8

bb6:                                              ; preds = %bb5
  store i32 %_10.0, ptr %i, align 4
  br label %bb1

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_85ec846044633d76bdf1c79700b35749) #22
  unreachable
}
