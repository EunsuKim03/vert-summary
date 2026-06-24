define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_39 = alloca [8 x i8], align 4
  %iter4 = alloca [8 x i8], align 4
  %_29 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_19 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_12 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %S1 = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %S = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %S, ptr align 8 %1, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %S1, ptr align 4 %S, i64 8, i1 false)
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h860e7a6ecafd8194E"(ptr align 4 %S1, i64 2) #20
; call core::iter::traits::iterator::Iterator::rev
  %2 = call { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17hbf28b037774c166dE(i32 0, i32 %n) #20
  %_9.0 = extractvalue { i32, i32 } %2, 0
  %_9.1 = extractvalue { i32, i32 } %2, 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h30bcf4758a15e7feE"(i32 %_9.0, i32 %_9.1) #20
  %_8.0 = extractvalue { i32, i32 } %3, 0
  %_8.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_8.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %4, align 4
  br label %bb4

bb4:                                              ; preds = %bb10, %start
; call <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %5 = call { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11144efca9975f38E"(ptr align 4 %iter) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_12, align 4
  %8 = getelementptr inbounds i8, ptr %_12, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_12, align 4
  %10 = getelementptr inbounds i8, ptr %_12, i64 4
  %11 = load i32, ptr %10, align 4
  %_14 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_14 to i1
  br i1 %12, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %13 = getelementptr inbounds i8, ptr %_12, i64 4
  %i = load i32, ptr %13, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f8b846c11c65390E"(i32 0, i32 %n) #20
  %_16.0 = extractvalue { i32, i32 } %14, 0
  %_16.1 = extractvalue { i32, i32 } %14, 1
  store i32 %_16.0, ptr %iter2, align 4
  %15 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_16.1, ptr %15, align 4
  br label %bb10

bb8:                                              ; preds = %bb4
  store i32 -2147483648, ptr %_0, align 4
  br label %bb34

bb34:                                             ; preds = %bb33, %bb8
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb10:                                             ; preds = %bb16, %bb12, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %17 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h8b80e750cea7ef34E"(ptr align 4 %iter2) #20
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = extractvalue { i32, i32 } %17, 1
  store i32 %18, ptr %_19, align 4
  %20 = getelementptr inbounds i8, ptr %_19, i64 4
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %_19, align 4
  %22 = getelementptr inbounds i8, ptr %_19, i64 4
  %23 = load i32, ptr %22, align 4
  %_21 = zext i32 %21 to i64
  %24 = trunc nuw i64 %_21 to i1
  br i1 %24, label %bb12, label %bb4

bb12:                                             ; preds = %bb10
  %25 = getelementptr inbounds i8, ptr %_19, i64 4
  %j = load i32, ptr %25, align 4
  %_23 = icmp eq i32 %i, %j
  br i1 %_23, label %bb10, label %bb13

bb13:                                             ; preds = %bb12
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j, i32 1)
  %_27.0 = extractvalue { i32, i1 } %26, 0
  %_27.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_27.1, label %panic, label %bb14

bb14:                                             ; preds = %bb13
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %27 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f8b846c11c65390E"(i32 %_27.0, i32 %n) #20
  %_24.0 = extractvalue { i32, i32 } %27, 0
  %_24.1 = extractvalue { i32, i32 } %27, 1
  store i32 %_24.0, ptr %iter3, align 4
  %28 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_24.1, ptr %28, align 4
  br label %bb16

panic:                                            ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bf9d8087c6fa9ac1e8a09c96a22d3ac3) #22
  unreachable

bb16:                                             ; preds = %bb22, %bb18, %bb14
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %29 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h8b80e750cea7ef34E"(ptr align 4 %iter3) #20
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_29, align 4
  %32 = getelementptr inbounds i8, ptr %_29, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_29, align 4
  %34 = getelementptr inbounds i8, ptr %_29, i64 4
  %35 = load i32, ptr %34, align 4
  %_31 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_31 to i1
  br i1 %36, label %bb18, label %bb10

bb18:                                             ; preds = %bb16
  %37 = getelementptr inbounds i8, ptr %_29, i64 4
  %k = load i32, ptr %37, align 4
  %_33 = icmp eq i32 %i, %k
  br i1 %_33, label %bb16, label %bb19

bb19:                                             ; preds = %bb18
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %k, i32 1)
  %_37.0 = extractvalue { i32, i1 } %38, 0
  %_37.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_37.1, label %panic5, label %bb20

bb20:                                             ; preds = %bb19
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %39 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f8b846c11c65390E"(i32 %_37.0, i32 %n) #20
  %_34.0 = extractvalue { i32, i32 } %39, 0
  %_34.1 = extractvalue { i32, i32 } %39, 1
  store i32 %_34.0, ptr %iter4, align 4
  %40 = getelementptr inbounds i8, ptr %iter4, i64 4
  store i32 %_34.1, ptr %40, align 4
  br label %bb22

panic5:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_961f3e4ec64b104adf9377ba1cf1f7f0) #22
  unreachable

bb22:                                             ; preds = %bb31, %bb24, %bb20
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %41 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h8b80e750cea7ef34E"(ptr align 4 %iter4) #20
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = extractvalue { i32, i32 } %41, 1
  store i32 %42, ptr %_39, align 4
  %44 = getelementptr inbounds i8, ptr %_39, i64 4
  store i32 %43, ptr %44, align 4
  %45 = load i32, ptr %_39, align 4
  %46 = getelementptr inbounds i8, ptr %_39, i64 4
  %47 = load i32, ptr %46, align 4
  %_41 = zext i32 %45 to i64
  %48 = trunc nuw i64 %_41 to i1
  br i1 %48, label %bb24, label %bb16

bb24:                                             ; preds = %bb22
  %49 = getelementptr inbounds i8, ptr %_39, i64 4
  %l = load i32, ptr %49, align 4
  %_43 = icmp eq i32 %i, %l
  br i1 %_43, label %bb22, label %bb25

bb25:                                             ; preds = %bb24
  %_46 = sext i32 %i to i64
  %_47 = icmp ult i64 %_46, 2
  br i1 %_47, label %bb26, label %panic6

bb26:                                             ; preds = %bb25
  %50 = getelementptr inbounds nuw i32, ptr %S1, i64 %_46
  %_45 = load i32, ptr %50, align 4
  %_51 = sext i32 %j to i64
  %_52 = icmp ult i64 %_51, 2
  br i1 %_52, label %bb27, label %panic7

panic6:                                           ; preds = %bb25
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_46, i64 2, ptr align 8 @alloc_a02a272b8a27a087c3a3d3533574a9cf) #22
  unreachable

bb27:                                             ; preds = %bb26
  %51 = getelementptr inbounds nuw i32, ptr %S1, i64 %_51
  %_50 = load i32, ptr %51, align 4
  %_54 = sext i32 %k to i64
  %_55 = icmp ult i64 %_54, 2
  br i1 %_55, label %bb28, label %panic8

panic7:                                           ; preds = %bb26
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_51, i64 2, ptr align 8 @alloc_7d8b694cddc44c4250e80b543804b956) #22
  unreachable

bb28:                                             ; preds = %bb27
  %52 = getelementptr inbounds nuw i32, ptr %S1, i64 %_54
  %_53 = load i32, ptr %52, align 4
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_50, i32 %_53)
  %_56.0 = extractvalue { i32, i1 } %53, 0
  %_56.1 = extractvalue { i32, i1 } %53, 1
  br i1 %_56.1, label %panic9, label %bb29

panic8:                                           ; preds = %bb27
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_54, i64 2, ptr align 8 @alloc_b7d9a226e74b9a016d96b4d90906e390) #22
  unreachable

bb29:                                             ; preds = %bb28
  %_58 = sext i32 %l to i64
  %_59 = icmp ult i64 %_58, 2
  br i1 %_59, label %bb30, label %panic10

panic9:                                           ; preds = %bb28
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7d8b694cddc44c4250e80b543804b956) #22
  unreachable

bb30:                                             ; preds = %bb29
  %54 = getelementptr inbounds nuw i32, ptr %S1, i64 %_58
  %_57 = load i32, ptr %54, align 4
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_56.0, i32 %_57)
  %_60.0 = extractvalue { i32, i1 } %55, 0
  %_60.1 = extractvalue { i32, i1 } %55, 1
  br i1 %_60.1, label %panic11, label %bb31

panic10:                                          ; preds = %bb29
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_58, i64 2, ptr align 8 @alloc_d9e4ce73cc2751f21e5d69a8617f7500) #22
  unreachable

bb31:                                             ; preds = %bb30
  %_44 = icmp eq i32 %_45, %_60.0
  br i1 %_44, label %bb32, label %bb22

panic11:                                          ; preds = %bb30
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7d8b694cddc44c4250e80b543804b956) #22
  unreachable

bb32:                                             ; preds = %bb31
  %_61 = sext i32 %i to i64
  %_62 = icmp ult i64 %_61, 2
  br i1 %_62, label %bb33, label %panic12

bb33:                                             ; preds = %bb32
  %56 = getelementptr inbounds nuw i32, ptr %S1, i64 %_61
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %_0, align 4
  br label %bb34

panic12:                                          ; preds = %bb32
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_61, i64 2, ptr align 8 @alloc_6f9fcce80f5e9a16edb058672ed50179) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
