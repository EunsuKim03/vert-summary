define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #0 {
start:
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call core::slice::<impl [T]>::sort_unstable
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E"(ptr align 4 %arr, i64 2) #20
  %_9 = sext i32 %n to i64
  %_10.0 = sub i64 %_9, 1
  %_10.1 = icmp ult i64 %_9, 1
  br i1 %_10.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_11 = icmp ult i64 %_10.0, 2
  br i1 %_11, label %bb3, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5b8fc7d83ada86af5973b2afd6bbd688) #22
  unreachable

bb3:                                              ; preds = %bb2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_10.0
  %_7 = load i32, ptr %2, align 4
  %_14 = sext i32 %n to i64
  %_15.0 = sub i64 %_14, 2
  %_15.1 = icmp ult i64 %_14, 2
  br i1 %_15.1, label %panic2, label %bb4

panic1:                                           ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_10.0, i64 2, ptr align 8 @alloc_037c982f7113fad382747c29e3244c82) #22
  unreachable

bb4:                                              ; preds = %bb3
  %_16 = icmp ult i64 %_15.0, 2
  br i1 %_16, label %bb5, label %panic3

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8089dff7e76193b1429f2d7c24850f13) #22
  unreachable

bb5:                                              ; preds = %bb4
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15.0
  %_12 = load i32, ptr %3, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_7, i32 %_12)
  %_17.0 = extractvalue { i32, i1 } %4, 0
  %_17.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_17.1, label %panic4, label %bb6

panic3:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15.0, i64 2, ptr align 8 @alloc_39aec2478f319ecb6e41d0d81fffd071) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_20 = sext i32 %n to i64
  %_21.0 = sub i64 %_20, 3
  %_21.1 = icmp ult i64 %_20, 3
  br i1 %_21.1, label %panic5, label %bb7

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_037c982f7113fad382747c29e3244c82) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_22 = icmp ult i64 %_21.0, 2
  br i1 %_22, label %bb8, label %panic6

panic5:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0c05003e95110e41628bd181b5138242) #22
  unreachable

bb8:                                              ; preds = %bb7
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_21.0
  %_18 = load i32, ptr %5, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_17.0, i32 %_18)
  %_23.0 = extractvalue { i32, i1 } %6, 0
  %_23.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_23.1, label %panic7, label %bb9

panic6:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21.0, i64 2, ptr align 8 @alloc_4385c5a3a89a390cbd2f10c6aa51708b) #22
  unreachable

bb9:                                              ; preds = %bb8
  ret i32 %_23.0

panic7:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_037c982f7113fad382747c29e3244c82) #22
  unreachable
}
