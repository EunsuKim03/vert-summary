define i32 @f_gold(ptr align 1 %tree.0, i64 %tree.1, i32 %k) unnamed_addr #3 {
start:
  %self.i9 = alloca [4 x i8], align 4
  %self.i4 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_32 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %product = alloca [4 x i8], align 4
  %level = alloca [4 x i8], align 4
  store i32 -1, ptr %level, align 4
  store i32 1, ptr %product, align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h0a4989c0e80c1008E"(ptr align 1 %tree.0, i64 %tree.1) #20
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1aacb209056fb96cE"(i64 0, i64 %n) #20
  %_6.0 = extractvalue { i64, i64 } %0, 0
  %_6.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_6.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb12, %bb18, %bb25, %bb19, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h17719ee972c9f0b3E"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_9, align 8
  %5 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %4, ptr %5, align 8
  %_11 = load i64, ptr %_9, align 8
  %6 = getelementptr inbounds i8, ptr %_9, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_11 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_9, i64 8
  %i = load i64, ptr %9, align 8
; call core::str::<impl str>::chars
  %10 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfc3bf9e681e72e53E"(ptr align 1 %tree.0, i64 %tree.1) #20
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  store ptr %11, ptr %_17, align 8
  %13 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %12, ptr %13, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3306aedea86c400cE(ptr align 8 %_17, i64 %i) #20
  store i32 %_15, ptr %self.i9, align 4
  %14 = load i32, ptr %self.i9, align 4
  %15 = icmp eq i32 %14, 1114112
  %_2.i10 = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_2.i10 to i1
  br i1 %16, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit13", label %bb2.i11

bb2.i11:                                          ; preds = %bb6
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_acd461f79d90e55f2fdb3a9db4b96259) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit13": ; preds = %bb6
  %val.i12 = load i32, ptr %self.i9, align 4
  %_13 = icmp eq i32 %val.i12, 40
  br i1 %_13, label %bb11, label %bb13

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %product, align 4
  ret i32 %_0

bb13:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit13"
; call core::str::<impl str>::chars
  %17 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfc3bf9e681e72e53E"(ptr align 1 %tree.0, i64 %tree.1) #20
  %18 = extractvalue { ptr, ptr } %17, 0
  %19 = extractvalue { ptr, ptr } %17, 1
  store ptr %18, ptr %_23, align 8
  %20 = getelementptr inbounds i8, ptr %_23, i64 8
  store ptr %19, ptr %20, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_21 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3306aedea86c400cE(ptr align 8 %_23, i64 %i) #20
  store i32 %_21, ptr %self.i4, align 4
  %21 = load i32, ptr %self.i4, align 4
  %22 = icmp eq i32 %21, 1114112
  %_2.i5 = select i1 %22, i64 0, i64 1
  %23 = trunc nuw i64 %_2.i5 to i1
  br i1 %23, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit8", label %bb2.i6

bb2.i6:                                           ; preds = %bb13
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_7adecb7a1d0a195b773a109c0d6c9401) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit8": ; preds = %bb13
  %val.i7 = load i32, ptr %self.i4, align 4
  %_19 = icmp eq i32 %val.i7, 41
  br i1 %_19, label %bb17, label %bb19

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit13"
  %24 = load i32, ptr %level, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %_18.0 = extractvalue { i32, i1 } %25, 0
  %_18.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_18.1, label %panic3, label %bb12

bb19:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit8"
  %_26 = load i32, ptr %level, align 4
  %_25 = icmp eq i32 %_26, %k
  br i1 %_25, label %bb20, label %bb3

bb17:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit8"
  %26 = load i32, ptr %level, align 4
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %26, i32 1)
  %_24.0 = extractvalue { i32, i1 } %27, 0
  %_24.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_24.1, label %panic2, label %bb18

bb20:                                             ; preds = %bb19
; call core::str::<impl str>::chars
  %28 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfc3bf9e681e72e53E"(ptr align 1 %tree.0, i64 %tree.1) #20
  %29 = extractvalue { ptr, ptr } %28, 0
  %30 = extractvalue { ptr, ptr } %28, 1
  store ptr %29, ptr %_32, align 8
  %31 = getelementptr inbounds i8, ptr %_32, i64 8
  store ptr %30, ptr %31, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_30 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3306aedea86c400cE(ptr align 8 %_32, i64 %i) #20
  store i32 %_30, ptr %self.i, align 4
  %32 = load i32, ptr %self.i, align 4
  %33 = icmp eq i32 %32, 1114112
  %_2.i = select i1 %33, i64 0, i64 1
  %34 = trunc nuw i64 %_2.i to i1
  br i1 %34, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb20
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_24d136cc18d311e9b6fb649c919bc630) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit": ; preds = %bb20
  %val.i = load i32, ptr %self.i, align 4
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_34.0 = extractvalue { i32, i1 } %35, 0
  %_34.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_34.1, label %panic, label %bb24

bb24:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit"
  %36 = load i32, ptr %product, align 4
  %37 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %36, i32 %_34.0)
  %_35.0 = extractvalue { i32, i1 } %37, 0
  %_35.1 = extractvalue { i32, i1 } %37, 1
  br i1 %_35.1, label %panic1, label %bb25

panic:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4d161b103fe2cc59cef947f20a622d32) #22
  unreachable

bb25:                                             ; preds = %bb24
  store i32 %_35.0, ptr %product, align 4
  br label %bb3

panic1:                                           ; preds = %bb24
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_829ee8009e5d7cf55305c90fff3e0e98) #22
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_24.0, ptr %level, align 4
  br label %bb3

panic2:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_464a6539853a91edd8ae776ef834522c) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_18.0, ptr %level, align 4
  br label %bb3

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b87634fe772c0687e294b6103ead15c3) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
