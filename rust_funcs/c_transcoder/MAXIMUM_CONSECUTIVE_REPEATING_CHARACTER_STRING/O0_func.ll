define i32 @f_gold(ptr align 1 %str_input.0, i64 %str_input.1) unnamed_addr #3 {
start:
  %self.i13 = alloca [4 x i8], align 4
  %self.i8 = alloca [4 x i8], align 4
  %self.i3 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_42 = alloca [16 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %cur_count = alloca [4 x i8], align 4
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %len = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h4a75d4a9003f39d2E"(ptr align 1 %str_input.0, i64 %str_input.1) #20
  store i32 0, ptr %count, align 4
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b1a5533337d41dE"(ptr align 1 %str_input.0, i64 %str_input.1) #20
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  store ptr %1, ptr %_7, align 8
  %3 = getelementptr inbounds i8, ptr %_7, i64 8
  store ptr %2, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_5 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr align 8 %_7, i64 0) #20
  store i32 %_5, ptr %self.i13, align 4
  %4 = load i32, ptr %self.i13, align 4
  %5 = icmp eq i32 %4, 1114112
  %_2.i14 = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_2.i14 to i1
  br i1 %6, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit17", label %bb2.i15

bb2.i15:                                          ; preds = %start
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_15dbdf47819e645f096bf257c652c71f) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit17": ; preds = %start
  %val.i16 = load i32, ptr %self.i13, align 4
  store i32 %val.i16, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h331cd8fe461f3443E"(i64 0, i64 %len) #20
  %_8.0 = extractvalue { i64, i64 } %7, 0
  %_8.1 = extractvalue { i64, i64 } %7, 1
  store i64 %_8.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_8.1, ptr %8, align 8
  br label %bb6

bb6:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit", %bb24, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit17"
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd1fc4c97ef3741fbE"(ptr align 8 %iter) #20
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_11, align 8
  %12 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %11, ptr %12, align 8
  %_13 = load i64, ptr %_11, align 8
  %13 = getelementptr inbounds i8, ptr %_11, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_13 to i1
  br i1 %15, label %bb9, label %bb10

bb9:                                              ; preds = %bb6
  %16 = getelementptr inbounds i8, ptr %_11, i64 8
  %i = load i64, ptr %16, align 8
  store i32 1, ptr %cur_count, align 4
  %_19.0 = add i64 %i, 1
  %_19.1 = icmp ult i64 %_19.0, %i
  br i1 %_19.1, label %panic, label %bb11

bb10:                                             ; preds = %bb6
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb11:                                             ; preds = %bb9
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h331cd8fe461f3443E"(i64 %_19.0, i64 %len) #20
  %_16.0 = extractvalue { i64, i64 } %17, 0
  %_16.1 = extractvalue { i64, i64 } %17, 1
  store i64 %_16.0, ptr %iter1, align 8
  %18 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_16.1, ptr %18, align 8
  br label %bb13

panic:                                            ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_38077ee5b69aa22255e11ae6a8c9ca2d) #22
  unreachable

bb13:                                             ; preds = %bb23, %bb11
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %19 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd1fc4c97ef3741fbE"(ptr align 8 %iter1) #20
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  store i64 %20, ptr %_21, align 8
  %22 = getelementptr inbounds i8, ptr %_21, i64 8
  store i64 %21, ptr %22, align 8
  %_23 = load i64, ptr %_21, align 8
  %23 = getelementptr inbounds i8, ptr %_21, i64 8
  %24 = load i64, ptr %23, align 8
  %25 = trunc nuw i64 %_23 to i1
  br i1 %25, label %bb15, label %bb24

bb15:                                             ; preds = %bb13
  %26 = getelementptr inbounds i8, ptr %_21, i64 8
  %j = load i64, ptr %26, align 8
; call core::str::<impl str>::chars
  %27 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b1a5533337d41dE"(ptr align 1 %str_input.0, i64 %str_input.1) #20
  %28 = extractvalue { ptr, ptr } %27, 0
  %29 = extractvalue { ptr, ptr } %27, 1
  store ptr %28, ptr %_29, align 8
  %30 = getelementptr inbounds i8, ptr %_29, i64 8
  store ptr %29, ptr %30, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_27 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr align 8 %_29, i64 %i) #20
  store i32 %_27, ptr %self.i8, align 4
  %31 = load i32, ptr %self.i8, align 4
  %32 = icmp eq i32 %31, 1114112
  %_2.i9 = select i1 %32, i64 0, i64 1
  %33 = trunc nuw i64 %_2.i9 to i1
  br i1 %33, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit12", label %bb2.i10

bb2.i10:                                          ; preds = %bb15
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_68b893a97c2eb5d24b95db6f5597bc80) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit12": ; preds = %bb15
  %val.i11 = load i32, ptr %self.i8, align 4
; call core::str::<impl str>::chars
  %34 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b1a5533337d41dE"(ptr align 1 %str_input.0, i64 %str_input.1) #20
  %35 = extractvalue { ptr, ptr } %34, 0
  %36 = extractvalue { ptr, ptr } %34, 1
  store ptr %35, ptr %_33, align 8
  %37 = getelementptr inbounds i8, ptr %_33, i64 8
  store ptr %36, ptr %37, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_31 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr align 8 %_33, i64 %j) #20
  store i32 %_31, ptr %self.i3, align 4
  %38 = load i32, ptr %self.i3, align 4
  %39 = icmp eq i32 %38, 1114112
  %_2.i4 = select i1 %39, i64 0, i64 1
  %40 = trunc nuw i64 %_2.i4 to i1
  br i1 %40, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit7", label %bb2.i5

bb2.i5:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit12"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_7c0047f26287dad8b10a505934cfcfc0) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit7": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit12"
  %val.i6 = load i32, ptr %self.i3, align 4
  %_25 = icmp ne i32 %val.i11, %val.i6
  br i1 %_25, label %bb24, label %bb22

bb24:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit7", %bb13
  %_36 = load i32, ptr %cur_count, align 4
  %_37 = load i32, ptr %count, align 4
  %_35 = icmp sgt i32 %_36, %_37
  br i1 %_35, label %bb25, label %bb6

bb22:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit7"
  %41 = load i32, ptr %cur_count, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %41, i32 1)
  %_34.0 = extractvalue { i32, i1 } %42, 0
  %_34.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_34.1, label %panic2, label %bb23

bb23:                                             ; preds = %bb22
  store i32 %_34.0, ptr %cur_count, align 4
  br label %bb13

panic2:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d2f9e391d56d2fd7bc8fe9ddeaafcc6a) #22
  unreachable

bb25:                                             ; preds = %bb24
  %_38 = load i32, ptr %cur_count, align 4
  store i32 %_38, ptr %count, align 4
; call core::str::<impl str>::chars
  %43 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b1a5533337d41dE"(ptr align 1 %str_input.0, i64 %str_input.1) #20
  %44 = extractvalue { ptr, ptr } %43, 0
  %45 = extractvalue { ptr, ptr } %43, 1
  store ptr %44, ptr %_42, align 8
  %46 = getelementptr inbounds i8, ptr %_42, i64 8
  store ptr %45, ptr %46, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_40 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr align 8 %_42, i64 %i) #20
  store i32 %_40, ptr %self.i, align 4
  %47 = load i32, ptr %self.i, align 4
  %48 = icmp eq i32 %47, 1114112
  %_2.i = select i1 %48, i64 0, i64 1
  %49 = trunc nuw i64 %_2.i to i1
  br i1 %49, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb25
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_86a7d6fcc8569e18291c6e0ff70ebd5f) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit": ; preds = %bb25
  %val.i = load i32, ptr %self.i, align 4
  store i32 %val.i, ptr %res, align 4
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable
}
