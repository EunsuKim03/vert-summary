define i32 @f_gold(i32 %a, i32 %b, i32 %c) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %a, i32 %b)
  %_5.0 = extractvalue { i32, i1 } %0, 0
  %_5.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %b, i32 %c)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_765a261650d96ab257cf5219f67853ca) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %a, i32 %c)
  %_9.0 = extractvalue { i32, i1 } %2, 0
  %_9.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_9.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3a30510f63291867d4409ea87aea105f) #22
  unreachable

bb3:                                              ; preds = %bb2
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_5.0, i32 %_7.0)
  %_12.0 = extractvalue { i32, i1 } %3, 0
  %_12.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_12.1, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_27f50316c9f4cf5318158eaefbf2e788) #22
  unreachable

bb4:                                              ; preds = %bb3
  %_10 = icmp sgt i32 %_12.0, 0
  br i1 %_10, label %bb5, label %bb6

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1544a920848b63ebdf898004440c2630) #22
  unreachable

bb6:                                              ; preds = %bb4
  %4 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_5.0, i32 %_9.0)
  %_15.0 = extractvalue { i32, i1 } %4, 0
  %_15.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_15.1, label %panic4, label %bb7

bb5:                                              ; preds = %bb4
  store i32 %b, ptr %_0, align 4
  br label %bb10

bb7:                                              ; preds = %bb6
  %_13 = icmp sgt i32 %_15.0, 0
  br i1 %_13, label %bb8, label %bb9

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d9992c63223e13be0b0845d8e0508c95) #22
  unreachable

bb9:                                              ; preds = %bb7
  store i32 %a, ptr %_0, align 4
  br label %bb10

bb8:                                              ; preds = %bb7
  store i32 %c, ptr %_0, align 4
  br label %bb10

bb10:                                             ; preds = %bb5, %bb8, %bb9
  %5 = load i32, ptr %_0, align 4
  ret i32 %5
}
