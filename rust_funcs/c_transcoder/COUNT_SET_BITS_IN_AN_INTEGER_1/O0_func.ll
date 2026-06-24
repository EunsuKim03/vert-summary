define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_3 = and i32 %n, 1
  %_5 = ashr i32 %n, 1
  %_4 = call i32 @f_gold(i32 %_5)
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_3, i32 %_4)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic, label %bb5

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb6

bb5:                                              ; preds = %bb2
  store i32 %_8.0, ptr %_0, align 4
  br label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5c941d116382518234c1daf02a5a679c) #22
  unreachable

bb6:                                              ; preds = %bb1, %bb5
  %1 = load i32, ptr %_0, align 4
  ret i32 %1
}
