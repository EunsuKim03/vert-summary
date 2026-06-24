define i32 @f_gold(i32 %a, i32 %b, i32 %c) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %a, i32 %b)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_4 = icmp sle i32 %_6.0, %c
  br i1 %_4, label %bb6, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7df4367b7d39819835b15139421fb25a) #22
  unreachable

bb2:                                              ; preds = %bb1
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %a, i32 %c)
  %_9.0 = extractvalue { i32, i1 } %1, 0
  %_9.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_9.1, label %panic1, label %bb3

bb6:                                              ; preds = %bb5, %bb3, %bb1
  store i32 0, ptr %_0, align 4
  br label %bb8

bb3:                                              ; preds = %bb2
  %_7 = icmp sle i32 %_9.0, %b
  br i1 %_7, label %bb6, label %bb4

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0009c74fa1e05b81ebd2bf885507c9e3) #22
  unreachable

bb4:                                              ; preds = %bb3
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %b, i32 %c)
  %_12.0 = extractvalue { i32, i1 } %2, 0
  %_12.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_12.1, label %panic2, label %bb5

bb5:                                              ; preds = %bb4
  %_10 = icmp sle i32 %_12.0, %a
  br i1 %_10, label %bb6, label %bb7

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8c003c78a4560a8be563cf82332f3583) #22
  unreachable

bb7:                                              ; preds = %bb5
  store i32 1, ptr %_0, align 4
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7
  %3 = load i32, ptr %_0, align 4
  ret i32 %3
}
