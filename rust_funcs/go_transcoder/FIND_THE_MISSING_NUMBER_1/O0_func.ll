define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %total = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store i32 1, ptr %total, align 4
  store i32 2, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %_6 = load i32, ptr %i, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = icmp sle i32 %_6, %_8.0
  br i1 %_5, label %bb3, label %bb9

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3138a3c737535493a4b9128e9488439f) #22
  unreachable

bb9:                                              ; preds = %bb2
  %_0 = load i32, ptr %total, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb2
  %_9 = load i32, ptr %i, align 4
  %3 = load i32, ptr %total, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 %_9)
  %_10.0 = extractvalue { i32, i1 } %4, 0
  %_10.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_10.1, label %panic1, label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_10.0, ptr %total, align 4
  %_14 = load i32, ptr %i, align 4
  %_13 = sext i32 %_14 to i64
  %_15.0 = sub i64 %_13, 2
  %_15.1 = icmp ult i64 %_13, 2
  br i1 %_15.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c17e7a7479185748f5c45cee1a960420) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_16 = icmp ult i64 %_15.0, 2
  br i1 %_16, label %bb6, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0ec2f0f021513875b6d7b91bea684c3e) #22
  unreachable

bb6:                                              ; preds = %bb5
  %5 = getelementptr inbounds nuw i32, ptr %a, i64 %_15.0
  %_11 = load i32, ptr %5, align 4
  %6 = load i32, ptr %total, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %6, i32 %_11)
  %_17.0 = extractvalue { i32, i1 } %7, 0
  %_17.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_17.1, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15.0, i64 2, ptr align 8 @alloc_c753e5fc1c4f3005c1d62e99963ef927) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %_17.0, ptr %total, align 4
  %8 = load i32, ptr %i, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 1)
  %_18.0 = extractvalue { i32, i1 } %9, 0
  %_18.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_18.1, label %panic5, label %bb8

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4e73706e610c6a0ef0bb686aed936ec5) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_18.0, ptr %i, align 4
  br label %bb1

panic5:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a87bff0a4f49a50acba6e7407928fbe7) #22
  unreachable
}
