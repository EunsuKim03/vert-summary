define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_63 = alloca [16 x i8], align 8
  %_62 = alloca [16 x i8], align 8
  %args = alloca [32 x i8], align 8
  %_55 = alloca [4 x i8], align 4
  %_25 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_15 = alloca [4 x i8], align 4
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %startindex = alloca [4 x i8], align 4
  %maxsize = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %sum, align 4
  store i32 -1, ptr %maxsize, align 4
  store i32 0, ptr %startindex, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_9.0 = extractvalue { i32, i1 } %2, 0
  %_9.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_9.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf93b6bd0e8718f01E"(i32 0, i32 %_9.0) #20
  %_6.0 = extractvalue { i32, i32 } %3, 0
  %_6.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_6.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %4, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1a9276de0c9f28e87166758ffbb92219) #22
  unreachable

bb3:                                              ; preds = %bb14, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h00fb1d2738865535E"(ptr align 4 %iter) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_11, align 4
  %8 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_11, align 4
  %10 = getelementptr inbounds i8, ptr %_11, i64 4
  %11 = load i32, ptr %10, align 4
  %_13 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_13 to i1
  br i1 %12, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %13 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %13, align 4
  %_18 = sext i32 %i to i64
  %_19 = icmp ult i64 %_18, 2
  br i1 %_19, label %bb8, label %panic4

bb7:                                              ; preds = %bb3
  %_47 = load i32, ptr %maxsize, align 4
  %_46 = icmp eq i32 %_47, -1
  br i1 %_46, label %bb29, label %bb30

bb30:                                             ; preds = %bb7
  %_57 = load i32, ptr %startindex, align 4
  %_58 = load i32, ptr %maxsize, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_57, i32 %_58)
  %_59.0 = extractvalue { i32, i1 } %14, 0
  %_59.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_59.1, label %panic2, label %bb32

bb29:                                             ; preds = %bb7
; call core::fmt::Arguments::from_str
  %15 = call { ptr, ptr } @_ZN4core3fmt9Arguments8from_str17hd5fb762c4af5e723E(ptr align 1 @alloc_e35ef0db3ff0e2e52d9de27516a202e9, i64 17) #20
  %_49.0 = extractvalue { ptr, ptr } %15, 0
  %_49.1 = extractvalue { ptr, ptr } %15, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr %_49.0, ptr %_49.1)
  br label %bb37

bb32:                                             ; preds = %bb30
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_59.0, i32 1)
  %_60.0 = extractvalue { i32, i1 } %16, 0
  %_60.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_60.1, label %panic3, label %bb33

panic2:                                           ; preds = %bb30
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_52a56acb46d719b1e8def5b3bee85dbb) #22
  unreachable

bb33:                                             ; preds = %bb32
  store i32 %_60.0, ptr %_55, align 4
; call core::fmt::rt::Argument::new_display
  call void @_ZN4core3fmt2rt8Argument11new_display17h215a0a766c60c648E(ptr sret([16 x i8]) align 8 %_62, ptr align 4 %startindex) #20
; call core::fmt::rt::Argument::new_display
  call void @_ZN4core3fmt2rt8Argument11new_display17h215a0a766c60c648E(ptr sret([16 x i8]) align 8 %_63, ptr align 4 %_55) #20
  %17 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %_62, i64 16, i1 false)
  %18 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %_63, i64 16, i1 false)
; call core::fmt::Arguments::new
  %19 = call { ptr, ptr } @_ZN4core3fmt9Arguments3new17h77adc850ae7dfbb7E(ptr align 1 @alloc_062de2de9aa914bcbbefc0d6493f1ca4, ptr align 8 %args) #20
  %_51.0 = extractvalue { ptr, ptr } %19, 0
  %_51.1 = extractvalue { ptr, ptr } %19, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr %_51.0, ptr %_51.1)
  br label %bb37

panic3:                                           ; preds = %bb32
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_52a56acb46d719b1e8def5b3bee85dbb) #22
  unreachable

bb37:                                             ; preds = %bb29, %bb33
  %_0 = load i32, ptr %maxsize, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %20 = getelementptr inbounds nuw i32, ptr %arr, i64 %_18
  %_17 = load i32, ptr %20, align 4
  %_16 = icmp eq i32 %_17, 0
  br i1 %_16, label %bb9, label %bb10

panic4:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_ccb76ea53e25ce13f767e5058e0d9519) #22
  unreachable

bb10:                                             ; preds = %bb8
  store i32 1, ptr %_15, align 4
  br label %bb11

bb9:                                              ; preds = %bb8
  store i32 -1, ptr %_15, align 4
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  %21 = load i32, ptr %_15, align 4
  store i32 %21, ptr %sum, align 4
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_23.0 = extractvalue { i32, i1 } %22, 0
  %_23.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_23.1, label %panic5, label %bb12

bb12:                                             ; preds = %bb11
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %23 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf93b6bd0e8718f01E"(i32 %_23.0, i32 %n) #20
  %_20.0 = extractvalue { i32, i32 } %23, 0
  %_20.1 = extractvalue { i32, i32 } %23, 1
  store i32 %_20.0, ptr %iter1, align 4
  %24 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_20.1, ptr %24, align 4
  br label %bb14

panic5:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_96cacac7bb71d7979c5b14c850a6add9) #22
  unreachable

bb14:                                             ; preds = %bb28, %bb25, %bb22, %bb12
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %25 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h00fb1d2738865535E"(ptr align 4 %iter1) #20
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = extractvalue { i32, i32 } %25, 1
  store i32 %26, ptr %_25, align 4
  %28 = getelementptr inbounds i8, ptr %_25, i64 4
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %_25, align 4
  %30 = getelementptr inbounds i8, ptr %_25, i64 4
  %31 = load i32, ptr %30, align 4
  %_27 = zext i32 %29 to i64
  %32 = trunc nuw i64 %_27 to i1
  br i1 %32, label %bb16, label %bb3

bb16:                                             ; preds = %bb14
  %33 = getelementptr inbounds i8, ptr %_25, i64 4
  %j = load i32, ptr %33, align 4
  %_31 = sext i32 %j to i64
  %_32 = icmp ult i64 %_31, 2
  br i1 %_32, label %bb17, label %panic6

bb17:                                             ; preds = %bb16
  %34 = getelementptr inbounds nuw i32, ptr %arr, i64 %_31
  %_30 = load i32, ptr %34, align 4
  %_29 = icmp eq i32 %_30, 0
  br i1 %_29, label %bb18, label %bb20

panic6:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 2, ptr align 8 @alloc_6f12c7b39e4c9931c4374f0860391a57) #22
  unreachable

bb20:                                             ; preds = %bb17
  %35 = load i32, ptr %sum, align 4
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %35, i32 1)
  %_34.0 = extractvalue { i32, i1 } %36, 0
  %_34.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_34.1, label %panic7, label %bb21

bb18:                                             ; preds = %bb17
  %37 = load i32, ptr %sum, align 4
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %37, i32 1)
  %_33.0 = extractvalue { i32, i1 } %38, 0
  %_33.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_33.1, label %panic8, label %bb19

bb21:                                             ; preds = %bb20
  store i32 %_34.0, ptr %sum, align 4
  br label %bb22

panic7:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f0635740aa4be75444beb6a5aa77f886) #22
  unreachable

bb22:                                             ; preds = %bb19, %bb21
  %_36 = load i32, ptr %sum, align 4
  %_35 = icmp eq i32 %_36, 0
  br i1 %_35, label %bb23, label %bb14

bb19:                                             ; preds = %bb18
  store i32 %_33.0, ptr %sum, align 4
  br label %bb22

panic8:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_98f00a18756ce4cf172875766b40f2bc) #22
  unreachable

bb23:                                             ; preds = %bb22
  %_38 = load i32, ptr %maxsize, align 4
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %i)
  %_41.0 = extractvalue { i32, i1 } %39, 0
  %_41.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_41.1, label %panic9, label %bb24

bb24:                                             ; preds = %bb23
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_41.0, i32 1)
  %_42.0 = extractvalue { i32, i1 } %40, 0
  %_42.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_42.1, label %panic10, label %bb25

panic9:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d4215de419c0db28f23b1b5cdfb7e190) #22
  unreachable

bb25:                                             ; preds = %bb24
  %_37 = icmp slt i32 %_38, %_42.0
  br i1 %_37, label %bb26, label %bb14

panic10:                                          ; preds = %bb24
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d4215de419c0db28f23b1b5cdfb7e190) #22
  unreachable

bb26:                                             ; preds = %bb25
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %i)
  %_44.0 = extractvalue { i32, i1 } %41, 0
  %_44.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_44.1, label %panic11, label %bb27

bb27:                                             ; preds = %bb26
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_44.0, i32 1)
  %_45.0 = extractvalue { i32, i1 } %42, 0
  %_45.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_45.1, label %panic12, label %bb28

panic11:                                          ; preds = %bb26
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_19deff9ca0c8c886bb5ccbac8fe6f21b) #22
  unreachable

bb28:                                             ; preds = %bb27
  store i32 %_45.0, ptr %maxsize, align 4
  store i32 %i, ptr %startindex, align 4
  br label %bb14

panic12:                                          ; preds = %bb27
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_19deff9ca0c8c886bb5ccbac8fe6f21b) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
