define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %curr = alloca [4 x i8], align 4
  %prev = alloca [4 x i8], align 4
  %prev_prev = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  store i32 1, ptr %prev_prev, align 4
  store i32 2, ptr %prev, align 4
  store i32 3, ptr %curr, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_6 = load i32, ptr %n, align 4
  %_5 = icmp sgt i32 %_6, 0
  br i1 %_5, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  %_21 = load i32, ptr %curr, align 4
  %_22 = load i32, ptr %prev, align 4
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_21, i32 %_22)
  %_23.0 = extractvalue { i32, i1 } %1, 0
  %_23.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_23.1, label %panic, label %bb8

bb2:                                              ; preds = %bb1
  %_7 = load i32, ptr %prev, align 4
  store i32 %_7, ptr %prev_prev, align 4
  %_8 = load i32, ptr %curr, align 4
  store i32 %_8, ptr %prev, align 4
  %_9 = load i32, ptr %prev_prev, align 4
  %_10 = load i32, ptr %prev, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_9, i32 %_10)
  %_11.0 = extractvalue { i32, i1 } %2, 0
  %_11.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_11.1, label %panic4, label %bb3

bb8:                                              ; preds = %bb7
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_23.0, i32 1)
  %_24.0 = extractvalue { i32, i1 } %3, 0
  %_24.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_24.1, label %panic1, label %bb9

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0f7bebfac40030f69474960c4d65424e) #22
  unreachable

bb9:                                              ; preds = %bb8
  %4 = load i32, ptr %n, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 %_24.0)
  %_25.0 = extractvalue { i32, i1 } %5, 0
  %_25.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_25.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0f7bebfac40030f69474960c4d65424e) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_25.0, ptr %n, align 4
  %_26 = load i32, ptr %prev, align 4
  %_27 = load i32, ptr %n, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_26, i32 %_27)
  %_28.0 = extractvalue { i32, i1 } %6, 0
  %_28.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_28.1, label %panic3, label %bb11

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_64c94851b5ab71e7a8f168e2edb81ef0) #22
  unreachable

bb11:                                             ; preds = %bb10
  ret i32 %_28.0

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1c5b2220b07fbc17ee8e90f267320dd1) #22
  unreachable

bb3:                                              ; preds = %bb2
  store i32 %_11.0, ptr %curr, align 4
  %_14 = load i32, ptr %curr, align 4
  %_15 = load i32, ptr %prev, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_14, i32 %_15)
  %_16.0 = extractvalue { i32, i1 } %7, 0
  %_16.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_16.1, label %panic5, label %bb4

panic4:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c4d3098daaa8d64f1495e278122007b4) #22
  unreachable

bb4:                                              ; preds = %bb3
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_16.0, i32 1)
  %_17.0 = extractvalue { i32, i1 } %8, 0
  %_17.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_17.1, label %panic6, label %bb5

panic5:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fd498321b910e3f3d02a135bd147bd21) #22
  unreachable

bb5:                                              ; preds = %bb4
  %9 = load i32, ptr %n, align 4
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %9, i32 %_17.0)
  %_18.0 = extractvalue { i32, i1 } %10, 0
  %_18.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_18.1, label %panic7, label %bb6

panic6:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fd498321b910e3f3d02a135bd147bd21) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_18.0, ptr %n, align 4
  br label %bb1

panic7:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ce9e88ba3e48745e96adeb5c6240714a) #22
  unreachable
}
