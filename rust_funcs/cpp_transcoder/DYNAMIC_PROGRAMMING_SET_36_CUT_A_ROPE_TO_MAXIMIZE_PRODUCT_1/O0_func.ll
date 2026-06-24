define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %res = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  %_3 = load i32, ptr %n, align 4
  %_2 = icmp eq i32 %_3, 2
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_5 = load i32, ptr %n, align 4
  %_4 = icmp eq i32 %_5, 3
  br i1 %_4, label %bb2, label %bb4

bb2:                                              ; preds = %bb1, %start
  %_6 = load i32, ptr %n, align 4
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_6, i32 1)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic3, label %bb3

bb4:                                              ; preds = %bb1
  store i32 1, ptr %res, align 4
  br label %bb5

bb5:                                              ; preds = %bb8, %bb4
  %_10 = load i32, ptr %n, align 4
  %_9 = icmp sgt i32 %_10, 4
  br i1 %_9, label %bb6, label %bb9

bb9:                                              ; preds = %bb5
  %_13 = load i32, ptr %n, align 4
  %_14 = load i32, ptr %res, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_13, i32 %_14)
  %_15.0 = extractvalue { i32, i1 } %2, 0
  %_15.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_15.1, label %panic, label %bb10

bb6:                                              ; preds = %bb5
  %3 = load i32, ptr %n, align 4
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 3)
  %_11.0 = extractvalue { i32, i1 } %4, 0
  %_11.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_11.1, label %panic1, label %bb7

bb10:                                             ; preds = %bb9
  store i32 %_15.0, ptr %_0, align 4
  br label %bb11

panic:                                            ; preds = %bb9
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a919cc5a8cad49eea5647b6927458a60) #22
  unreachable

bb11:                                             ; preds = %bb3, %bb10
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

bb7:                                              ; preds = %bb6
  store i32 %_11.0, ptr %n, align 4
  %6 = load i32, ptr %res, align 4
  %7 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %6, i32 3)
  %_12.0 = extractvalue { i32, i1 } %7, 0
  %_12.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_12.1, label %panic2, label %bb8

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2de34f80071c79545d3e34c3d345cd1a) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_12.0, ptr %res, align 4
  br label %bb5

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b51b6251aaacc0baa671835b529c4736) #22
  unreachable

bb3:                                              ; preds = %bb2
  store i32 %_7.0, ptr %_0, align 4
  br label %bb11

panic3:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f203842545ee05e3d6d2381767ec12aa) #22
  unreachable
}
