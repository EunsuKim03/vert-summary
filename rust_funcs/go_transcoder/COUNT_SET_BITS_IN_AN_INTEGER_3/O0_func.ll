define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb6

bb3:                                              ; preds = %bb2
  %_4 = and i32 %n, %_6.0
  %_3 = call i32 @f_gold(i32 %_4)
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_3)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic1, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ff9e5df436fffd6769dec00a119ff66d) #22
  unreachable

bb5:                                              ; preds = %bb3
  store i32 %_7.0, ptr %_0, align 4
  br label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b17ce029d9aa2b792a514fd520438427) #22
  unreachable

bb6:                                              ; preds = %bb1, %bb5
  %2 = load i32, ptr %_0, align 4
  ret i32 %2
}
