define i32 @f_gold(ptr align 1 %n.0, i64 %n.1) unnamed_addr #3 {
start:
  %self.i101 = alloca [4 x i8], align 4
  %self.i96 = alloca [4 x i8], align 4
  %self.i91 = alloca [4 x i8], align 4
  %self.i86 = alloca [4 x i8], align 4
  %self.i81 = alloca [4 x i8], align 4
  %self.i76 = alloca [4 x i8], align 4
  %self.i71 = alloca [4 x i8], align 4
  %self.i66 = alloca [4 x i8], align 4
  %self.i61 = alloca [4 x i8], align 4
  %self.i56 = alloca [4 x i8], align 4
  %self.i51 = alloca [4 x i8], align 4
  %self.i46 = alloca [4 x i8], align 4
  %self.i41 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_184 = alloca [16 x i8], align 8
  %_172 = alloca [16 x i8], align 8
  %_160 = alloca [16 x i8], align 8
  %_144 = alloca [16 x i8], align 8
  %_134 = alloca [16 x i8], align 8
  %_122 = alloca [16 x i8], align 8
  %_104 = alloca [16 x i8], align 8
  %_92 = alloca [16 x i8], align 8
  %_82 = alloca [16 x i8], align 8
  %_71 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %three_digit = alloca [4 x i8], align 4
  %_53 = alloca [16 x i8], align 8
  %_44 = alloca [16 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %len = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h4d56bc095769bff6E"(ptr align 1 %n.0, i64 %n.1) #20
  store i32 0, ptr %count, align 4
  %_4 = icmp eq i64 %len, 1
  br i1 %_4, label %bb2, label %bb10

bb10:                                             ; preds = %start
  %_16 = icmp eq i64 %len, 2
  br i1 %_16, label %bb11, label %bb12

bb2:                                              ; preds = %start
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  store ptr %1, ptr %_10, align 8
  %3 = getelementptr inbounds i8, ptr %_10, i64 8
  store ptr %2, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_8 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_10, i64 0) #20
  store i32 %_8, ptr %self.i, align 4
  %4 = load i32, ptr %self.i, align 4
  %5 = icmp eq i32 %4, 1114112
  %_2.i = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_2.i to i1
  br i1 %6, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb2
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_76c90879f448cf98f94768d9a8560b73) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit": ; preds = %bb2
  %val.i = load i32, ptr %self.i, align 4
  %_12.0 = sub i32 %val.i, 48
  %_12.1 = icmp ult i32 %val.i, 48
  br i1 %_12.1, label %panic40, label %bb6

bb12:                                             ; preds = %bb10
  %_69.0 = sub i64 %len, 2
  %_69.1 = icmp ult i64 %len, 2
  br i1 %_69.1, label %panic, label %bb41

bb11:                                             ; preds = %bb10
; call core::str::<impl str>::chars
  %7 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %8 = extractvalue { ptr, ptr } %7, 0
  %9 = extractvalue { ptr, ptr } %7, 1
  store ptr %8, ptr %_24, align 8
  %10 = getelementptr inbounds i8, ptr %_24, i64 8
  store ptr %9, ptr %10, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_22 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_24, i64 0) #20
  store i32 %_22, ptr %self.i56, align 4
  %11 = load i32, ptr %self.i56, align 4
  %12 = icmp eq i32 %11, 1114112
  %_2.i57 = select i1 %12, i64 0, i64 1
  %13 = trunc nuw i64 %_2.i57 to i1
  br i1 %13, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit60", label %bb2.i58

bb2.i58:                                          ; preds = %bb11
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_856e329d0de934281fdf439787c75f15) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit60": ; preds = %bb11
  %val.i59 = load i32, ptr %self.i56, align 4
  %_26.0 = sub i32 %val.i59, 48
  %_26.1 = icmp ult i32 %val.i59, 48
  br i1 %_26.1, label %panic30, label %bb16

bb41:                                             ; preds = %bb12
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hce3e70f30953115fE"(i64 0, i64 %_69.0) #20
  %_66.0 = extractvalue { i64, i64 } %14, 0
  %_66.1 = extractvalue { i64, i64 } %14, 1
  store i64 %_66.0, ptr %iter, align 8
  %15 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_66.1, ptr %15, align 8
  br label %bb43

panic:                                            ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d784fec8fdd0f6085bc746211a8b1f0e) #22
  unreachable

bb43:                                             ; preds = %bb68, %bb65, %bb41
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd0dd413538bc633bE"(ptr align 8 %iter) #20
  %17 = extractvalue { i64, i64 } %16, 0
  %18 = extractvalue { i64, i64 } %16, 1
  store i64 %17, ptr %_71, align 8
  %19 = getelementptr inbounds i8, ptr %_71, i64 8
  store i64 %18, ptr %19, align 8
  %_73 = load i64, ptr %_71, align 8
  %20 = getelementptr inbounds i8, ptr %_71, i64 8
  %21 = load i64, ptr %20, align 8
  %22 = trunc nuw i64 %_73 to i1
  br i1 %22, label %bb46, label %bb47

bb46:                                             ; preds = %bb43
  %23 = getelementptr inbounds i8, ptr %_71, i64 8
  %i = load i64, ptr %23, align 8
; call core::str::<impl str>::chars
  %24 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %25 = extractvalue { ptr, ptr } %24, 0
  %26 = extractvalue { ptr, ptr } %24, 1
  store ptr %25, ptr %_82, align 8
  %27 = getelementptr inbounds i8, ptr %_82, i64 8
  store ptr %26, ptr %27, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_80 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_82, i64 %i) #20
  store i32 %_80, ptr %self.i71, align 4
  %28 = load i32, ptr %self.i71, align 4
  %29 = icmp eq i32 %28, 1114112
  %_2.i72 = select i1 %29, i64 0, i64 1
  %30 = trunc nuw i64 %_2.i72 to i1
  br i1 %30, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit75", label %bb2.i73

bb2.i73:                                          ; preds = %bb46
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_07ca4f0b52fc90b237596b549884eeaf) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit75": ; preds = %bb46
  %val.i74 = load i32, ptr %self.i71, align 4
  %_84.0 = sub i32 %val.i74, 48
  %_84.1 = icmp ult i32 %val.i74, 48
  br i1 %_84.1, label %panic20, label %bb51

bb47:                                             ; preds = %bb43
; call core::str::<impl str>::chars
  %31 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %32 = extractvalue { ptr, ptr } %31, 0
  %33 = extractvalue { ptr, ptr } %31, 1
  store ptr %32, ptr %_122, align 8
  %34 = getelementptr inbounds i8, ptr %_122, i64 8
  store ptr %33, ptr %34, align 8
  %_124.0 = sub i64 %len, 1
  %_124.1 = icmp ult i64 %len, 1
  br i1 %_124.1, label %panic1, label %bb70

bb70:                                             ; preds = %bb47
; call core::iter::traits::iterator::Iterator::nth
  %_120 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_122, i64 %_124.0) #20
  store i32 %_120, ptr %self.i101, align 4
  %35 = load i32, ptr %self.i101, align 4
  %36 = icmp eq i32 %35, 1114112
  %_2.i102 = select i1 %36, i64 0, i64 1
  %37 = trunc nuw i64 %_2.i102 to i1
  br i1 %37, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit105", label %bb2.i103

bb2.i103:                                         ; preds = %bb70
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_661e0ec82ec133bd588f4060f0269cb9) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit105": ; preds = %bb70
  %val.i104 = load i32, ptr %self.i101, align 4
  %_126.0 = sub i32 %val.i104, 48
  %_126.1 = icmp ult i32 %val.i104, 48
  br i1 %_126.1, label %panic2, label %bb73

panic1:                                           ; preds = %bb47
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_032bcfbba334e85259050f9c303dcb7e) #22
  unreachable

bb73:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit105"
  %38 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_126.0, i32 100)
  %_127.0 = extractvalue { i32, i1 } %38, 0
  %_127.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_127.1, label %panic3, label %bb74

panic2:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit105"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b92f9679df2db273e50233dfc2f34ef1) #22
  unreachable

bb74:                                             ; preds = %bb73
; call core::str::<impl str>::chars
  %39 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %40 = extractvalue { ptr, ptr } %39, 0
  %41 = extractvalue { ptr, ptr } %39, 1
  store ptr %40, ptr %_134, align 8
  %42 = getelementptr inbounds i8, ptr %_134, i64 8
  store ptr %41, ptr %42, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_132 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_134, i64 0) #20
  store i32 %_132, ptr %self.i96, align 4
  %43 = load i32, ptr %self.i96, align 4
  %44 = icmp eq i32 %43, 1114112
  %_2.i97 = select i1 %44, i64 0, i64 1
  %45 = trunc nuw i64 %_2.i97 to i1
  br i1 %45, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit100", label %bb2.i98

bb2.i98:                                          ; preds = %bb74
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_6c7a754ecef0313288ee42bcfa0b9cb0) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit100": ; preds = %bb74
  %val.i99 = load i32, ptr %self.i96, align 4
  %_136.0 = sub i32 %val.i99, 48
  %_136.1 = icmp ult i32 %val.i99, 48
  br i1 %_136.1, label %panic4, label %bb78

panic3:                                           ; preds = %bb73
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b92f9679df2db273e50233dfc2f34ef1) #22
  unreachable

bb78:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit100"
  %46 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_136.0, i32 10)
  %_137.0 = extractvalue { i32, i1 } %46, 0
  %_137.1 = extractvalue { i32, i1 } %46, 1
  br i1 %_137.1, label %panic5, label %bb79

panic4:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit100"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_37c6d4e296d5a92bd5383929817a61c5) #22
  unreachable

bb79:                                             ; preds = %bb78
  %_138.0 = add i32 %_127.0, %_137.0
  %_138.1 = icmp ult i32 %_138.0, %_127.0
  br i1 %_138.1, label %panic6, label %bb80

panic5:                                           ; preds = %bb78
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_37c6d4e296d5a92bd5383929817a61c5) #22
  unreachable

bb80:                                             ; preds = %bb79
; call core::str::<impl str>::chars
  %47 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %48 = extractvalue { ptr, ptr } %47, 0
  %49 = extractvalue { ptr, ptr } %47, 1
  store ptr %48, ptr %_144, align 8
  %50 = getelementptr inbounds i8, ptr %_144, i64 8
  store ptr %49, ptr %50, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_142 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_144, i64 1) #20
  store i32 %_142, ptr %self.i91, align 4
  %51 = load i32, ptr %self.i91, align 4
  %52 = icmp eq i32 %51, 1114112
  %_2.i92 = select i1 %52, i64 0, i64 1
  %53 = trunc nuw i64 %_2.i92 to i1
  br i1 %53, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit95", label %bb2.i93

bb2.i93:                                          ; preds = %bb80
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_1bbaccfdb315ab810732e2cd9a91233f) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit95": ; preds = %bb80
  %val.i94 = load i32, ptr %self.i91, align 4
  %_146.0 = sub i32 %val.i94, 48
  %_146.1 = icmp ult i32 %val.i94, 48
  br i1 %_146.1, label %panic7, label %bb84

panic6:                                           ; preds = %bb79
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b92f9679df2db273e50233dfc2f34ef1) #22
  unreachable

bb84:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit95"
  %_147.0 = add i32 %_138.0, %_146.0
  %_147.1 = icmp ult i32 %_147.0, %_138.0
  br i1 %_147.1, label %panic8, label %bb85

panic7:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit95"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6b86b6ef43ba0fae83c95b6e3981486f) #22
  unreachable

bb85:                                             ; preds = %bb84
  store i32 %_147.0, ptr %three_digit, align 4
  %_150 = load i32, ptr %three_digit, align 4
  %_149 = urem i32 %_150, 8
  %_148 = icmp eq i32 %_149, 0
  br i1 %_148, label %bb87, label %bb89

panic8:                                           ; preds = %bb84
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b92f9679df2db273e50233dfc2f34ef1) #22
  unreachable

bb89:                                             ; preds = %bb88, %bb85
; call core::str::<impl str>::chars
  %54 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %55 = extractvalue { ptr, ptr } %54, 0
  %56 = extractvalue { ptr, ptr } %54, 1
  store ptr %55, ptr %_160, align 8
  %57 = getelementptr inbounds i8, ptr %_160, i64 8
  store ptr %56, ptr %57, align 8
  %_162.0 = sub i64 %len, 2
  %_162.1 = icmp ult i64 %len, 2
  br i1 %_162.1, label %panic10, label %bb91

bb87:                                             ; preds = %bb85
  %58 = load i32, ptr %count, align 4
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %58, i32 1)
  %_152.0 = extractvalue { i32, i1 } %59, 0
  %_152.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_152.1, label %panic9, label %bb88

bb88:                                             ; preds = %bb87
  store i32 %_152.0, ptr %count, align 4
  br label %bb89

panic9:                                           ; preds = %bb87
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bb3d912daf0062eab83a09658812ea45) #22
  unreachable

bb91:                                             ; preds = %bb89
; call core::iter::traits::iterator::Iterator::nth
  %_158 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_160, i64 %_162.0) #20
  store i32 %_158, ptr %self.i86, align 4
  %60 = load i32, ptr %self.i86, align 4
  %61 = icmp eq i32 %60, 1114112
  %_2.i87 = select i1 %61, i64 0, i64 1
  %62 = trunc nuw i64 %_2.i87 to i1
  br i1 %62, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit90", label %bb2.i88

bb2.i88:                                          ; preds = %bb91
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_503f66f445a31a6214df48612252c5b7) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit90": ; preds = %bb91
  %val.i89 = load i32, ptr %self.i86, align 4
  %_164.0 = sub i32 %val.i89, 48
  %_164.1 = icmp ult i32 %val.i89, 48
  br i1 %_164.1, label %panic11, label %bb94

panic10:                                          ; preds = %bb89
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_48e4fac82143d412bc826408fbdd02b1) #22
  unreachable

bb94:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit90"
  %63 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_164.0, i32 100)
  %_165.0 = extractvalue { i32, i1 } %63, 0
  %_165.1 = extractvalue { i32, i1 } %63, 1
  br i1 %_165.1, label %panic12, label %bb95

panic11:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit90"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6271a9a0ece2fd24a915cf1a35cdbf1a) #22
  unreachable

bb95:                                             ; preds = %bb94
; call core::str::<impl str>::chars
  %64 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %65 = extractvalue { ptr, ptr } %64, 0
  %66 = extractvalue { ptr, ptr } %64, 1
  store ptr %65, ptr %_172, align 8
  %67 = getelementptr inbounds i8, ptr %_172, i64 8
  store ptr %66, ptr %67, align 8
  %_174.0 = sub i64 %len, 1
  %_174.1 = icmp ult i64 %len, 1
  br i1 %_174.1, label %panic13, label %bb97

panic12:                                          ; preds = %bb94
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6271a9a0ece2fd24a915cf1a35cdbf1a) #22
  unreachable

bb97:                                             ; preds = %bb95
; call core::iter::traits::iterator::Iterator::nth
  %_170 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_172, i64 %_174.0) #20
  store i32 %_170, ptr %self.i81, align 4
  %68 = load i32, ptr %self.i81, align 4
  %69 = icmp eq i32 %68, 1114112
  %_2.i82 = select i1 %69, i64 0, i64 1
  %70 = trunc nuw i64 %_2.i82 to i1
  br i1 %70, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit85", label %bb2.i83

bb2.i83:                                          ; preds = %bb97
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_318f256ea602318612a34d4824b5db38) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit85": ; preds = %bb97
  %val.i84 = load i32, ptr %self.i81, align 4
  %_176.0 = sub i32 %val.i84, 48
  %_176.1 = icmp ult i32 %val.i84, 48
  br i1 %_176.1, label %panic14, label %bb100

panic13:                                          ; preds = %bb95
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_073d9406f055fb3a677626985240933d) #22
  unreachable

bb100:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit85"
  %71 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_176.0, i32 10)
  %_177.0 = extractvalue { i32, i1 } %71, 0
  %_177.1 = extractvalue { i32, i1 } %71, 1
  br i1 %_177.1, label %panic15, label %bb101

panic14:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit85"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8c99d00a7ee30882148a195a0a7b3a10) #22
  unreachable

bb101:                                            ; preds = %bb100
  %_178.0 = add i32 %_165.0, %_177.0
  %_178.1 = icmp ult i32 %_178.0, %_165.0
  br i1 %_178.1, label %panic16, label %bb102

panic15:                                          ; preds = %bb100
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8c99d00a7ee30882148a195a0a7b3a10) #22
  unreachable

bb102:                                            ; preds = %bb101
; call core::str::<impl str>::chars
  %72 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %73 = extractvalue { ptr, ptr } %72, 0
  %74 = extractvalue { ptr, ptr } %72, 1
  store ptr %73, ptr %_184, align 8
  %75 = getelementptr inbounds i8, ptr %_184, i64 8
  store ptr %74, ptr %75, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_182 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_184, i64 0) #20
  store i32 %_182, ptr %self.i76, align 4
  %76 = load i32, ptr %self.i76, align 4
  %77 = icmp eq i32 %76, 1114112
  %_2.i77 = select i1 %77, i64 0, i64 1
  %78 = trunc nuw i64 %_2.i77 to i1
  br i1 %78, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit80", label %bb2.i78

bb2.i78:                                          ; preds = %bb102
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_3f22e5e78c67a355fc5aed216c4f1637) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit80": ; preds = %bb102
  %val.i79 = load i32, ptr %self.i76, align 4
  %_186.0 = sub i32 %val.i79, 48
  %_186.1 = icmp ult i32 %val.i79, 48
  br i1 %_186.1, label %panic17, label %bb106

panic16:                                          ; preds = %bb101
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6271a9a0ece2fd24a915cf1a35cdbf1a) #22
  unreachable

bb106:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit80"
  %_187.0 = add i32 %_178.0, %_186.0
  %_187.1 = icmp ult i32 %_187.0, %_178.0
  br i1 %_187.1, label %panic18, label %bb107

panic17:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit80"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7848e78e222af5b5f2bc954160941c21) #22
  unreachable

bb107:                                            ; preds = %bb106
  store i32 %_187.0, ptr %three_digit, align 4
  %_190 = load i32, ptr %three_digit, align 4
  %_189 = urem i32 %_190, 8
  %_188 = icmp eq i32 %_189, 0
  br i1 %_188, label %bb109, label %bb111

panic18:                                          ; preds = %bb106
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6271a9a0ece2fd24a915cf1a35cdbf1a) #22
  unreachable

bb111:                                            ; preds = %bb110, %bb107
  %79 = load i32, ptr %count, align 4
  store i32 %79, ptr %_0, align 4
  br label %bb112

bb109:                                            ; preds = %bb107
  %80 = load i32, ptr %count, align 4
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %80, i32 1)
  %_192.0 = extractvalue { i32, i1 } %81, 0
  %_192.1 = extractvalue { i32, i1 } %81, 1
  br i1 %_192.1, label %panic19, label %bb110

bb110:                                            ; preds = %bb109
  store i32 %_192.0, ptr %count, align 4
  br label %bb111

panic19:                                          ; preds = %bb109
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4bbbb2c67921dc11f60da31ad7cd63d8) #22
  unreachable

bb112:                                            ; preds = %bb8, %bb9, %bb40, %bb111
  %82 = load i32, ptr %_0, align 4
  ret i32 %82

bb51:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit75"
  %83 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_84.0, i32 100)
  %_85.0 = extractvalue { i32, i1 } %83, 0
  %_85.1 = extractvalue { i32, i1 } %83, 1
  br i1 %_85.1, label %panic21, label %bb52

panic20:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit75"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c69e79b76357c7db34cecb890d0eef9a) #22
  unreachable

bb52:                                             ; preds = %bb51
; call core::str::<impl str>::chars
  %84 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %85 = extractvalue { ptr, ptr } %84, 0
  %86 = extractvalue { ptr, ptr } %84, 1
  store ptr %85, ptr %_92, align 8
  %87 = getelementptr inbounds i8, ptr %_92, i64 8
  store ptr %86, ptr %87, align 8
  %_94.0 = add i64 %i, 1
  %_94.1 = icmp ult i64 %_94.0, %i
  br i1 %_94.1, label %panic22, label %bb54

panic21:                                          ; preds = %bb51
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c69e79b76357c7db34cecb890d0eef9a) #22
  unreachable

bb54:                                             ; preds = %bb52
; call core::iter::traits::iterator::Iterator::nth
  %_90 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_92, i64 %_94.0) #20
  store i32 %_90, ptr %self.i66, align 4
  %88 = load i32, ptr %self.i66, align 4
  %89 = icmp eq i32 %88, 1114112
  %_2.i67 = select i1 %89, i64 0, i64 1
  %90 = trunc nuw i64 %_2.i67 to i1
  br i1 %90, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit70", label %bb2.i68

bb2.i68:                                          ; preds = %bb54
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_7717f7dc00ceaf31fc155c664372667c) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit70": ; preds = %bb54
  %val.i69 = load i32, ptr %self.i66, align 4
  %_96.0 = sub i32 %val.i69, 48
  %_96.1 = icmp ult i32 %val.i69, 48
  br i1 %_96.1, label %panic23, label %bb57

panic22:                                          ; preds = %bb52
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_92b505ada39d7c105297fa8ef664c2b8) #22
  unreachable

bb57:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit70"
  %91 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_96.0, i32 10)
  %_97.0 = extractvalue { i32, i1 } %91, 0
  %_97.1 = extractvalue { i32, i1 } %91, 1
  br i1 %_97.1, label %panic24, label %bb58

panic23:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit70"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_94191de5b25b321ae3c4c74fa09d92b2) #22
  unreachable

bb58:                                             ; preds = %bb57
  %_98.0 = add i32 %_85.0, %_97.0
  %_98.1 = icmp ult i32 %_98.0, %_85.0
  br i1 %_98.1, label %panic25, label %bb59

panic24:                                          ; preds = %bb57
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_94191de5b25b321ae3c4c74fa09d92b2) #22
  unreachable

bb59:                                             ; preds = %bb58
; call core::str::<impl str>::chars
  %92 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %93 = extractvalue { ptr, ptr } %92, 0
  %94 = extractvalue { ptr, ptr } %92, 1
  store ptr %93, ptr %_104, align 8
  %95 = getelementptr inbounds i8, ptr %_104, i64 8
  store ptr %94, ptr %95, align 8
  %_106.0 = add i64 %i, 2
  %_106.1 = icmp ult i64 %_106.0, %i
  br i1 %_106.1, label %panic26, label %bb61

panic25:                                          ; preds = %bb58
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c69e79b76357c7db34cecb890d0eef9a) #22
  unreachable

bb61:                                             ; preds = %bb59
; call core::iter::traits::iterator::Iterator::nth
  %_102 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_104, i64 %_106.0) #20
  store i32 %_102, ptr %self.i61, align 4
  %96 = load i32, ptr %self.i61, align 4
  %97 = icmp eq i32 %96, 1114112
  %_2.i62 = select i1 %97, i64 0, i64 1
  %98 = trunc nuw i64 %_2.i62 to i1
  br i1 %98, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit65", label %bb2.i63

bb2.i63:                                          ; preds = %bb61
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_66b380e28b21d35f2e453f5bd91ffdbf) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit65": ; preds = %bb61
  %val.i64 = load i32, ptr %self.i61, align 4
  %_108.0 = sub i32 %val.i64, 48
  %_108.1 = icmp ult i32 %val.i64, 48
  br i1 %_108.1, label %panic27, label %bb64

panic26:                                          ; preds = %bb59
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_91b169c8007c2495330cf26e48838154) #22
  unreachable

bb64:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit65"
  %_109.0 = add i32 %_98.0, %_108.0
  %_109.1 = icmp ult i32 %_109.0, %_98.0
  br i1 %_109.1, label %panic28, label %bb65

panic27:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit65"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f7745dadc51f03d4cacbbf00cceae023) #22
  unreachable

bb65:                                             ; preds = %bb64
  store i32 %_109.0, ptr %three_digit, align 4
  %_112 = load i32, ptr %three_digit, align 4
  %_111 = urem i32 %_112, 8
  %_110 = icmp eq i32 %_111, 0
  br i1 %_110, label %bb67, label %bb43

panic28:                                          ; preds = %bb64
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c69e79b76357c7db34cecb890d0eef9a) #22
  unreachable

bb67:                                             ; preds = %bb65
  %99 = load i32, ptr %count, align 4
  %100 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %99, i32 1)
  %_114.0 = extractvalue { i32, i1 } %100, 0
  %_114.1 = extractvalue { i32, i1 } %100, 1
  br i1 %_114.1, label %panic29, label %bb68

bb68:                                             ; preds = %bb67
  store i32 %_114.0, ptr %count, align 4
  br label %bb43

panic29:                                          ; preds = %bb67
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2d0434c0c040ead720ad1d41c2aea949) #22
  unreachable

bb45:                                             ; No predecessors!
  unreachable

bb16:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit60"
  %101 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_26.0, i32 10)
  %_27.0 = extractvalue { i32, i1 } %101, 0
  %_27.1 = extractvalue { i32, i1 } %101, 1
  br i1 %_27.1, label %panic31, label %bb17

panic30:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit60"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f1db689a8c908cccb9428c14e3ffe675) #22
  unreachable

bb17:                                             ; preds = %bb16
; call core::str::<impl str>::chars
  %102 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %103 = extractvalue { ptr, ptr } %102, 0
  %104 = extractvalue { ptr, ptr } %102, 1
  store ptr %103, ptr %_33, align 8
  %105 = getelementptr inbounds i8, ptr %_33, i64 8
  store ptr %104, ptr %105, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_31 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_33, i64 1) #20
  store i32 %_31, ptr %self.i51, align 4
  %106 = load i32, ptr %self.i51, align 4
  %107 = icmp eq i32 %106, 1114112
  %_2.i52 = select i1 %107, i64 0, i64 1
  %108 = trunc nuw i64 %_2.i52 to i1
  br i1 %108, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit55", label %bb2.i53

bb2.i53:                                          ; preds = %bb17
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_97bb1e267690345fb2d658ba3dc56f81) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit55": ; preds = %bb17
  %val.i54 = load i32, ptr %self.i51, align 4
  %_35.0 = sub i32 %val.i54, 48
  %_35.1 = icmp ult i32 %val.i54, 48
  br i1 %_35.1, label %panic32, label %bb21

panic31:                                          ; preds = %bb16
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_f1db689a8c908cccb9428c14e3ffe675) #22
  unreachable

bb21:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit55"
  %_36.0 = add i32 %_27.0, %_35.0
  %_36.1 = icmp ult i32 %_36.0, %_27.0
  br i1 %_36.1, label %panic33, label %bb22

panic32:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit55"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4a5d994a9e03515f4e5086cce70338ce) #22
  unreachable

bb22:                                             ; preds = %bb21
; call core::str::<impl str>::chars
  %109 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %110 = extractvalue { ptr, ptr } %109, 0
  %111 = extractvalue { ptr, ptr } %109, 1
  store ptr %110, ptr %_44, align 8
  %112 = getelementptr inbounds i8, ptr %_44, i64 8
  store ptr %111, ptr %112, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_42 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_44, i64 1) #20
  store i32 %_42, ptr %self.i46, align 4
  %113 = load i32, ptr %self.i46, align 4
  %114 = icmp eq i32 %113, 1114112
  %_2.i47 = select i1 %114, i64 0, i64 1
  %115 = trunc nuw i64 %_2.i47 to i1
  br i1 %115, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit50", label %bb2.i48

bb2.i48:                                          ; preds = %bb22
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_5122b0ec80278e339004b2fa58103191) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit50": ; preds = %bb22
  %val.i49 = load i32, ptr %self.i46, align 4
  %_46.0 = sub i32 %val.i49, 48
  %_46.1 = icmp ult i32 %val.i49, 48
  br i1 %_46.1, label %panic34, label %bb26

panic33:                                          ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f1db689a8c908cccb9428c14e3ffe675) #22
  unreachable

bb26:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit50"
  %116 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_46.0, i32 10)
  %_47.0 = extractvalue { i32, i1 } %116, 0
  %_47.1 = extractvalue { i32, i1 } %116, 1
  br i1 %_47.1, label %panic35, label %bb27

panic34:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit50"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a6baf3ab44c6a1560728e7c4b2fa3bec) #22
  unreachable

bb27:                                             ; preds = %bb26
; call core::str::<impl str>::chars
  %117 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %n.0, i64 %n.1) #20
  %118 = extractvalue { ptr, ptr } %117, 0
  %119 = extractvalue { ptr, ptr } %117, 1
  store ptr %118, ptr %_53, align 8
  %120 = getelementptr inbounds i8, ptr %_53, i64 8
  store ptr %119, ptr %120, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_51 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_53, i64 0) #20
  store i32 %_51, ptr %self.i41, align 4
  %121 = load i32, ptr %self.i41, align 4
  %122 = icmp eq i32 %121, 1114112
  %_2.i42 = select i1 %122, i64 0, i64 1
  %123 = trunc nuw i64 %_2.i42 to i1
  br i1 %123, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit45", label %bb2.i43

bb2.i43:                                          ; preds = %bb27
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_c2d26314fbe9e960dd119625bdf6e0b7) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit45": ; preds = %bb27
  %val.i44 = load i32, ptr %self.i41, align 4
  %_55.0 = sub i32 %val.i44, 48
  %_55.1 = icmp ult i32 %val.i44, 48
  br i1 %_55.1, label %panic36, label %bb31

panic35:                                          ; preds = %bb26
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a6baf3ab44c6a1560728e7c4b2fa3bec) #22
  unreachable

bb31:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit45"
  %_56.0 = add i32 %_47.0, %_55.0
  %_56.1 = icmp ult i32 %_56.0, %_47.0
  br i1 %_56.1, label %panic37, label %bb32

panic36:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit45"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_920dc3c0441b43320440f875e4905283) #22
  unreachable

bb32:                                             ; preds = %bb31
  %_58 = urem i32 %_36.0, 8
  %_57 = icmp eq i32 %_58, 0
  br i1 %_57, label %bb34, label %bb36

panic37:                                          ; preds = %bb31
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a6baf3ab44c6a1560728e7c4b2fa3bec) #22
  unreachable

bb36:                                             ; preds = %bb35, %bb32
  %_62 = urem i32 %_56.0, 8
  %_61 = icmp eq i32 %_62, 0
  br i1 %_61, label %bb38, label %bb40

bb34:                                             ; preds = %bb32
  %124 = load i32, ptr %count, align 4
  %125 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %124, i32 1)
  %_60.0 = extractvalue { i32, i1 } %125, 0
  %_60.1 = extractvalue { i32, i1 } %125, 1
  br i1 %_60.1, label %panic38, label %bb35

bb35:                                             ; preds = %bb34
  store i32 %_60.0, ptr %count, align 4
  br label %bb36

panic38:                                          ; preds = %bb34
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7f46479bcf12fbbf8b401fc548b3c271) #22
  unreachable

bb40:                                             ; preds = %bb39, %bb36
  %126 = load i32, ptr %count, align 4
  store i32 %126, ptr %_0, align 4
  br label %bb112

bb38:                                             ; preds = %bb36
  %127 = load i32, ptr %count, align 4
  %128 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %127, i32 1)
  %_64.0 = extractvalue { i32, i1 } %128, 0
  %_64.1 = extractvalue { i32, i1 } %128, 1
  br i1 %_64.1, label %panic39, label %bb39

bb39:                                             ; preds = %bb38
  store i32 %_64.0, ptr %count, align 4
  br label %bb40

panic39:                                          ; preds = %bb38
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_190b35536e6c3d2c7b7f6ac5a05477bc) #22
  unreachable

bb6:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit"
  %_14 = urem i32 %_12.0, 8
  %_13 = icmp eq i32 %_14, 0
  br i1 %_13, label %bb8, label %bb9

panic40:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0b867a4e4a1b15749a642b204f482ba0) #22
  unreachable

bb9:                                              ; preds = %bb6
  store i32 0, ptr %_0, align 4
  br label %bb112

bb8:                                              ; preds = %bb6
  store i32 1, ptr %_0, align 4
  br label %bb112
}
