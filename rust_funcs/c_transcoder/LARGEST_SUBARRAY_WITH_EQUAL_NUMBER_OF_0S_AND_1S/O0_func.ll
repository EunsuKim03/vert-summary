define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #1 {
start:
  %_67 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %_54 = alloca [16 x i8], align 8
  %_29 = alloca [4 x i8], align 4
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
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf93b6bd0e8718f01E"(i32 0, i32 %_9.0) #17
  %_6.0 = extractvalue { i32, i32 } %3, 0
  %_6.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_6.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %4, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b24418fb044d115df63a0803938eeb48) #22
  unreachable

bb3:                                              ; preds = %bb14, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h00fb1d2738865535E"(ptr align 4 %iter) #17
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
  br i1 %_19, label %bb8, label %panic3

bb7:                                              ; preds = %bb3
  %_47 = load i32, ptr %maxsize, align 4
  %_46 = icmp eq i32 %_47, -1
  br i1 %_46, label %bb28, label %bb29

bb29:                                             ; preds = %bb7
  %_59 = load i32, ptr %startindex, align 4
  %_58 = sext i32 %_59 to i64
  %_62 = load i32, ptr %startindex, align 4
  %_61 = sext i32 %_62 to i64
  %_64 = load i32, ptr %maxsize, align 4
  %_63 = sext i32 %_64 to i64
  %_65.0 = add i64 %_61, %_63
  %_65.1 = icmp ult i64 %_65.0, %_61
  br i1 %_65.1, label %panic2, label %bb31

bb28:                                             ; preds = %bb7
; call core::fmt::Arguments::from_str
  %14 = call { ptr, ptr } @_ZN4core3fmt9Arguments8from_str17hd5fb762c4af5e723E(ptr align 1 @alloc_e35ef0db3ff0e2e52d9de27516a202e9, i64 17) #17
  %_49.0 = extractvalue { ptr, ptr } %14, 0
  %_49.1 = extractvalue { ptr, ptr } %14, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr %_49.0, ptr %_49.1)
  br label %bb35

bb31:                                             ; preds = %bb29
; call core::array::<impl core::ops::index::Index<I> for [T; N]>::index
  %15 = call { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17he69c5425cdd68754E"(ptr align 4 %arr, i64 %_58, i64 %_65.0, ptr align 8 @alloc_24ef333251a3c887bd5d4c2542ca9b95) #17
  %_55.0 = extractvalue { ptr, i64 } %15, 0
  %_55.1 = extractvalue { ptr, i64 } %15, 1
  store ptr %_55.0, ptr %_54, align 8
  %16 = getelementptr inbounds i8, ptr %_54, i64 8
  store i64 %_55.1, ptr %16, align 8
; call core::fmt::rt::Argument::new_debug
  call void @_ZN4core3fmt2rt8Argument9new_debug17h10c33223c1f4b22bE(ptr sret([16 x i8]) align 8 %_67, ptr align 8 %_54) #17
  %17 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %_67, i64 16, i1 false)
; call core::fmt::Arguments::new
  %18 = call { ptr, ptr } @_ZN4core3fmt9Arguments3new17h68aebbf7c5b6e601E(ptr align 1 @alloc_61247b90e1706a3f65e71312b599d3d1, ptr align 8 %args) #17
  %_51.0 = extractvalue { ptr, ptr } %18, 0
  %_51.1 = extractvalue { ptr, ptr } %18, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr %_51.0, ptr %_51.1)
  br label %bb35

panic2:                                           ; preds = %bb29
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_53f0486789ac20e97dd2338ebaf4049a) #22
  unreachable

bb35:                                             ; preds = %bb28, %bb31
  %_0 = load i32, ptr %maxsize, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %19 = getelementptr inbounds nuw i32, ptr %arr, i64 %_18
  %_17 = load i32, ptr %19, align 4
  %_16 = icmp eq i32 %_17, 0
  br i1 %_16, label %bb9, label %bb10

panic3:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 2, ptr align 8 @alloc_ccb14d481c10be9a532a00cf09598600) #22
  unreachable

bb10:                                             ; preds = %bb8
  store i32 1, ptr %_15, align 4
  br label %bb11

bb9:                                              ; preds = %bb8
  store i32 -1, ptr %_15, align 4
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  %20 = load i32, ptr %_15, align 4
  store i32 %20, ptr %sum, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_23.0 = extractvalue { i32, i1 } %21, 0
  %_23.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_23.1, label %panic4, label %bb12

bb12:                                             ; preds = %bb11
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %22 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf93b6bd0e8718f01E"(i32 %_23.0, i32 %n) #17
  %_20.0 = extractvalue { i32, i32 } %22, 0
  %_20.1 = extractvalue { i32, i32 } %22, 1
  store i32 %_20.0, ptr %iter1, align 4
  %23 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_20.1, ptr %23, align 4
  br label %bb14

panic4:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e7876e05ce048c9d3ffb78d776be9d3c) #22
  unreachable

bb14:                                             ; preds = %bb27, %bb24, %bb21, %bb12
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %24 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h00fb1d2738865535E"(ptr align 4 %iter1) #17
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = extractvalue { i32, i32 } %24, 1
  store i32 %25, ptr %_25, align 4
  %27 = getelementptr inbounds i8, ptr %_25, i64 4
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %_25, align 4
  %29 = getelementptr inbounds i8, ptr %_25, i64 4
  %30 = load i32, ptr %29, align 4
  %_27 = zext i32 %28 to i64
  %31 = trunc nuw i64 %_27 to i1
  br i1 %31, label %bb16, label %bb3

bb16:                                             ; preds = %bb14
  %32 = getelementptr inbounds i8, ptr %_25, i64 4
  %j = load i32, ptr %32, align 4
  %_32 = sext i32 %j to i64
  %_33 = icmp ult i64 %_32, 2
  br i1 %_33, label %bb17, label %panic5

bb17:                                             ; preds = %bb16
  %33 = getelementptr inbounds nuw i32, ptr %arr, i64 %_32
  %_31 = load i32, ptr %33, align 4
  %_30 = icmp eq i32 %_31, 0
  br i1 %_30, label %bb18, label %bb19

panic5:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 2, ptr align 8 @alloc_35e156b0d7fd1cc1230b36d600d69ef1) #22
  unreachable

bb19:                                             ; preds = %bb17
  store i32 1, ptr %_29, align 4
  br label %bb20

bb18:                                             ; preds = %bb17
  store i32 -1, ptr %_29, align 4
  br label %bb20

bb20:                                             ; preds = %bb18, %bb19
  %34 = load i32, ptr %sum, align 4
  %35 = load i32, ptr %_29, align 4
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 %35)
  %_34.0 = extractvalue { i32, i1 } %36, 0
  %_34.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_34.1, label %panic6, label %bb21

bb21:                                             ; preds = %bb20
  store i32 %_34.0, ptr %sum, align 4
  %_36 = load i32, ptr %sum, align 4
  %_35 = icmp eq i32 %_36, 0
  br i1 %_35, label %bb22, label %bb14

panic6:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_371aeb2a57d673fee3a4ce5fbea41da6) #22
  unreachable

bb22:                                             ; preds = %bb21
  %_38 = load i32, ptr %maxsize, align 4
  %37 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %i)
  %_41.0 = extractvalue { i32, i1 } %37, 0
  %_41.1 = extractvalue { i32, i1 } %37, 1
  br i1 %_41.1, label %panic7, label %bb23

bb23:                                             ; preds = %bb22
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_41.0, i32 1)
  %_42.0 = extractvalue { i32, i1 } %38, 0
  %_42.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_42.1, label %panic8, label %bb24

panic7:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b52f24dbc82edc5373033dc34f9e89dd) #22
  unreachable

bb24:                                             ; preds = %bb23
  %_37 = icmp slt i32 %_38, %_42.0
  br i1 %_37, label %bb25, label %bb14

panic8:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b52f24dbc82edc5373033dc34f9e89dd) #22
  unreachable

bb25:                                             ; preds = %bb24
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %i)
  %_44.0 = extractvalue { i32, i1 } %39, 0
  %_44.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_44.1, label %panic9, label %bb26

bb26:                                             ; preds = %bb25
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_44.0, i32 1)
  %_45.0 = extractvalue { i32, i1 } %40, 0
  %_45.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_45.1, label %panic10, label %bb27

panic9:                                           ; preds = %bb25
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d919254adb13f5f61c2357dcb7d4f0c7) #22
  unreachable

bb27:                                             ; preds = %bb26
  store i32 %_45.0, ptr %maxsize, align 4
  store i32 %i, ptr %startindex, align 4
  br label %bb14

panic10:                                          ; preds = %bb26
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d919254adb13f5f61c2357dcb7d4f0c7) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
