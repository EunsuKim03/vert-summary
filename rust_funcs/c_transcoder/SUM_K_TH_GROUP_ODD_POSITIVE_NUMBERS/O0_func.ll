define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %sum = alloca [4 x i8], align 4
  %cur = alloca [4 x i8], align 4
  %k = alloca [4 x i8], align 4
  store i32 %0, ptr %k, align 4
  %_4 = load i32, ptr %k, align 4
  %_6 = load i32, ptr %k, align 4
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_6, i32 1)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_4, i32 %_7.0)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_06b1de5bcf4910a5bbcf2f4807aaa01d) #22
  unreachable

bb2:                                              ; preds = %bb1
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_8.0, i32 1)
  %_9.0 = extractvalue { i32, i1 } %3, 0
  %_9.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_9.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_7623c51490576fc9f75365183e9767d0) #22
  unreachable

bb3:                                              ; preds = %bb2
  store i32 %_9.0, ptr %cur, align 4
  store i32 0, ptr %sum, align 4
  br label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7623c51490576fc9f75365183e9767d0) #22
  unreachable

bb4:                                              ; preds = %bb8, %bb3
  %_12 = load i32, ptr %k, align 4
  %_11 = icmp sgt i32 %_12, 0
  br i1 %_11, label %bb5, label %bb9

bb9:                                              ; preds = %bb4
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb5:                                              ; preds = %bb4
  %_13 = load i32, ptr %cur, align 4
  %4 = load i32, ptr %sum, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 %_13)
  %_14.0 = extractvalue { i32, i1 } %5, 0
  %_14.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_14.1, label %panic3, label %bb6

bb6:                                              ; preds = %bb5
  store i32 %_14.0, ptr %sum, align 4
  %6 = load i32, ptr %cur, align 4
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 2)
  %_15.0 = extractvalue { i32, i1 } %7, 0
  %_15.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_15.1, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_838001edfe1a924786c7e9600d830351) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %_15.0, ptr %cur, align 4
  %8 = load i32, ptr %k, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %8, i32 1)
  %_16.0 = extractvalue { i32, i1 } %9, 0
  %_16.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_16.1, label %panic5, label %bb8

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c3015ad3ca43df7f5bc9150671b6e198) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_16.0, ptr %k, align 4
  br label %bb4

panic5:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ca1e1b9d420975fdbb8d28cfca00627a) #22
  unreachable
}
