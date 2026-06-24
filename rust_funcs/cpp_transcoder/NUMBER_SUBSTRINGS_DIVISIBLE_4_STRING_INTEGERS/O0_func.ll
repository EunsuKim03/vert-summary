define i32 @f_gold(ptr align 1 %s.0, i64 %s.1) unnamed_addr #3 {
start:
  %self.i27 = alloca [4 x i8], align 4
  %self.i22 = alloca [4 x i8], align 4
  %self.i17 = alloca [4 x i8], align 4
  %self.i12 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_52 = alloca [16 x i8], align 8
  %_43 = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %_20 = alloca [16 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %count = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h06c58657226bd293E"(ptr align 1 %s.0, i64 %s.1) #20
  store i32 0, ptr %count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1b33d591e06f22f1E"(i64 0, i64 %n) #20
  %_4.0 = extractvalue { i64, i64 } %0, 0
  %_4.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_4.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb20, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit", %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2bb8738dd9a84c80E"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_7, align 8
  %5 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %4, ptr %5, align 8
  %_9 = load i64, ptr %_7, align 8
  %6 = getelementptr inbounds i8, ptr %_7, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_9 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_7, i64 8
  %i10 = load i64, ptr %9, align 8
; call core::str::<impl str>::chars
  %10 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h14f269f24ad22348E"(ptr align 1 %s.0, i64 %s.1) #20
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  store ptr %11, ptr %_15, align 8
  %13 = getelementptr inbounds i8, ptr %_15, i64 8
  store ptr %12, ptr %13, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_13 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr align 8 %_15, i64 %i10) #20
  store i32 %_13, ptr %self.i17, align 4
  %14 = load i32, ptr %self.i17, align 4
  %15 = icmp eq i32 %14, 1114112
  %_2.i18 = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_2.i18 to i1
  br i1 %16, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit21", label %bb2.i19

bb2.i19:                                          ; preds = %bb6
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_354a6c2494719f33c663a3461a55b8ff) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit21": ; preds = %bb6
  %val.i20 = load i32, ptr %self.i17, align 4
  %_11 = icmp eq i32 %val.i20, 52
  br i1 %_11, label %bb19, label %bb11

bb7:                                              ; preds = %bb3
  %_30.0 = sub i64 %n, 1
  %_30.1 = icmp ult i64 %n, 1
  br i1 %_30.1, label %panic, label %bb21

bb21:                                             ; preds = %bb7
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1b33d591e06f22f1E"(i64 0, i64 %_30.0) #20
  %_27.0 = extractvalue { i64, i64 } %17, 0
  %_27.1 = extractvalue { i64, i64 } %17, 1
  store i64 %_27.0, ptr %iter1, align 8
  %18 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_27.1, ptr %18, align 8
  br label %bb23

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6d5971bbe0e30553c93d19f31ffd2e80) #22
  unreachable

bb23:                                             ; preds = %bb42, %bb39, %bb21
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %19 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2bb8738dd9a84c80E"(ptr align 8 %iter1) #20
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  store i64 %20, ptr %_32, align 8
  %22 = getelementptr inbounds i8, ptr %_32, i64 8
  store i64 %21, ptr %22, align 8
  %_34 = load i64, ptr %_32, align 8
  %23 = getelementptr inbounds i8, ptr %_32, i64 8
  %24 = load i64, ptr %23, align 8
  %25 = trunc nuw i64 %_34 to i1
  br i1 %25, label %bb25, label %bb26

bb25:                                             ; preds = %bb23
  %26 = getelementptr inbounds i8, ptr %_32, i64 8
  %i = load i64, ptr %26, align 8
; call core::str::<impl str>::chars
  %27 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h14f269f24ad22348E"(ptr align 1 %s.0, i64 %s.1) #20
  %28 = extractvalue { ptr, ptr } %27, 0
  %29 = extractvalue { ptr, ptr } %27, 1
  store ptr %28, ptr %_43, align 8
  %30 = getelementptr inbounds i8, ptr %_43, i64 8
  store ptr %29, ptr %30, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_41 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr align 8 %_43, i64 %i) #20
  store i32 %_41, ptr %self.i27, align 4
  %31 = load i32, ptr %self.i27, align 4
  %32 = icmp eq i32 %31, 1114112
  %_2.i28 = select i1 %32, i64 0, i64 1
  %33 = trunc nuw i64 %_2.i28 to i1
  br i1 %33, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit31", label %bb2.i29

bb2.i29:                                          ; preds = %bb25
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_499e0e64e04fd9362109a357d525c88b) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit31": ; preds = %bb25
  %val.i30 = load i32, ptr %self.i27, align 4
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i30, i32 48)
  %_45.0 = extractvalue { i32, i1 } %34, 0
  %_45.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_45.1, label %panic2, label %bb30

bb26:                                             ; preds = %bb23
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb30:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit31"
  %35 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_45.0, i32 10)
  %_46.0 = extractvalue { i32, i1 } %35, 0
  %_46.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_46.1, label %panic3, label %bb31

panic2:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit31"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b14fc9dba3b2a2b78cc643f449744db8) #22
  unreachable

bb31:                                             ; preds = %bb30
; call core::str::<impl str>::chars
  %36 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h14f269f24ad22348E"(ptr align 1 %s.0, i64 %s.1) #20
  %37 = extractvalue { ptr, ptr } %36, 0
  %38 = extractvalue { ptr, ptr } %36, 1
  store ptr %37, ptr %_52, align 8
  %39 = getelementptr inbounds i8, ptr %_52, i64 8
  store ptr %38, ptr %39, align 8
  %_54.0 = add i64 %i, 1
  %_54.1 = icmp ult i64 %_54.0, %i
  br i1 %_54.1, label %panic4, label %bb33

panic3:                                           ; preds = %bb30
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b14fc9dba3b2a2b78cc643f449744db8) #22
  unreachable

bb33:                                             ; preds = %bb31
; call core::iter::traits::iterator::Iterator::nth
  %_50 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr align 8 %_52, i64 %_54.0) #20
  store i32 %_50, ptr %self.i22, align 4
  %40 = load i32, ptr %self.i22, align 4
  %41 = icmp eq i32 %40, 1114112
  %_2.i23 = select i1 %41, i64 0, i64 1
  %42 = trunc nuw i64 %_2.i23 to i1
  br i1 %42, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit26", label %bb2.i24

bb2.i24:                                          ; preds = %bb33
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_8c7edf45d0803e0c47fc7ed8c8bdc37a) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit26": ; preds = %bb33
  %val.i25 = load i32, ptr %self.i22, align 4
  %43 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i25, i32 48)
  %_56.0 = extractvalue { i32, i1 } %43, 0
  %_56.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_56.1, label %panic5, label %bb36

panic4:                                           ; preds = %bb31
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_baab956165b55f5aec4e25e378ffc730) #22
  unreachable

bb36:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit26"
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_46.0, i32 %_56.0)
  %_57.0 = extractvalue { i32, i1 } %44, 0
  %_57.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_57.1, label %panic6, label %bb37

panic5:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit26"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8264b93cee1862cec124624fb0328b8d) #22
  unreachable

bb37:                                             ; preds = %bb36
  %_62 = icmp eq i32 %_57.0, -2147483648
  %_63 = and i1 false, %_62
  br i1 %_63, label %panic7, label %bb39

panic6:                                           ; preds = %bb36
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b14fc9dba3b2a2b78cc643f449744db8) #22
  unreachable

bb39:                                             ; preds = %bb37
  %_59 = srem i32 %_57.0, 4
  %_58 = icmp eq i32 %_59, 0
  br i1 %_58, label %bb40, label %bb23

panic7:                                           ; preds = %bb37
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_97e59f721fc3c2481878691655122f0c) #22
  unreachable

bb40:                                             ; preds = %bb39
  %_65 = trunc i64 %i to i32
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_65, i32 1)
  %_66.0 = extractvalue { i32, i1 } %45, 0
  %_66.1 = extractvalue { i32, i1 } %45, 1
  br i1 %_66.1, label %panic8, label %bb41

bb41:                                             ; preds = %bb40
  %46 = load i32, ptr %count, align 4
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %46, i32 %_66.0)
  %_67.0 = extractvalue { i32, i1 } %47, 0
  %_67.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_67.1, label %panic9, label %bb42

panic8:                                           ; preds = %bb40
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f6ed8adfc5d6840a26f9c2516724bed4) #22
  unreachable

bb42:                                             ; preds = %bb41
  store i32 %_67.0, ptr %count, align 4
  br label %bb23

panic9:                                           ; preds = %bb41
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_008d3263cbd1280beafc3591cfe59805) #22
  unreachable

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit21"
; call core::str::<impl str>::chars
  %48 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h14f269f24ad22348E"(ptr align 1 %s.0, i64 %s.1) #20
  %49 = extractvalue { ptr, ptr } %48, 0
  %50 = extractvalue { ptr, ptr } %48, 1
  store ptr %49, ptr %_20, align 8
  %51 = getelementptr inbounds i8, ptr %_20, i64 8
  store ptr %50, ptr %51, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_18 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr align 8 %_20, i64 %i10) #20
  store i32 %_18, ptr %self.i12, align 4
  %52 = load i32, ptr %self.i12, align 4
  %53 = icmp eq i32 %52, 1114112
  %_2.i13 = select i1 %53, i64 0, i64 1
  %54 = trunc nuw i64 %_2.i13 to i1
  br i1 %54, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit16", label %bb2.i14

bb2.i14:                                          ; preds = %bb11
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_abd14b5b91c21ad71fb5c1eb6096cbcd) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit16": ; preds = %bb11
  %val.i15 = load i32, ptr %self.i12, align 4
  %_16 = icmp eq i32 %val.i15, 56
  br i1 %_16, label %bb19, label %bb15

bb19:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit", %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit16", %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit21"
  %55 = load i32, ptr %count, align 4
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %55, i32 1)
  %_26.0 = extractvalue { i32, i1 } %56, 0
  %_26.1 = extractvalue { i32, i1 } %56, 1
  br i1 %_26.1, label %panic11, label %bb20

bb15:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit16"
; call core::str::<impl str>::chars
  %57 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h14f269f24ad22348E"(ptr align 1 %s.0, i64 %s.1) #20
  %58 = extractvalue { ptr, ptr } %57, 0
  %59 = extractvalue { ptr, ptr } %57, 1
  store ptr %58, ptr %_25, align 8
  %60 = getelementptr inbounds i8, ptr %_25, i64 8
  store ptr %59, ptr %60, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_23 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr align 8 %_25, i64 %i10) #20
  store i32 %_23, ptr %self.i, align 4
  %61 = load i32, ptr %self.i, align 4
  %62 = icmp eq i32 %61, 1114112
  %_2.i = select i1 %62, i64 0, i64 1
  %63 = trunc nuw i64 %_2.i to i1
  br i1 %63, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb15
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_a66cad70a5f1b26a926bda80d0182092) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit": ; preds = %bb15
  %val.i = load i32, ptr %self.i, align 4
  %_21 = icmp eq i32 %val.i, 48
  br i1 %_21, label %bb19, label %bb3

bb20:                                             ; preds = %bb19
  store i32 %_26.0, ptr %count, align 4
  br label %bb3

panic11:                                          ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d525dc36737c9b5a258b9c6f7fa02fa0) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
