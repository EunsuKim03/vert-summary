define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  store i32 0, ptr %count, align 4
  %_4 = load i32, ptr %n, align 4
  %_3 = icmp ne i32 %_4, 0
  br i1 %_3, label %bb1, label %bb4

bb4:                                              ; preds = %bb7, %bb2, %start
  %_13 = load i32, ptr %n, align 4
  %_12 = icmp ne i32 %_13, 0
  br i1 %_12, label %bb5, label %bb8

bb1:                                              ; preds = %start
  %_8 = load i32, ptr %n, align 4
  %_10 = load i32, ptr %n, align 4
  %_11.0 = sub i32 %_10, 1
  %_11.1 = icmp ult i32 %_10, 1
  br i1 %_11.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_7 = and i32 %_8, %_11.0
  %_6 = xor i32 %_7, -1
  %_5 = icmp eq i32 %_6, 0
  br i1 %_5, label %bb3, label %bb4

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5b9812e7bd8064ea5ceabbfbb771e2d6) #22
  unreachable

bb3:                                              ; preds = %bb2
  %1 = load i32, ptr %n, align 4
  store i32 %1, ptr %_0, align 4
  br label %bb10

bb8:                                              ; preds = %bb4
  %_17 = load i32, ptr %count, align 4
  %_19 = icmp ult i32 %_17, 32
  br i1 %_19, label %bb9, label %panic1

bb5:                                              ; preds = %bb4
  %2 = load i32, ptr %n, align 4
  %3 = lshr i32 %2, 1
  store i32 %3, ptr %n, align 4
  %4 = load i32, ptr %count, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %_16.0 = extractvalue { i32, i1 } %5, 0
  %_16.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_16.1, label %panic2, label %bb7

bb9:                                              ; preds = %bb8
  %6 = and i32 %_17, 31
  %7 = shl i32 1, %6
  store i32 %7, ptr %_0, align 4
  br label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_2183e2739c416e08d683180972dd6f6e) #22
  unreachable

bb10:                                             ; preds = %bb3, %bb9
  %8 = load i32, ptr %_0, align 4
  ret i32 %8

bb7:                                              ; preds = %bb5
  store i32 %_16.0, ptr %count, align 4
  br label %bb4

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4b2f34772b434bc384c5c4bd92d5b54c) #22
  unreachable
}
