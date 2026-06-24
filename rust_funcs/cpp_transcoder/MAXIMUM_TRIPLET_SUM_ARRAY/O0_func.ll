define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_25 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_16 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 -2147483648, ptr %sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h394251e80406fec5E"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %2, 0
  %_4.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_4.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h35e616d414b6cd46E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_7, align 4
  %7 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_7, align 4
  %9 = getelementptr inbounds i8, ptr %_7, i64 4
  %10 = load i32, ptr %9, align 4
  %_9 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_9 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %12, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_14.0 = extractvalue { i32, i1 } %13, 0
  %_14.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_14.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h394251e80406fec5E"(i32 %_14.0, i32 %n) #20
  %_11.0 = extractvalue { i32, i32 } %14, 0
  %_11.1 = extractvalue { i32, i32 } %14, 1
  store i32 %_11.0, ptr %iter1, align 4
  %15 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_11.1, ptr %15, align 4
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_261d24ca32119400366722826760d694) #22
  unreachable

bb9:                                              ; preds = %bb14, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h35e616d414b6cd46E"(ptr align 4 %iter1) #20
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, ptr %_16, align 4
  %19 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %_16, align 4
  %21 = getelementptr inbounds i8, ptr %_16, i64 4
  %22 = load i32, ptr %21, align 4
  %_18 = zext i32 %20 to i64
  %23 = trunc nuw i64 %_18 to i1
  br i1 %23, label %bb11, label %bb2

bb11:                                             ; preds = %bb9
  %24 = getelementptr inbounds i8, ptr %_16, i64 4
  %j = load i32, ptr %24, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j, i32 1)
  %_23.0 = extractvalue { i32, i1 } %25, 0
  %_23.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_23.1, label %panic3, label %bb12

bb12:                                             ; preds = %bb11
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %26 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h394251e80406fec5E"(i32 %_23.0, i32 %n) #20
  %_20.0 = extractvalue { i32, i32 } %26, 0
  %_20.1 = extractvalue { i32, i32 } %26, 1
  store i32 %_20.0, ptr %iter2, align 4
  %27 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_20.1, ptr %27, align 4
  br label %bb14

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7902a9b0e48eea98754bf4464d20bc72) #22
  unreachable

bb14:                                             ; preds = %bb27, %bb21, %bb12
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %28 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h35e616d414b6cd46E"(ptr align 4 %iter2) #20
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = extractvalue { i32, i32 } %28, 1
  store i32 %29, ptr %_25, align 4
  %31 = getelementptr inbounds i8, ptr %_25, i64 4
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %_25, align 4
  %33 = getelementptr inbounds i8, ptr %_25, i64 4
  %34 = load i32, ptr %33, align 4
  %_27 = zext i32 %32 to i64
  %35 = trunc nuw i64 %_27 to i1
  br i1 %35, label %bb16, label %bb9

bb16:                                             ; preds = %bb14
  %36 = getelementptr inbounds i8, ptr %_25, i64 4
  %k = load i32, ptr %36, align 4
  %_30 = load i32, ptr %sum, align 4
  %_34 = sext i32 %i to i64
  %_35 = icmp ult i64 %_34, 2
  br i1 %_35, label %bb17, label %panic4

bb17:                                             ; preds = %bb16
  %37 = getelementptr inbounds nuw i32, ptr %arr, i64 %_34
  %_33 = load i32, ptr %37, align 4
  %_37 = sext i32 %j to i64
  %_38 = icmp ult i64 %_37, 2
  br i1 %_38, label %bb18, label %panic5

panic4:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_34, i64 2, ptr align 8 @alloc_473a845f08801bca3a5982d8c9fef99d) #22
  unreachable

bb18:                                             ; preds = %bb17
  %38 = getelementptr inbounds nuw i32, ptr %arr, i64 %_37
  %_36 = load i32, ptr %38, align 4
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_33, i32 %_36)
  %_39.0 = extractvalue { i32, i1 } %39, 0
  %_39.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_39.1, label %panic6, label %bb19

panic5:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37, i64 2, ptr align 8 @alloc_7a401a841630b1e11c01bf306c6fcf3a) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_41 = sext i32 %k to i64
  %_42 = icmp ult i64 %_41, 2
  br i1 %_42, label %bb20, label %panic7

panic6:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_473a845f08801bca3a5982d8c9fef99d) #22
  unreachable

bb20:                                             ; preds = %bb19
  %40 = getelementptr inbounds nuw i32, ptr %arr, i64 %_41
  %_40 = load i32, ptr %40, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_39.0, i32 %_40)
  %_43.0 = extractvalue { i32, i1 } %41, 0
  %_43.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_43.1, label %panic8, label %bb21

panic7:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_41, i64 2, ptr align 8 @alloc_a243288e64a199c5dc29619eb3768809) #22
  unreachable

bb21:                                             ; preds = %bb20
  %_29 = icmp slt i32 %_30, %_43.0
  br i1 %_29, label %bb22, label %bb14

panic8:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_473a845f08801bca3a5982d8c9fef99d) #22
  unreachable

bb22:                                             ; preds = %bb21
  %_46 = sext i32 %i to i64
  %_47 = icmp ult i64 %_46, 2
  br i1 %_47, label %bb23, label %panic9

bb23:                                             ; preds = %bb22
  %42 = getelementptr inbounds nuw i32, ptr %arr, i64 %_46
  %_45 = load i32, ptr %42, align 4
  %_49 = sext i32 %j to i64
  %_50 = icmp ult i64 %_49, 2
  br i1 %_50, label %bb24, label %panic10

panic9:                                           ; preds = %bb22
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_46, i64 2, ptr align 8 @alloc_3792ec124e5c774719d02f15d302af9c) #22
  unreachable

bb24:                                             ; preds = %bb23
  %43 = getelementptr inbounds nuw i32, ptr %arr, i64 %_49
  %_48 = load i32, ptr %43, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_45, i32 %_48)
  %_51.0 = extractvalue { i32, i1 } %44, 0
  %_51.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_51.1, label %panic11, label %bb25

panic10:                                          ; preds = %bb23
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_49, i64 2, ptr align 8 @alloc_5e0c76d0476e443be1918bfee737d562) #22
  unreachable

bb25:                                             ; preds = %bb24
  %_53 = sext i32 %k to i64
  %_54 = icmp ult i64 %_53, 2
  br i1 %_54, label %bb26, label %panic12

panic11:                                          ; preds = %bb24
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3792ec124e5c774719d02f15d302af9c) #22
  unreachable

bb26:                                             ; preds = %bb25
  %45 = getelementptr inbounds nuw i32, ptr %arr, i64 %_53
  %_52 = load i32, ptr %45, align 4
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_51.0, i32 %_52)
  %_55.0 = extractvalue { i32, i1 } %46, 0
  %_55.1 = extractvalue { i32, i1 } %46, 1
  br i1 %_55.1, label %panic13, label %bb27

panic12:                                          ; preds = %bb25
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_53, i64 2, ptr align 8 @alloc_ce9002e9cf04e09f78bf003916ad4a6e) #22
  unreachable

bb27:                                             ; preds = %bb26
  store i32 %_55.0, ptr %sum, align 4
  br label %bb14

panic13:                                          ; preds = %bb26
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3792ec124e5c774719d02f15d302af9c) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
