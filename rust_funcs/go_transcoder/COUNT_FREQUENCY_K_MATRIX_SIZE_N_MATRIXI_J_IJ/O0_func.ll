define i32 @f_gold(i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_5.0 = extractvalue { i32, i1 } %0, 0
  %_5.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp sge i32 %_5.0, %k
  br i1 %_3, label %bb2, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a6e3480e18a515852a63c0fd7f211fa6) #22
  unreachable

bb4:                                              ; preds = %bb1
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %n)
  %_9.0 = extractvalue { i32, i1 } %1, 0
  %_9.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_9.1, label %panic1, label %bb5

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 1)
  %_6.0 = extractvalue { i32, i1 } %2, 0
  %_6.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_6.1, label %panic4, label %bb3

bb5:                                              ; preds = %bb4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_9.0, i32 1)
  %_10.0 = extractvalue { i32, i1 } %3, 0
  %_10.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_10.1, label %panic2, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_e0e714e7ccbe4506d11062b3d9f34eba) #22
  unreachable

bb6:                                              ; preds = %bb5
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_10.0, i32 %k)
  %_11.0 = extractvalue { i32, i1 } %4, 0
  %_11.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_11.1, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e0e714e7ccbe4506d11062b3d9f34eba) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %_11.0, ptr %_0, align 4
  br label %bb8

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e0e714e7ccbe4506d11062b3d9f34eba) #22
  unreachable

bb8:                                              ; preds = %bb3, %bb7
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

bb3:                                              ; preds = %bb2
  store i32 %_6.0, ptr %_0, align 4
  br label %bb8

panic4:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d70ed04e9535494b522d98d93bfff12a) #22
  unreachable
}
