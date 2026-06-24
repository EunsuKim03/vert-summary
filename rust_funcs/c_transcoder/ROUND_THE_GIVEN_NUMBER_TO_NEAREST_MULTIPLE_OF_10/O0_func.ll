define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_6 = icmp eq i32 %n, -2147483648
  %_7 = and i1 false, %_6
  br i1 %_7, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_3 = sdiv i32 %n, 10
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_3, i32 10)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_8c8d97dc69d15c4bf31dc89fb56ddee9) #22
  unreachable

bb3:                                              ; preds = %bb2
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_8.0, i32 10)
  %_10.0 = extractvalue { i32, i1 } %1, 0
  %_10.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_10.1, label %panic2, label %bb4

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8c8d97dc69d15c4bf31dc89fb56ddee9) #22
  unreachable

bb4:                                              ; preds = %bb3
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %_8.0)
  %_13.0 = extractvalue { i32, i1 } %2, 0
  %_13.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_13.1, label %panic3, label %bb5

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a8ed1c3a4a8305ba144309a96a78d1bc) #22
  unreachable

bb5:                                              ; preds = %bb4
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_10.0, i32 %n)
  %_15.0 = extractvalue { i32, i1 } %3, 0
  %_15.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_15.1, label %panic4, label %bb6

panic3:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4a8cf4a35a743cdccb8defc778e708a2) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_11 = icmp sgt i32 %_13.0, %_15.0
  br i1 %_11, label %bb7, label %bb8

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dac186ea2373be5f1a46be7a45576efc) #22
  unreachable

bb8:                                              ; preds = %bb6
  store i32 %_8.0, ptr %_0, align 4
  br label %bb9

bb7:                                              ; preds = %bb6
  store i32 %_10.0, ptr %_0, align 4
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %4 = load i32, ptr %_0, align 4
  ret i32 %4
}
