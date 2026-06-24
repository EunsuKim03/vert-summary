define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  store i32 0, ptr %count, align 4
  %_4 = load i32, ptr %n, align 4
  %_3 = icmp ugt i32 %_4, 0
  br i1 %_3, label %bb1, label %bb4

bb4:                                              ; preds = %bb7, %bb2, %start
  %_12 = load i32, ptr %n, align 4
  %_11 = icmp ugt i32 %_12, 0
  br i1 %_11, label %bb5, label %bb8

bb1:                                              ; preds = %start
  %_7 = load i32, ptr %n, align 4
  %_9 = load i32, ptr %n, align 4
  %_10.0 = sub i32 %_9, 1
  %_10.1 = icmp ult i32 %_9, 1
  br i1 %_10.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_6 = and i32 %_7, %_10.0
  %_5 = icmp eq i32 %_6, 0
  br i1 %_5, label %bb3, label %bb4

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_349eaee32c537cc13dcdcb7c2f783afb) #22
  unreachable

bb3:                                              ; preds = %bb2
  %1 = load i32, ptr %n, align 4
  store i32 %1, ptr %_0, align 4
  br label %bb10

bb8:                                              ; preds = %bb4
  %_16 = load i32, ptr %count, align 4
  %_18 = icmp ult i32 %_16, 32
  br i1 %_18, label %bb9, label %panic1

bb5:                                              ; preds = %bb4
  %2 = load i32, ptr %n, align 4
  %3 = lshr i32 %2, 1
  store i32 %3, ptr %n, align 4
  %4 = load i32, ptr %count, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %_15.0 = extractvalue { i32, i1 } %5, 0
  %_15.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_15.1, label %panic2, label %bb7

bb9:                                              ; preds = %bb8
  %6 = and i32 %_16, 31
  %7 = shl i32 1, %6
  store i32 %7, ptr %_0, align 4
  br label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_ad6a84ea2def2b988fbd17e07aa5b676) #22
  unreachable

bb10:                                             ; preds = %bb3, %bb9
  %8 = load i32, ptr %_0, align 4
  ret i32 %8

bb7:                                              ; preds = %bb5
  store i32 %_15.0, ptr %count, align 4
  br label %bb4

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9dac15b0f2b40ec9a3ea3cfe5803f1a6) #22
  unreachable
}
