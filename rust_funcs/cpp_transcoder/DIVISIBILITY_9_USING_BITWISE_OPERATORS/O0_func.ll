define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 0
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp eq i32 %n, 9
  br i1 %_3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 1, ptr %_0, align 4
  br label %bb8

bb3:                                              ; preds = %bb1
  %_4 = icmp slt i32 %n, 9
  br i1 %_4, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  %_6 = ashr i32 %n, 3
  %_9 = and i32 %n, 7
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_6, i32 %_9)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_10.1, label %panic, label %bb7

bb4:                                              ; preds = %bb3
  store i32 0, ptr %_0, align 4
  br label %bb8

bb7:                                              ; preds = %bb5
  %1 = call i32 @f_gold(i32 %_10.0)
  store i32 %1, ptr %_0, align 4
  br label %bb8

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c0f129d9d577aee47aa9e5663f689e65) #22
  unreachable

bb8:                                              ; preds = %bb2, %bb4, %bb7
  %2 = load i32, ptr %_0, align 4
  ret i32 %2
}
