define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %curr_term = alloca [4 x i8], align 4
  %curr_sum = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  store i32 1, ptr %res, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_5 = load i32, ptr %n, align 4
  %_8 = icmp eq i32 %_5, -2147483648
  %_9 = and i1 false, %_8
  br i1 %_9, label %panic, label %bb3

bb3:                                              ; preds = %bb1
  %_4 = srem i32 %_5, 2
  %_3 = icmp eq i32 %_4, 0
  br i1 %_3, label %bb4, label %bb7

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_a9910f385464f408ada01824c097b44e) #22
  unreachable

bb7:                                              ; preds = %bb3
  store i32 3, ptr %i, align 4
  br label %bb8

bb4:                                              ; preds = %bb3
  %1 = load i32, ptr %n, align 4
  %_12 = icmp eq i32 %1, -2147483648
  %_13 = and i1 false, %_12
  br i1 %_13, label %panic12, label %bb6

bb8:                                              ; preds = %bb22, %bb7
  %_16 = load i32, ptr %i, align 4
  %_20 = load i32, ptr %n, align 4
  %_19 = sitofp i32 %_20 to float
; call std::f32::<impl f32>::sqrt
  %_18 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17hf5ed18b5ef0a19bbE"(float %_19) #20
  %_17 = call i32 @llvm.fptosi.sat.i32.f32(float %_18)
  %_15 = icmp sle i32 %_16, %_17
  br i1 %_15, label %bb10, label %bb23

bb23:                                             ; preds = %bb8
  %_46 = load i32, ptr %n, align 4
  %_45 = icmp sge i32 %_46, 2
  br i1 %_45, label %bb24, label %bb27

bb10:                                             ; preds = %bb8
  store i32 0, ptr %count, align 4
  store i32 1, ptr %curr_sum, align 4
  store i32 1, ptr %curr_term, align 4
  br label %bb11

bb27:                                             ; preds = %bb26, %bb23
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb24:                                             ; preds = %bb23
  %_48 = load i32, ptr %n, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_48)
  %_49.0 = extractvalue { i32, i1 } %2, 0
  %_49.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_49.1, label %panic1, label %bb25

bb25:                                             ; preds = %bb24
  %3 = load i32, ptr %res, align 4
  %4 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %3, i32 %_49.0)
  %_50.0 = extractvalue { i32, i1 } %4, 0
  %_50.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_50.1, label %panic2, label %bb26

panic1:                                           ; preds = %bb24
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f20aa3e8d8e50102bfad5b375f0c776f) #22
  unreachable

bb26:                                             ; preds = %bb25
  store i32 %_50.0, ptr %res, align 4
  br label %bb27

panic2:                                           ; preds = %bb25
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c50b16a4596546b49aa7e8226eb4485e) #22
  unreachable

bb11:                                             ; preds = %bb19, %bb10
  %_26 = load i32, ptr %n, align 4
  %_27 = load i32, ptr %i, align 4
  %_28 = icmp eq i32 %_27, 0
  br i1 %_28, label %panic3, label %bb12

bb12:                                             ; preds = %bb11
  %_29 = icmp eq i32 %_27, -1
  %_30 = icmp eq i32 %_26, -2147483648
  %_31 = and i1 %_29, %_30
  br i1 %_31, label %panic4, label %bb13

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_c103951532316f6f99e883a479625ba0) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_25 = srem i32 %_26, %_27
  %_24 = icmp eq i32 %_25, 0
  br i1 %_24, label %bb14, label %bb20

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c103951532316f6f99e883a479625ba0) #22
  unreachable

bb20:                                             ; preds = %bb13
  %_42 = load i32, ptr %curr_sum, align 4
  %5 = load i32, ptr %res, align 4
  %6 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %5, i32 %_42)
  %_43.0 = extractvalue { i32, i1 } %6, 0
  %_43.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_43.1, label %panic5, label %bb21

bb14:                                             ; preds = %bb13
  %7 = load i32, ptr %count, align 4
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 1)
  %_32.0 = extractvalue { i32, i1 } %8, 0
  %_32.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_32.1, label %panic7, label %bb15

bb21:                                             ; preds = %bb20
  store i32 %_43.0, ptr %res, align 4
  %9 = load i32, ptr %i, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 1)
  %_44.0 = extractvalue { i32, i1 } %10, 0
  %_44.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_44.1, label %panic6, label %bb22

panic5:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_144d3f80013f4cacd6a742c2ab2c3faf) #22
  unreachable

bb22:                                             ; preds = %bb21
  store i32 %_44.0, ptr %i, align 4
  br label %bb8

panic6:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e0be808c2b4ef4c215aa4e421e3ec27b) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %_32.0, ptr %count, align 4
  %_33 = load i32, ptr %i, align 4
  %_34 = icmp eq i32 %_33, 0
  br i1 %_34, label %panic8, label %bb16

panic7:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_381c4cde53d8260a918e48efc5e3af79) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_35 = icmp eq i32 %_33, -1
  %11 = load i32, ptr %n, align 4
  %_36 = icmp eq i32 %11, -2147483648
  %_37 = and i1 %_35, %_36
  br i1 %_37, label %panic9, label %bb17

panic8:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_49cde484f993eb1cc48bc2528fde76ee) #22
  unreachable

bb17:                                             ; preds = %bb16
  %12 = load i32, ptr %n, align 4
  %13 = sdiv i32 %12, %_33
  store i32 %13, ptr %n, align 4
  %_38 = load i32, ptr %i, align 4
  %14 = load i32, ptr %curr_term, align 4
  %15 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %14, i32 %_38)
  %_39.0 = extractvalue { i32, i1 } %15, 0
  %_39.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_39.1, label %panic10, label %bb18

panic9:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_49cde484f993eb1cc48bc2528fde76ee) #22
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_39.0, ptr %curr_term, align 4
  %_40 = load i32, ptr %curr_term, align 4
  %16 = load i32, ptr %curr_sum, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 %_40)
  %_41.0 = extractvalue { i32, i1 } %17, 0
  %_41.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_41.1, label %panic11, label %bb19

panic10:                                          ; preds = %bb17
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_dda8c0781c0b7a9fa3e25eff80292d0e) #22
  unreachable

bb19:                                             ; preds = %bb18
  store i32 %_41.0, ptr %curr_sum, align 4
  br label %bb11

panic11:                                          ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_55ecfab571ed4d0ceb6bfcc2ac605016) #22
  unreachable

bb6:                                              ; preds = %bb4
  %18 = load i32, ptr %n, align 4
  %19 = sdiv i32 %18, 2
  store i32 %19, ptr %n, align 4
  br label %bb1

panic12:                                          ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_a461b3fdac0433d05b6d685984782e2b) #22
  unreachable
}
