define i32 @f_gold(i32 %0, i32 %1, i32 %2) unnamed_addr #3 {
start:
  %c = alloca [4 x i8], align 4
  %z = alloca [4 x i8], align 4
  %y = alloca [4 x i8], align 4
  %x = alloca [4 x i8], align 4
  store i32 %0, ptr %x, align 4
  store i32 %1, ptr %y, align 4
  store i32 %2, ptr %z, align 4
  store i32 0, ptr %c, align 4
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %_6 = load i32, ptr %x, align 4
  %_5 = icmp sgt i32 %_6, 0
  br i1 %_5, label %bb2, label %bb9

bb9:                                              ; preds = %bb3, %bb2, %bb1
  %_0 = load i32, ptr %c, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_8 = load i32, ptr %y, align 4
  %_7 = icmp sgt i32 %_8, 0
  br i1 %_7, label %bb3, label %bb9

bb3:                                              ; preds = %bb2
  %_10 = load i32, ptr %z, align 4
  %_9 = icmp sgt i32 %_10, 0
  br i1 %_9, label %bb4, label %bb9

bb4:                                              ; preds = %bb3
  %3 = load i32, ptr %x, align 4
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 1)
  %_11.0 = extractvalue { i32, i1 } %4, 0
  %_11.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_11.1, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  store i32 %_11.0, ptr %x, align 4
  %5 = load i32, ptr %y, align 4
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %5, i32 1)
  %_12.0 = extractvalue { i32, i1 } %6, 0
  %_12.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_12.1, label %panic1, label %bb6

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a240d5efd024f9ed0c0083f10749da47) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_12.0, ptr %y, align 4
  %7 = load i32, ptr %z, align 4
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %7, i32 1)
  %_13.0 = extractvalue { i32, i1 } %8, 0
  %_13.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_13.1, label %panic2, label %bb7

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e0ccb2f3ef10d02519c23af52ba89c59) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %_13.0, ptr %z, align 4
  %9 = load i32, ptr %c, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 1)
  %_14.0 = extractvalue { i32, i1 } %10, 0
  %_14.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_14.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f8c085dc53b4ad425cad63bec2b3514a) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_14.0, ptr %c, align 4
  br label %bb1

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6a0e42c0f04521dca5ccb190932aa6bb) #22
  unreachable
}
