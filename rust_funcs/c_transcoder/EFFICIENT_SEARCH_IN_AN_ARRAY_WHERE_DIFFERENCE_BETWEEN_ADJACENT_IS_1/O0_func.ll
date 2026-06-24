define i32 @f_gold(i64 %0, i32 %n, float %x) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb9, %start
  %_6 = load i32, ptr %i, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = icmp sle i32 %_6, %_8.0
  br i1 %_5, label %bb3, label %bb10

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ea1b747e3b14eb5bcf6c57fe9fe161dd) #22
  unreachable

bb10:                                             ; preds = %bb2
  store i32 -1, ptr %_0, align 4
  br label %bb11

bb3:                                              ; preds = %bb2
  %_12 = load i32, ptr %i, align 4
  %_11 = sext i32 %_12 to i64
  %_13 = icmp ult i64 %_11, 2
  br i1 %_13, label %bb4, label %panic1

bb11:                                             ; preds = %bb5, %bb10
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb4:                                              ; preds = %bb3
  %4 = getelementptr inbounds nuw float, ptr %arr, i64 %_11
  %_10 = load float, ptr %4, align 4
  %_9 = fcmp oeq float %_10, %x
  br i1 %_9, label %bb5, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_11, i64 2, ptr align 8 @alloc_908328f7c513484253731713cced1acb) #22
  unreachable

bb6:                                              ; preds = %bb4
  %_19 = load i32, ptr %i, align 4
  %_18 = sext i32 %_19 to i64
  %_20 = icmp ult i64 %_18, 2
  br i1 %_20, label %bb7, label %panic2

bb5:                                              ; preds = %bb4
  %5 = load i32, ptr %i, align 4
  store i32 %5, ptr %_0, align 4
  br label %bb11

bb7:                                              ; preds = %bb6
  %6 = getelementptr inbounds nuw float, ptr %arr, i64 %_18
  %_17 = load float, ptr %6, align 4
  %_16 = fsub float %_17, %x
; call core::f32::<impl f32>::abs
  %_15 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3abs17h48080535b3747bb7E"(float %_16) #20
  %_14 = call i32 @llvm.fptosi.sat.i32.f32(float %_15)
  %7 = load i32, ptr %i, align 4
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %_14)
  %_21.0 = extractvalue { i32, i1 } %8, 0
  %_21.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_21.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_2ee09e2a485d6424e85055c7038434aa) #22
  unreachable

bb9:                                              ; preds = %bb7
  store i32 %_21.0, ptr %i, align 4
  br label %bb1

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e1213cd1203be4968fdc761e29b786cb) #22
  unreachable
}
