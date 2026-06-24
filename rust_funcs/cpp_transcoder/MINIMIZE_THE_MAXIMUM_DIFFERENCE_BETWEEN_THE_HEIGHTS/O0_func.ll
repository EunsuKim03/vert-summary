define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_47 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %big = alloca [4 x i8], align 4
  %small = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_4 = icmp eq i32 %n, 1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h40dcc636985d638bE"(ptr align 4 %arr.0, i64 %arr.1) #20
  %_9 = sext i32 %n to i64
  %_10.0 = sub i64 %_9, 1
  %_10.1 = icmp ult i64 %_9, 1
  br i1 %_10.1, label %panic, label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb33

bb4:                                              ; preds = %bb2
  %_13 = icmp ult i64 %_10.0, %arr.1
  br i1 %_13, label %bb5, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_04be3d32977315353b2067de113f5102) #22
  unreachable

bb5:                                              ; preds = %bb4
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_10.0
  %_7 = load i32, ptr %0, align 4
  %_18 = icmp ult i64 0, %arr.1
  br i1 %_18, label %bb6, label %panic2

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_10.0, i64 %arr.1, ptr align 8 @alloc_bda68cbdd90346ed2b546cbcfae38282) #22
  unreachable

bb6:                                              ; preds = %bb5
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 0
  %_14 = load i32, ptr %1, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_7, i32 %_14)
  %_19.0 = extractvalue { i32, i1 } %2, 0
  %_19.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_19.1, label %panic3, label %bb7

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %arr.1, ptr align 8 @alloc_d94312ec5261a786c1273ff2cee0d8d1) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_25 = icmp ult i64 0, %arr.1
  br i1 %_25, label %bb8, label %panic4

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bda68cbdd90346ed2b546cbcfae38282) #22
  unreachable

bb8:                                              ; preds = %bb7
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 0
  %_21 = load i32, ptr %3, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_21, i32 %k)
  %_26.0 = extractvalue { i32, i1 } %4, 0
  %_26.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_26.1, label %panic5, label %bb9

panic4:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %arr.1, ptr align 8 @alloc_46a33803d38250cf29334f08a90aec22) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_26.0, ptr %small, align 4
  %_30 = sext i32 %n to i64
  %_31.0 = sub i64 %_30, 1
  %_31.1 = icmp ult i64 %_30, 1
  br i1 %_31.1, label %panic6, label %bb10

panic5:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_46a33803d38250cf29334f08a90aec22) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_34 = icmp ult i64 %_31.0, %arr.1
  br i1 %_34, label %bb11, label %panic7

panic6:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c099dbd12a504d74019c95ae9b0f0226) #22
  unreachable

bb11:                                             ; preds = %bb10
  %5 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_31.0
  %_28 = load i32, ptr %5, align 4
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_28, i32 %k)
  %_35.0 = extractvalue { i32, i1 } %6, 0
  %_35.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_35.1, label %panic8, label %bb12

panic7:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31.0, i64 %arr.1, ptr align 8 @alloc_3cd4b05595abebf263ae800e29d1180e) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_35.0, ptr %big, align 4
  %_37 = load i32, ptr %small, align 4
  %_38 = load i32, ptr %big, align 4
  %_36 = icmp sgt i32 %_37, %_38
  br i1 %_36, label %bb13, label %bb14

panic8:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3cd4b05595abebf263ae800e29d1180e) #22
  unreachable

bb14:                                             ; preds = %bb13, %bb12
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_45.0 = extractvalue { i32, i1 } %7, 0
  %_45.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_45.1, label %panic9, label %bb15

bb13:                                             ; preds = %bb12
; call core::mem::swap
  call void @_ZN4core3mem4swap17h1d5c083451406bcaE(ptr align 4 %small, ptr align 4 %big) #20
  br label %bb14

bb15:                                             ; preds = %bb14
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %8 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a5a89d0311f5ec2E"(i32 1, i32 %_45.0) #20
  %_42.0 = extractvalue { i32, i32 } %8, 0
  %_42.1 = extractvalue { i32, i32 } %8, 1
  store i32 %_42.0, ptr %iter, align 4
  %9 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_42.1, ptr %9, align 4
  br label %bb17

panic9:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e3df0c29c4ac72678905dae4315228be) #22
  unreachable

bb17:                                             ; preds = %bb30, %bb31, %bb26, %bb25, %bb15
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %10 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hef27a4eae2c6e0ddE"(ptr align 4 %iter) #20
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = extractvalue { i32, i32 } %10, 1
  store i32 %11, ptr %_47, align 4
  %13 = getelementptr inbounds i8, ptr %_47, i64 4
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %_47, align 4
  %15 = getelementptr inbounds i8, ptr %_47, i64 4
  %16 = load i32, ptr %15, align 4
  %_49 = zext i32 %14 to i64
  %17 = trunc nuw i64 %_49 to i1
  br i1 %17, label %bb20, label %bb21

bb20:                                             ; preds = %bb17
  %18 = getelementptr inbounds i8, ptr %_47, i64 4
  %i = load i32, ptr %18, align 4
  %_53 = sext i32 %i to i64
  %_56 = icmp ult i64 %_53, %arr.1
  br i1 %_56, label %bb22, label %panic11

bb21:                                             ; preds = %bb17
  %_77 = load i32, ptr %big, align 4
  %_78 = load i32, ptr %small, align 4
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_77, i32 %_78)
  %_79.0 = extractvalue { i32, i1 } %19, 0
  %_79.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_79.1, label %panic10, label %bb32

bb32:                                             ; preds = %bb21
; call core::cmp::min
  %20 = call i32 @_ZN4core3cmp3min17h63cc80b64b645f41E(i32 %_19.0, i32 %_79.0) #20
  store i32 %20, ptr %_0, align 4
  br label %bb33

panic10:                                          ; preds = %bb21
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8e6a6949d5fe55755d5c85a88fbd09dd) #22
  unreachable

bb33:                                             ; preds = %bb1, %bb32
  %21 = load i32, ptr %_0, align 4
  ret i32 %21

bb22:                                             ; preds = %bb20
  %22 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_53
  %_52 = load i32, ptr %22, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_52, i32 %k)
  %_57.0 = extractvalue { i32, i1 } %23, 0
  %_57.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_57.1, label %panic12, label %bb23

panic11:                                          ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_53, i64 %arr.1, ptr align 8 @alloc_13d6b956a5caa9a94b2a71870bef7f03) #22
  unreachable

bb23:                                             ; preds = %bb22
  %_60 = sext i32 %i to i64
  %_63 = icmp ult i64 %_60, %arr.1
  br i1 %_63, label %bb24, label %panic13

panic12:                                          ; preds = %bb22
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_13d6b956a5caa9a94b2a71870bef7f03) #22
  unreachable

bb24:                                             ; preds = %bb23
  %24 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_60
  %_59 = load i32, ptr %24, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_59, i32 %k)
  %_64.0 = extractvalue { i32, i1 } %25, 0
  %_64.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_64.1, label %panic14, label %bb25

panic13:                                          ; preds = %bb23
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_60, i64 %arr.1, ptr align 8 @alloc_6535f3d14bee31bdc6f2e7c5f797cab0) #22
  unreachable

bb25:                                             ; preds = %bb24
  %_66 = load i32, ptr %small, align 4
  %_65 = icmp sge i32 %_57.0, %_66
  br i1 %_65, label %bb17, label %bb26

panic14:                                          ; preds = %bb24
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6535f3d14bee31bdc6f2e7c5f797cab0) #22
  unreachable

bb26:                                             ; preds = %bb25
  %_68 = load i32, ptr %big, align 4
  %_67 = icmp sle i32 %_64.0, %_68
  br i1 %_67, label %bb17, label %bb27

bb27:                                             ; preds = %bb26
  %_71 = load i32, ptr %big, align 4
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_71, i32 %_57.0)
  %_72.0 = extractvalue { i32, i1 } %26, 0
  %_72.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_72.1, label %panic15, label %bb28

bb28:                                             ; preds = %bb27
  %_74 = load i32, ptr %small, align 4
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_64.0, i32 %_74)
  %_75.0 = extractvalue { i32, i1 } %27, 0
  %_75.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_75.1, label %panic16, label %bb29

panic15:                                          ; preds = %bb27
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e6701b8d02bbfa669fde1fac8c1efec5) #22
  unreachable

bb29:                                             ; preds = %bb28
  %_69 = icmp sle i32 %_72.0, %_75.0
  br i1 %_69, label %bb30, label %bb31

panic16:                                          ; preds = %bb28
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b19b2c5b209dccd041fa8a24722cfc99) #22
  unreachable

bb31:                                             ; preds = %bb29
  store i32 %_64.0, ptr %big, align 4
  br label %bb17

bb30:                                             ; preds = %bb29
  store i32 %_57.0, ptr %small, align 4
  br label %bb17

bb19:                                             ; No predecessors!
  unreachable
}
