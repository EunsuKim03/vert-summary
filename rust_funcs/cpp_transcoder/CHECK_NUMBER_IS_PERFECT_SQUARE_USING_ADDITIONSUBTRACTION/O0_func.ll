define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
  store i32 1, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %_5 = load i32, ptr %sum, align 4
  %_4 = icmp slt i32 %_5, %n
  br i1 %_4, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  store i32 0, ptr %_0, align 4
  br label %bb7

bb2:                                              ; preds = %bb1
  %_6 = load i32, ptr %i, align 4
  %0 = load i32, ptr %sum, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %_6)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic, label %bb3

bb7:                                              ; preds = %bb5, %bb6
  %2 = load i32, ptr %_0, align 4
  ret i32 %2

bb3:                                              ; preds = %bb2
  store i32 %_7.0, ptr %sum, align 4
  %3 = load i32, ptr %i, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2)
  %_8.0 = extractvalue { i32, i1 } %4, 0
  %_8.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_8.1, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_142ea39437a4cc6e9ae90c7ed07c3f62) #22
  unreachable

bb4:                                              ; preds = %bb3
  store i32 %_8.0, ptr %i, align 4
  %_10 = load i32, ptr %sum, align 4
  %_9 = icmp eq i32 %_10, %n
  br i1 %_9, label %bb5, label %bb1

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5d2f8cb683c2e04f47fae2c02ae962ef) #22
  unreachable

bb5:                                              ; preds = %bb4
  store i32 1, ptr %_0, align 4
  br label %bb7
}
