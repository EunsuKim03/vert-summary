define i32 @f_gold(ptr align 1 %s.0, i64 %s.1, i32 %k) unnamed_addr #3 {
start:
  %self.i10 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_24 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %c = alloca [4 x i8], align 4
  %c2 = alloca [4 x i8], align 4
  %c1 = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h2eddefeaf4838804E"(ptr align 1 %s.0, i64 %s.1) #20
  store i32 0, ptr %c1, align 4
  store i32 0, ptr %c2, align 4
  store i32 0, ptr %c, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6c29a5dae0978c54E"(i64 0, i64 %n) #20
  %_7.0 = extractvalue { i64, i64 } %0, 0
  %_7.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_7.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_7.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb19, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit", %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6c4b55b98c4db569E"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_10, align 8
  %5 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %4, ptr %5, align 8
  %_12 = load i64, ptr %_10, align 8
  %6 = getelementptr inbounds i8, ptr %_10, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_12 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %9, align 8
; call core::str::<impl str>::chars
  %10 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf395cc56d331b505E"(ptr align 1 %s.0, i64 %s.1) #20
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  store ptr %11, ptr %_18, align 8
  %13 = getelementptr inbounds i8, ptr %_18, i64 8
  store ptr %12, ptr %13, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_16 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1b58d682adacc1beE(ptr align 8 %_18, i64 %i) #20
  store i32 %_16, ptr %self.i10, align 4
  %14 = load i32, ptr %self.i10, align 4
  %15 = icmp eq i32 %14, 1114112
  %_2.i11 = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_2.i11 to i1
  br i1 %16, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit14", label %bb2.i12

bb2.i12:                                          ; preds = %bb6
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_7e055e2c81a6210b5592eddea3200db8) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit14": ; preds = %bb6
  %val.i13 = load i32, ptr %self.i10, align 4
  %_14 = icmp eq i32 %val.i13, 97
  br i1 %_14, label %bb11, label %bb13

bb7:                                              ; preds = %bb3
  %_29 = load i32, ptr %c, align 4
  %17 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_29, i32 %k)
  %_30.0 = extractvalue { i32, i1 } %17, 0
  %_30.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_30.1, label %panic, label %bb20

bb20:                                             ; preds = %bb7
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 1)
  %_36.0 = extractvalue { i32, i1 } %18, 0
  %_36.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_36.1, label %panic1, label %bb21

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_30e26a73d5c79dac189326d500bbcaf9) #22
  unreachable

bb21:                                             ; preds = %bb20
  %19 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %k, i32 %_36.0)
  %_37.0 = extractvalue { i32, i1 } %19, 0
  %_37.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_37.1, label %panic2, label %bb22

panic1:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4f34561dbb9a2e95e0355cbe2cd5ab1b) #22
  unreachable

bb22:                                             ; preds = %bb21
  %_40 = icmp eq i32 %_37.0, -2147483648
  %_41 = and i1 false, %_40
  br i1 %_41, label %panic3, label %bb24

panic2:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_ab74faafaa3dd99af565b88c0581512c) #22
  unreachable

bb24:                                             ; preds = %bb22
  %_33 = sdiv i32 %_37.0, 2
  %_42 = load i32, ptr %c1, align 4
  %20 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_33, i32 %_42)
  %_43.0 = extractvalue { i32, i1 } %20, 0
  %_43.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_43.1, label %panic4, label %bb25

panic3:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_8c37b4afef673fbd935bdf63d161cd7d) #22
  unreachable

bb25:                                             ; preds = %bb24
  %_44 = load i32, ptr %c2, align 4
  %21 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_43.0, i32 %_44)
  %_45.0 = extractvalue { i32, i1 } %21, 0
  %_45.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_45.1, label %panic5, label %bb26

panic4:                                           ; preds = %bb24
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8c37b4afef673fbd935bdf63d161cd7d) #22
  unreachable

bb26:                                             ; preds = %bb25
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_30.0, i32 %_45.0)
  %_46.0 = extractvalue { i32, i1 } %22, 0
  %_46.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_46.1, label %panic6, label %bb27

panic5:                                           ; preds = %bb25
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8c37b4afef673fbd935bdf63d161cd7d) #22
  unreachable

bb27:                                             ; preds = %bb26
  ret i32 %_46.0

panic6:                                           ; preds = %bb26
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_30e26a73d5c79dac189326d500bbcaf9) #22
  unreachable

bb13:                                             ; preds = %bb12, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit14"
; call core::str::<impl str>::chars
  %23 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf395cc56d331b505E"(ptr align 1 %s.0, i64 %s.1) #20
  %24 = extractvalue { ptr, ptr } %23, 0
  %25 = extractvalue { ptr, ptr } %23, 1
  store ptr %24, ptr %_24, align 8
  %26 = getelementptr inbounds i8, ptr %_24, i64 8
  store ptr %25, ptr %26, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_22 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1b58d682adacc1beE(ptr align 8 %_24, i64 %i) #20
  store i32 %_22, ptr %self.i, align 4
  %27 = load i32, ptr %self.i, align 4
  %28 = icmp eq i32 %27, 1114112
  %_2.i = select i1 %28, i64 0, i64 1
  %29 = trunc nuw i64 %_2.i to i1
  br i1 %29, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb13
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_40219dbcb1563e50aa411e27a3291f60) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit": ; preds = %bb13
  %val.i = load i32, ptr %self.i, align 4
  %_20 = icmp eq i32 %val.i, 98
  br i1 %_20, label %bb17, label %bb3

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit14"
  %30 = load i32, ptr %c1, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 1)
  %_19.0 = extractvalue { i32, i1 } %31, 0
  %_19.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_19.1, label %panic7, label %bb12

bb12:                                             ; preds = %bb11
  store i32 %_19.0, ptr %c1, align 4
  br label %bb13

panic7:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f3f96d4f32bbec9032194b2e96607619) #22
  unreachable

bb17:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit"
  %32 = load i32, ptr %c2, align 4
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 1)
  %_25.0 = extractvalue { i32, i1 } %33, 0
  %_25.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_25.1, label %panic8, label %bb18

bb18:                                             ; preds = %bb17
  store i32 %_25.0, ptr %c2, align 4
  %_26 = load i32, ptr %c1, align 4
  %34 = load i32, ptr %c, align 4
  %35 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 %_26)
  %_27.0 = extractvalue { i32, i1 } %35, 0
  %_27.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_27.1, label %panic9, label %bb19

panic8:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_10ddda506b0bbb412bd3f499a19fc37d) #22
  unreachable

bb19:                                             ; preds = %bb18
  store i32 %_27.0, ptr %c, align 4
  br label %bb3

panic9:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4a6988aeb192b87880947b4566f0d9c9) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
