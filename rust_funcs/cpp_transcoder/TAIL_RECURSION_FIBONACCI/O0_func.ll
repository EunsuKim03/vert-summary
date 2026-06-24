define i32 @f_gold(i32 %n, i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_4 = icmp eq i32 %n, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = icmp eq i32 %n, 1
  br i1 %_5, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 %a, ptr %_0, align 4
  br label %bb7

bb4:                                              ; preds = %bb2
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb5

bb3:                                              ; preds = %bb2
  store i32 %b, ptr %_0, align 4
  br label %bb7

bb5:                                              ; preds = %bb4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %a, i32 %b)
  %_9.0 = extractvalue { i32, i1 } %1, 0
  %_9.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_9.1, label %panic1, label %bb6

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e1d7e3d12a7d7114877554a8b9a184c1) #22
  unreachable

bb6:                                              ; preds = %bb5
  %2 = call i32 @f_gold(i32 %_7.0, i32 %b, i32 %_9.0)
  store i32 %2, ptr %_0, align 4
  br label %bb7

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4707332163dea2ae5da4d70ae8824761) #22
  unreachable

bb7:                                              ; preds = %bb1, %bb3, %bb6
  %3 = load i32, ptr %_0, align 4
  ret i32 %3
}
