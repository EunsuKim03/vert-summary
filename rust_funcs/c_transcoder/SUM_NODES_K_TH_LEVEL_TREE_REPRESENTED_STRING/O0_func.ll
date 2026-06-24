define i32 @f_gold(ptr align 1 %tree.0, i64 %tree.1, i32 %k) unnamed_addr #3 {
start:
  %self.i13 = alloca [8 x i8], align 4
  %self.i8 = alloca [4 x i8], align 4
  %self.i3 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_33 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %level = alloca [4 x i8], align 4
  store i32 -1, ptr %level, align 4
  store i32 0, ptr %sum, align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17hc17c2f0aefdea4ccE"(ptr align 1 %tree.0, i64 %tree.1) #20
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9695dd55026d028eE"(i64 0, i64 %n) #20
  %_6.0 = extractvalue { i64, i64 } %0, 0
  %_6.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_6.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb12, %bb18, %bb26, %bb19, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h12d8ce7c87cf5686E"(ptr align 8 %iter) #20
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
  %10 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5903bc302ad914c4E"(ptr align 1 %tree.0, i64 %tree.1) #20
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  store ptr %11, ptr %_17, align 8
  %13 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %12, ptr %13, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h6c854cd8bc254a73E(ptr align 8 %_17, i64 %i) #20
  store i32 %_15, ptr %self.i8, align 4
  %14 = load i32, ptr %self.i8, align 4
  %15 = icmp eq i32 %14, 1114112
  %_2.i9 = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_2.i9 to i1
  br i1 %16, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit12", label %bb2.i10

bb2.i10:                                          ; preds = %bb6
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_d48a2381b32b82af0b549ddb85151b66) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit12": ; preds = %bb6
  %val.i11 = load i32, ptr %self.i8, align 4
  %_13 = icmp eq i32 %val.i11, 40
  br i1 %_13, label %bb11, label %bb13

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb13:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit12"
; call core::str::<impl str>::chars
  %17 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5903bc302ad914c4E"(ptr align 1 %tree.0, i64 %tree.1) #20
  %18 = extractvalue { ptr, ptr } %17, 0
  %19 = extractvalue { ptr, ptr } %17, 1
  store ptr %18, ptr %_23, align 8
  %20 = getelementptr inbounds i8, ptr %_23, i64 8
  store ptr %19, ptr %20, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_21 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h6c854cd8bc254a73E(ptr align 8 %_23, i64 %i) #20
  store i32 %_21, ptr %self.i3, align 4
  %21 = load i32, ptr %self.i3, align 4
  %22 = icmp eq i32 %21, 1114112
  %_2.i4 = select i1 %22, i64 0, i64 1
  %23 = trunc nuw i64 %_2.i4 to i1
  br i1 %23, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit7", label %bb2.i5

bb2.i5:                                           ; preds = %bb13
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_fbb2e5150e4a30502876cccda5ea05e6) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit7": ; preds = %bb13
  %val.i6 = load i32, ptr %self.i3, align 4
  %_19 = icmp eq i32 %val.i6, 41
  br i1 %_19, label %bb17, label %bb19

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit12"
  %24 = load i32, ptr %level, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %_18.0 = extractvalue { i32, i1 } %25, 0
  %_18.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_18.1, label %panic2, label %bb12

bb19:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit7"
  %_26 = load i32, ptr %level, align 4
  %_25 = icmp eq i32 %_26, %k
  br i1 %_25, label %bb20, label %bb3

bb17:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit7"
  %26 = load i32, ptr %level, align 4
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %26, i32 1)
  %_24.0 = extractvalue { i32, i1 } %27, 0
  %_24.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_24.1, label %panic1, label %bb18

bb20:                                             ; preds = %bb19
; call core::str::<impl str>::chars
  %28 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5903bc302ad914c4E"(ptr align 1 %tree.0, i64 %tree.1) #20
  %29 = extractvalue { ptr, ptr } %28, 0
  %30 = extractvalue { ptr, ptr } %28, 1
  store ptr %29, ptr %_33, align 8
  %31 = getelementptr inbounds i8, ptr %_33, i64 8
  store ptr %30, ptr %31, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_31 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h6c854cd8bc254a73E(ptr align 8 %_33, i64 %i) #20
  store i32 %_31, ptr %self.i, align 4
  %32 = load i32, ptr %self.i, align 4
  %33 = icmp eq i32 %32, 1114112
  %_2.i = select i1 %33, i64 0, i64 1
  %34 = trunc nuw i64 %_2.i to i1
  br i1 %34, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb20
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_0c37c74758868b6df0cc5a51b83244b3) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit": ; preds = %bb20
  %val.i = load i32, ptr %self.i, align 4
; call core::char::methods::<impl char>::to_digit
  %35 = call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h85e8f83e59dc6dd5E"(i32 %val.i, i32 10) #20
  %_29.0 = extractvalue { i32, i32 } %35, 0
  %_29.1 = extractvalue { i32, i32 } %35, 1
  store i32 %_29.0, ptr %self.i13, align 4
  %36 = getelementptr inbounds i8, ptr %self.i13, i64 4
  store i32 %_29.1, ptr %36, align 4
  %37 = load i32, ptr %self.i13, align 4
  %38 = getelementptr inbounds i8, ptr %self.i13, i64 4
  %39 = load i32, ptr %38, align 4
  %_2.i14 = zext i32 %37 to i64
  %40 = trunc nuw i64 %_2.i14 to i1
  br i1 %40, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbbb69e058f2b4d0dE.exit", label %bb2.i15

bb2.i15:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_ad4ee931a9ef20795294d597d8942628) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hbbb69e058f2b4d0dE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit"
  %41 = getelementptr inbounds i8, ptr %self.i13, i64 4
  %val.i16 = load i32, ptr %41, align 4
  %42 = load i32, ptr %sum, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %42, i32 %val.i16)
  %_34.0 = extractvalue { i32, i1 } %43, 0
  %_34.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_34.1, label %panic, label %bb26

bb26:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbbb69e058f2b4d0dE.exit"
  store i32 %_34.0, ptr %sum, align 4
  br label %bb3

panic:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbbb69e058f2b4d0dE.exit"
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8aa71c1dae043957a7874f156a8d697d) #22
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_24.0, ptr %level, align 4
  br label %bb3

panic1:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a37ef9372e356523bd579b8fc34bfaf8) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_18.0, ptr %level, align 4
  br label %bb3

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_61e2f8f38166638de5d42ca3f3898785) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
