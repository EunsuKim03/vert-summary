define i32 @f_gold(ptr align 8 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i119 = alloca [4 x i8], align 4
  %self.i113 = alloca [4 x i8], align 4
  %self.i107 = alloca [4 x i8], align 4
  %self.i101 = alloca [4 x i8], align 4
  %self.i95 = alloca [4 x i8], align 4
  %self.i89 = alloca [4 x i8], align 4
  %self.i83 = alloca [4 x i8], align 4
  %self.i77 = alloca [4 x i8], align 4
  %self.i71 = alloca [4 x i8], align 4
  %self.i65 = alloca [4 x i8], align 4
  %self.i59 = alloca [4 x i8], align 4
  %self.i53 = alloca [4 x i8], align 4
  %self.i47 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_226 = alloca [16 x i8], align 8
  %_212 = alloca [16 x i8], align 8
  %_198 = alloca [16 x i8], align 8
  %_177 = alloca [16 x i8], align 8
  %_165 = alloca [16 x i8], align 8
  %_151 = alloca [16 x i8], align 8
  %_128 = alloca [16 x i8], align 8
  %_114 = alloca [16 x i8], align 8
  %_102 = alloca [16 x i8], align 8
  %_91 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %three_digit = alloca [4 x i8], align 4
  %_65 = alloca [16 x i8], align 8
  %_54 = alloca [16 x i8], align 8
  %_41 = alloca [16 x i8], align 8
  %_30 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %len = invoke i64 @_ZN5alloc6string6String3len17hb6c8410064d72186E(ptr align 8 %n)
          to label %bb1 unwind label %cleanup

bb134:                                            ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha56a270c792f55cfE"(ptr align 8 %n) #21
          to label %bb135 unwind label %terminate

cleanup:                                          ; preds = %bb2.i121, %bb2.i115, %bb2.i109, %bb2.i103, %bb2.i97, %bb2.i91, %bb2.i85, %bb2.i79, %bb2.i73, %bb2.i67, %bb2.i61, %bb2.i55, %bb2.i49, %bb2.i, %panic46, %panic45, %bb4, %bb3, %bb2, %panic44, %panic43, %panic42, %panic41, %panic40, %panic39, %bb34, %bb33, %bb32, %panic38, %panic37, %bb28, %bb27, %bb26, %panic36, %panic35, %bb22, %bb21, %bb20, %panic34, %panic33, %bb16, %bb15, %bb13, %panic32, %panic31, %panic30, %panic29, %bb72, %panic28, %bb70, %bb69, %panic27, %panic26, %panic25, %bb64, %panic24, %bb62, %bb61, %panic23, %panic22, %bb57, %bb56, %bb54, %panic21, %panic20, %panic19, %panic18, %bb122, %bb121, %bb120, %panic17, %panic16, %panic15, %bb115, %panic14, %bb113, %bb112, %panic13, %panic12, %bb108, %panic11, %bb106, %bb105, %panic10, %panic9, %panic8, %panic7, %bb96, %bb95, %bb94, %panic6, %panic5, %panic4, %bb89, %bb88, %bb87, %panic3, %panic2, %bb83, %panic1, %bb81, %bb55, %bb51, %bb49, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb134

bb1:                                              ; preds = %start
  store i32 0, ptr %count, align 4
  %_5 = icmp eq i64 %len, 1
  br i1 %_5, label %bb2, label %bb12

bb12:                                             ; preds = %bb1
  %_22 = icmp eq i64 %len, 2
  br i1 %_22, label %bb13, label %bb14

bb2:                                              ; preds = %bb1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb3 unwind label %cleanup

bb14:                                             ; preds = %bb12
  %_89.0 = sub i64 %len, 2
  %_89.1 = icmp ult i64 %len, 2
  br i1 %_89.1, label %panic, label %bb49

bb13:                                             ; preds = %bb12
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %6 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb15 unwind label %cleanup

bb49:                                             ; preds = %bb14
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hce3e70f30953115fE"(i64 0, i64 %_89.0)
          to label %bb50 unwind label %cleanup

panic:                                            ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e5007627cb086c347afacd0a4d942fef) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic46, %panic45, %panic44, %panic43, %panic42, %panic41, %panic40, %panic39, %panic38, %panic37, %panic36, %panic35, %panic34, %panic33, %panic32, %panic31, %panic30, %panic29, %panic28, %panic27, %panic26, %panic25, %panic24, %panic23, %panic22, %panic21, %panic20, %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb50:                                             ; preds = %bb49
  %_86.0 = extractvalue { i64, i64 } %7, 0
  %_86.1 = extractvalue { i64, i64 } %7, 1
  store i64 %_86.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_86.1, ptr %8, align 8
  br label %bb51

bb51:                                             ; preds = %bb80, %bb78, %bb50
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd0dd413538bc633bE"(ptr align 8 %iter)
          to label %bb52 unwind label %cleanup

bb52:                                             ; preds = %bb51
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_91, align 8
  %12 = getelementptr inbounds i8, ptr %_91, i64 8
  store i64 %11, ptr %12, align 8
  %_93 = load i64, ptr %_91, align 8
  %13 = getelementptr inbounds i8, ptr %_91, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_93 to i1
  br i1 %15, label %bb54, label %bb55

bb54:                                             ; preds = %bb52
  %16 = getelementptr inbounds i8, ptr %_91, i64 8
  %i = load i64, ptr %16, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %17 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb56 unwind label %cleanup

bb55:                                             ; preds = %bb52
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %18 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb81 unwind label %cleanup

bb81:                                             ; preds = %bb55
  %_152.0 = extractvalue { ptr, i64 } %18, 0
  %_152.1 = extractvalue { ptr, i64 } %18, 1
; invoke core::str::<impl str>::chars
  %19 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_152.0, i64 %_152.1)
          to label %bb82 unwind label %cleanup

bb82:                                             ; preds = %bb81
  %20 = extractvalue { ptr, ptr } %19, 0
  %21 = extractvalue { ptr, ptr } %19, 1
  store ptr %20, ptr %_151, align 8
  %22 = getelementptr inbounds i8, ptr %_151, i64 8
  store ptr %21, ptr %22, align 8
  %_155.0 = sub i64 %len, 1
  %_155.1 = icmp ult i64 %len, 1
  br i1 %_155.1, label %panic1, label %bb83

bb83:                                             ; preds = %bb82
; invoke core::iter::traits::iterator::Iterator::nth
  %_149 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_151, i64 %_155.0)
          to label %bb84 unwind label %cleanup

panic1:                                           ; preds = %bb82
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_eabb96a36a22855635b7c2f90baa3222) #23
          to label %unreachable unwind label %cleanup

bb84:                                             ; preds = %bb83
  store i32 %_149, ptr %self.i119, align 4
  %23 = load i32, ptr %self.i119, align 4
  %24 = icmp eq i32 %23, 1114112
  %_2.i120 = select i1 %24, i64 0, i64 1
  %25 = trunc nuw i64 %_2.i120 to i1
  br i1 %25, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit124", label %bb2.i121

bb2.i121:                                         ; preds = %bb84
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_aff04ca7ece2266b4e912ca2610a3fe7) #22
          to label %.noexc123 unwind label %cleanup

.noexc123:                                        ; preds = %bb2.i121
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit124": ; preds = %bb84
  %val.i122 = load i32, ptr %self.i119, align 4
  br label %bb85

bb85:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit124"
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i122, i32 48)
  %_157.0 = extractvalue { i32, i1 } %26, 0
  %_157.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_157.1, label %panic2, label %bb86

bb86:                                             ; preds = %bb85
  %27 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_157.0, i32 100)
  %_158.0 = extractvalue { i32, i1 } %27, 0
  %_158.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_158.1, label %panic3, label %bb87

panic2:                                           ; preds = %bb85
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d4b7aa63f29f7fde810b6bcd621fe424) #23
          to label %unreachable unwind label %cleanup

bb87:                                             ; preds = %bb86
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %28 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb88 unwind label %cleanup

panic3:                                           ; preds = %bb86
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d4b7aa63f29f7fde810b6bcd621fe424) #23
          to label %unreachable unwind label %cleanup

bb88:                                             ; preds = %bb87
  %_166.0 = extractvalue { ptr, i64 } %28, 0
  %_166.1 = extractvalue { ptr, i64 } %28, 1
; invoke core::str::<impl str>::chars
  %29 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_166.0, i64 %_166.1)
          to label %bb89 unwind label %cleanup

bb89:                                             ; preds = %bb88
  %30 = extractvalue { ptr, ptr } %29, 0
  %31 = extractvalue { ptr, ptr } %29, 1
  store ptr %30, ptr %_165, align 8
  %32 = getelementptr inbounds i8, ptr %_165, i64 8
  store ptr %31, ptr %32, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_163 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_165, i64 0)
          to label %bb90 unwind label %cleanup

bb90:                                             ; preds = %bb89
  store i32 %_163, ptr %self.i113, align 4
  %33 = load i32, ptr %self.i113, align 4
  %34 = icmp eq i32 %33, 1114112
  %_2.i114 = select i1 %34, i64 0, i64 1
  %35 = trunc nuw i64 %_2.i114 to i1
  br i1 %35, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit118", label %bb2.i115

bb2.i115:                                         ; preds = %bb90
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_76d73a58eed2b39d12bcc65fddb3dcf0) #22
          to label %.noexc117 unwind label %cleanup

.noexc117:                                        ; preds = %bb2.i115
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit118": ; preds = %bb90
  %val.i116 = load i32, ptr %self.i113, align 4
  br label %bb91

bb91:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit118"
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i116, i32 48)
  %_169.0 = extractvalue { i32, i1 } %36, 0
  %_169.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_169.1, label %panic4, label %bb92

bb92:                                             ; preds = %bb91
  %37 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_169.0, i32 10)
  %_170.0 = extractvalue { i32, i1 } %37, 0
  %_170.1 = extractvalue { i32, i1 } %37, 1
  br i1 %_170.1, label %panic5, label %bb93

panic4:                                           ; preds = %bb91
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a93e42903329d68ef84947981e88ccf3) #23
          to label %unreachable unwind label %cleanup

bb93:                                             ; preds = %bb92
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_158.0, i32 %_170.0)
  %_171.0 = extractvalue { i32, i1 } %38, 0
  %_171.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_171.1, label %panic6, label %bb94

panic5:                                           ; preds = %bb92
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a93e42903329d68ef84947981e88ccf3) #23
          to label %unreachable unwind label %cleanup

bb94:                                             ; preds = %bb93
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %39 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb95 unwind label %cleanup

panic6:                                           ; preds = %bb93
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d4b7aa63f29f7fde810b6bcd621fe424) #23
          to label %unreachable unwind label %cleanup

bb95:                                             ; preds = %bb94
  %_178.0 = extractvalue { ptr, i64 } %39, 0
  %_178.1 = extractvalue { ptr, i64 } %39, 1
; invoke core::str::<impl str>::chars
  %40 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_178.0, i64 %_178.1)
          to label %bb96 unwind label %cleanup

bb96:                                             ; preds = %bb95
  %41 = extractvalue { ptr, ptr } %40, 0
  %42 = extractvalue { ptr, ptr } %40, 1
  store ptr %41, ptr %_177, align 8
  %43 = getelementptr inbounds i8, ptr %_177, i64 8
  store ptr %42, ptr %43, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_175 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_177, i64 1)
          to label %bb97 unwind label %cleanup

bb97:                                             ; preds = %bb96
  store i32 %_175, ptr %self.i107, align 4
  %44 = load i32, ptr %self.i107, align 4
  %45 = icmp eq i32 %44, 1114112
  %_2.i108 = select i1 %45, i64 0, i64 1
  %46 = trunc nuw i64 %_2.i108 to i1
  br i1 %46, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit112", label %bb2.i109

bb2.i109:                                         ; preds = %bb97
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_a26379ff7ed3c4897352a8231dbc7da9) #22
          to label %.noexc111 unwind label %cleanup

.noexc111:                                        ; preds = %bb2.i109
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit112": ; preds = %bb97
  %val.i110 = load i32, ptr %self.i107, align 4
  br label %bb98

bb98:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit112"
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i110, i32 48)
  %_181.0 = extractvalue { i32, i1 } %47, 0
  %_181.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_181.1, label %panic7, label %bb99

bb99:                                             ; preds = %bb98
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_171.0, i32 %_181.0)
  %_182.0 = extractvalue { i32, i1 } %48, 0
  %_182.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_182.1, label %panic8, label %bb100

panic7:                                           ; preds = %bb98
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_703fdc83a1b29cd2bb65d2502fd402eb) #23
          to label %unreachable unwind label %cleanup

bb100:                                            ; preds = %bb99
  store i32 %_182.0, ptr %three_digit, align 4
  %_185 = load i32, ptr %three_digit, align 4
  br label %bb101

panic8:                                           ; preds = %bb99
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d4b7aa63f29f7fde810b6bcd621fe424) #23
          to label %unreachable unwind label %cleanup

bb101:                                            ; preds = %bb100
  %_188 = icmp eq i32 %_185, -2147483648
  %_189 = and i1 false, %_188
  br i1 %_189, label %panic9, label %bb102

bb102:                                            ; preds = %bb101
  %_184 = srem i32 %_185, 8
  %_183 = icmp eq i32 %_184, 0
  br i1 %_183, label %bb103, label %bb105

panic9:                                           ; preds = %bb101
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_01f6468677c603a8b0bf674f042bee34) #23
          to label %unreachable unwind label %cleanup

bb105:                                            ; preds = %bb104, %bb102
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %49 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb106 unwind label %cleanup

bb103:                                            ; preds = %bb102
  %50 = load i32, ptr %count, align 4
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %50, i32 1)
  %_190.0 = extractvalue { i32, i1 } %51, 0
  %_190.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_190.1, label %panic10, label %bb104

bb104:                                            ; preds = %bb103
  store i32 %_190.0, ptr %count, align 4
  br label %bb105

panic10:                                          ; preds = %bb103
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f50b10291210a51718b2d9271e38f156) #23
          to label %unreachable unwind label %cleanup

bb106:                                            ; preds = %bb105
  %_199.0 = extractvalue { ptr, i64 } %49, 0
  %_199.1 = extractvalue { ptr, i64 } %49, 1
; invoke core::str::<impl str>::chars
  %52 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_199.0, i64 %_199.1)
          to label %bb107 unwind label %cleanup

bb107:                                            ; preds = %bb106
  %53 = extractvalue { ptr, ptr } %52, 0
  %54 = extractvalue { ptr, ptr } %52, 1
  store ptr %53, ptr %_198, align 8
  %55 = getelementptr inbounds i8, ptr %_198, i64 8
  store ptr %54, ptr %55, align 8
  %_202.0 = sub i64 %len, 2
  %_202.1 = icmp ult i64 %len, 2
  br i1 %_202.1, label %panic11, label %bb108

bb108:                                            ; preds = %bb107
; invoke core::iter::traits::iterator::Iterator::nth
  %_196 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_198, i64 %_202.0)
          to label %bb109 unwind label %cleanup

panic11:                                          ; preds = %bb107
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b3eb3b6bc386206f9330dcdaefff0d1e) #23
          to label %unreachable unwind label %cleanup

bb109:                                            ; preds = %bb108
  store i32 %_196, ptr %self.i101, align 4
  %56 = load i32, ptr %self.i101, align 4
  %57 = icmp eq i32 %56, 1114112
  %_2.i102 = select i1 %57, i64 0, i64 1
  %58 = trunc nuw i64 %_2.i102 to i1
  br i1 %58, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit106", label %bb2.i103

bb2.i103:                                         ; preds = %bb109
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_5c186e71de15f38f7620dd99b769c1c3) #22
          to label %.noexc105 unwind label %cleanup

.noexc105:                                        ; preds = %bb2.i103
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit106": ; preds = %bb109
  %val.i104 = load i32, ptr %self.i101, align 4
  br label %bb110

bb110:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit106"
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i104, i32 48)
  %_204.0 = extractvalue { i32, i1 } %59, 0
  %_204.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_204.1, label %panic12, label %bb111

bb111:                                            ; preds = %bb110
  %60 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_204.0, i32 100)
  %_205.0 = extractvalue { i32, i1 } %60, 0
  %_205.1 = extractvalue { i32, i1 } %60, 1
  br i1 %_205.1, label %panic13, label %bb112

panic12:                                          ; preds = %bb110
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2f6605f2552368c445d6c7a30ad57772) #23
          to label %unreachable unwind label %cleanup

bb112:                                            ; preds = %bb111
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %61 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb113 unwind label %cleanup

panic13:                                          ; preds = %bb111
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2f6605f2552368c445d6c7a30ad57772) #23
          to label %unreachable unwind label %cleanup

bb113:                                            ; preds = %bb112
  %_213.0 = extractvalue { ptr, i64 } %61, 0
  %_213.1 = extractvalue { ptr, i64 } %61, 1
; invoke core::str::<impl str>::chars
  %62 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_213.0, i64 %_213.1)
          to label %bb114 unwind label %cleanup

bb114:                                            ; preds = %bb113
  %63 = extractvalue { ptr, ptr } %62, 0
  %64 = extractvalue { ptr, ptr } %62, 1
  store ptr %63, ptr %_212, align 8
  %65 = getelementptr inbounds i8, ptr %_212, i64 8
  store ptr %64, ptr %65, align 8
  %_216.0 = sub i64 %len, 1
  %_216.1 = icmp ult i64 %len, 1
  br i1 %_216.1, label %panic14, label %bb115

bb115:                                            ; preds = %bb114
; invoke core::iter::traits::iterator::Iterator::nth
  %_210 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_212, i64 %_216.0)
          to label %bb116 unwind label %cleanup

panic14:                                          ; preds = %bb114
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_04eb0a7a38350b9514a70bdc99009a3e) #23
          to label %unreachable unwind label %cleanup

bb116:                                            ; preds = %bb115
  store i32 %_210, ptr %self.i95, align 4
  %66 = load i32, ptr %self.i95, align 4
  %67 = icmp eq i32 %66, 1114112
  %_2.i96 = select i1 %67, i64 0, i64 1
  %68 = trunc nuw i64 %_2.i96 to i1
  br i1 %68, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit100", label %bb2.i97

bb2.i97:                                          ; preds = %bb116
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_5c64ffd5cf41e19f1a0a07197133a42e) #22
          to label %.noexc99 unwind label %cleanup

.noexc99:                                         ; preds = %bb2.i97
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit100": ; preds = %bb116
  %val.i98 = load i32, ptr %self.i95, align 4
  br label %bb117

bb117:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit100"
  %69 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i98, i32 48)
  %_218.0 = extractvalue { i32, i1 } %69, 0
  %_218.1 = extractvalue { i32, i1 } %69, 1
  br i1 %_218.1, label %panic15, label %bb118

bb118:                                            ; preds = %bb117
  %70 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_218.0, i32 10)
  %_219.0 = extractvalue { i32, i1 } %70, 0
  %_219.1 = extractvalue { i32, i1 } %70, 1
  br i1 %_219.1, label %panic16, label %bb119

panic15:                                          ; preds = %bb117
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1f31690c0593c10c6408d8a88fd166d6) #23
          to label %unreachable unwind label %cleanup

bb119:                                            ; preds = %bb118
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_205.0, i32 %_219.0)
  %_220.0 = extractvalue { i32, i1 } %71, 0
  %_220.1 = extractvalue { i32, i1 } %71, 1
  br i1 %_220.1, label %panic17, label %bb120

panic16:                                          ; preds = %bb118
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1f31690c0593c10c6408d8a88fd166d6) #23
          to label %unreachable unwind label %cleanup

bb120:                                            ; preds = %bb119
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %72 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb121 unwind label %cleanup

panic17:                                          ; preds = %bb119
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2f6605f2552368c445d6c7a30ad57772) #23
          to label %unreachable unwind label %cleanup

bb121:                                            ; preds = %bb120
  %_227.0 = extractvalue { ptr, i64 } %72, 0
  %_227.1 = extractvalue { ptr, i64 } %72, 1
; invoke core::str::<impl str>::chars
  %73 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_227.0, i64 %_227.1)
          to label %bb122 unwind label %cleanup

bb122:                                            ; preds = %bb121
  %74 = extractvalue { ptr, ptr } %73, 0
  %75 = extractvalue { ptr, ptr } %73, 1
  store ptr %74, ptr %_226, align 8
  %76 = getelementptr inbounds i8, ptr %_226, i64 8
  store ptr %75, ptr %76, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_224 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_226, i64 0)
          to label %bb123 unwind label %cleanup

bb123:                                            ; preds = %bb122
  store i32 %_224, ptr %self.i89, align 4
  %77 = load i32, ptr %self.i89, align 4
  %78 = icmp eq i32 %77, 1114112
  %_2.i90 = select i1 %78, i64 0, i64 1
  %79 = trunc nuw i64 %_2.i90 to i1
  br i1 %79, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit94", label %bb2.i91

bb2.i91:                                          ; preds = %bb123
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_cf4e2ad24a3eb23b6280279b1dd3f575) #22
          to label %.noexc93 unwind label %cleanup

.noexc93:                                         ; preds = %bb2.i91
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit94": ; preds = %bb123
  %val.i92 = load i32, ptr %self.i89, align 4
  br label %bb124

bb124:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit94"
  %80 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i92, i32 48)
  %_230.0 = extractvalue { i32, i1 } %80, 0
  %_230.1 = extractvalue { i32, i1 } %80, 1
  br i1 %_230.1, label %panic18, label %bb125

bb125:                                            ; preds = %bb124
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_220.0, i32 %_230.0)
  %_231.0 = extractvalue { i32, i1 } %81, 0
  %_231.1 = extractvalue { i32, i1 } %81, 1
  br i1 %_231.1, label %panic19, label %bb126

panic18:                                          ; preds = %bb124
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_10e19d74bad7b4a0541781c46ef85ffb) #23
          to label %unreachable unwind label %cleanup

bb126:                                            ; preds = %bb125
  store i32 %_231.0, ptr %three_digit, align 4
  %_234 = load i32, ptr %three_digit, align 4
  br label %bb127

panic19:                                          ; preds = %bb125
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2f6605f2552368c445d6c7a30ad57772) #23
          to label %unreachable unwind label %cleanup

bb127:                                            ; preds = %bb126
  %_237 = icmp eq i32 %_234, -2147483648
  %_238 = and i1 false, %_237
  br i1 %_238, label %panic20, label %bb128

bb128:                                            ; preds = %bb127
  %_233 = srem i32 %_234, 8
  %_232 = icmp eq i32 %_233, 0
  br i1 %_232, label %bb129, label %bb131

panic20:                                          ; preds = %bb127
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_3e8e87106706cb7dd50912bb1e0ba5c5) #23
          to label %unreachable unwind label %cleanup

bb131:                                            ; preds = %bb130, %bb128
  %82 = load i32, ptr %count, align 4
  store i32 %82, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha56a270c792f55cfE"(ptr align 8 %n)
  br label %bb133

bb129:                                            ; preds = %bb128
  %83 = load i32, ptr %count, align 4
  %84 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %83, i32 1)
  %_239.0 = extractvalue { i32, i1 } %84, 0
  %_239.1 = extractvalue { i32, i1 } %84, 1
  br i1 %_239.1, label %panic21, label %bb130

bb130:                                            ; preds = %bb129
  store i32 %_239.0, ptr %count, align 4
  br label %bb131

panic21:                                          ; preds = %bb129
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_26fa38099f9dca41bcbe789f4bdd8183) #23
          to label %unreachable unwind label %cleanup

bb133:                                            ; preds = %bb132, %bb131
  %85 = load i32, ptr %_0, align 4
  ret i32 %85

bb56:                                             ; preds = %bb54
  %_103.0 = extractvalue { ptr, i64 } %17, 0
  %_103.1 = extractvalue { ptr, i64 } %17, 1
; invoke core::str::<impl str>::chars
  %86 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_103.0, i64 %_103.1)
          to label %bb57 unwind label %cleanup

bb57:                                             ; preds = %bb56
  %87 = extractvalue { ptr, ptr } %86, 0
  %88 = extractvalue { ptr, ptr } %86, 1
  store ptr %87, ptr %_102, align 8
  %89 = getelementptr inbounds i8, ptr %_102, i64 8
  store ptr %88, ptr %89, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_100 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_102, i64 %i)
          to label %bb58 unwind label %cleanup

bb58:                                             ; preds = %bb57
  store i32 %_100, ptr %self.i83, align 4
  %90 = load i32, ptr %self.i83, align 4
  %91 = icmp eq i32 %90, 1114112
  %_2.i84 = select i1 %91, i64 0, i64 1
  %92 = trunc nuw i64 %_2.i84 to i1
  br i1 %92, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit88", label %bb2.i85

bb2.i85:                                          ; preds = %bb58
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_605b0453e1ec064f253990cf346c53bb) #22
          to label %.noexc87 unwind label %cleanup

.noexc87:                                         ; preds = %bb2.i85
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit88": ; preds = %bb58
  %val.i86 = load i32, ptr %self.i83, align 4
  br label %bb59

bb59:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit88"
  %93 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i86, i32 48)
  %_106.0 = extractvalue { i32, i1 } %93, 0
  %_106.1 = extractvalue { i32, i1 } %93, 1
  br i1 %_106.1, label %panic22, label %bb60

bb60:                                             ; preds = %bb59
  %94 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_106.0, i32 100)
  %_107.0 = extractvalue { i32, i1 } %94, 0
  %_107.1 = extractvalue { i32, i1 } %94, 1
  br i1 %_107.1, label %panic23, label %bb61

panic22:                                          ; preds = %bb59
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_00791d6ece9260122bcb3a60228582dd) #23
          to label %unreachable unwind label %cleanup

bb61:                                             ; preds = %bb60
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %95 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb62 unwind label %cleanup

panic23:                                          ; preds = %bb60
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_00791d6ece9260122bcb3a60228582dd) #23
          to label %unreachable unwind label %cleanup

bb62:                                             ; preds = %bb61
  %_115.0 = extractvalue { ptr, i64 } %95, 0
  %_115.1 = extractvalue { ptr, i64 } %95, 1
; invoke core::str::<impl str>::chars
  %96 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_115.0, i64 %_115.1)
          to label %bb63 unwind label %cleanup

bb63:                                             ; preds = %bb62
  %97 = extractvalue { ptr, ptr } %96, 0
  %98 = extractvalue { ptr, ptr } %96, 1
  store ptr %97, ptr %_114, align 8
  %99 = getelementptr inbounds i8, ptr %_114, i64 8
  store ptr %98, ptr %99, align 8
  %_118.0 = add i64 %i, 1
  %_118.1 = icmp ult i64 %_118.0, %i
  br i1 %_118.1, label %panic24, label %bb64

bb64:                                             ; preds = %bb63
; invoke core::iter::traits::iterator::Iterator::nth
  %_112 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_114, i64 %_118.0)
          to label %bb65 unwind label %cleanup

panic24:                                          ; preds = %bb63
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5b4373c716ad2bdc29330ad921026c8f) #23
          to label %unreachable unwind label %cleanup

bb65:                                             ; preds = %bb64
  store i32 %_112, ptr %self.i77, align 4
  %100 = load i32, ptr %self.i77, align 4
  %101 = icmp eq i32 %100, 1114112
  %_2.i78 = select i1 %101, i64 0, i64 1
  %102 = trunc nuw i64 %_2.i78 to i1
  br i1 %102, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit82", label %bb2.i79

bb2.i79:                                          ; preds = %bb65
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_1db0fa8dcd1703b9f1024addf5345df1) #22
          to label %.noexc81 unwind label %cleanup

.noexc81:                                         ; preds = %bb2.i79
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit82": ; preds = %bb65
  %val.i80 = load i32, ptr %self.i77, align 4
  br label %bb66

bb66:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit82"
  %103 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i80, i32 48)
  %_120.0 = extractvalue { i32, i1 } %103, 0
  %_120.1 = extractvalue { i32, i1 } %103, 1
  br i1 %_120.1, label %panic25, label %bb67

bb67:                                             ; preds = %bb66
  %104 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_120.0, i32 10)
  %_121.0 = extractvalue { i32, i1 } %104, 0
  %_121.1 = extractvalue { i32, i1 } %104, 1
  br i1 %_121.1, label %panic26, label %bb68

panic25:                                          ; preds = %bb66
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2faf4ccded9b73e32791ba29addfdc1a) #23
          to label %unreachable unwind label %cleanup

bb68:                                             ; preds = %bb67
  %105 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_107.0, i32 %_121.0)
  %_122.0 = extractvalue { i32, i1 } %105, 0
  %_122.1 = extractvalue { i32, i1 } %105, 1
  br i1 %_122.1, label %panic27, label %bb69

panic26:                                          ; preds = %bb67
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2faf4ccded9b73e32791ba29addfdc1a) #23
          to label %unreachable unwind label %cleanup

bb69:                                             ; preds = %bb68
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %106 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb70 unwind label %cleanup

panic27:                                          ; preds = %bb68
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_00791d6ece9260122bcb3a60228582dd) #23
          to label %unreachable unwind label %cleanup

bb70:                                             ; preds = %bb69
  %_129.0 = extractvalue { ptr, i64 } %106, 0
  %_129.1 = extractvalue { ptr, i64 } %106, 1
; invoke core::str::<impl str>::chars
  %107 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_129.0, i64 %_129.1)
          to label %bb71 unwind label %cleanup

bb71:                                             ; preds = %bb70
  %108 = extractvalue { ptr, ptr } %107, 0
  %109 = extractvalue { ptr, ptr } %107, 1
  store ptr %108, ptr %_128, align 8
  %110 = getelementptr inbounds i8, ptr %_128, i64 8
  store ptr %109, ptr %110, align 8
  %_132.0 = add i64 %i, 2
  %_132.1 = icmp ult i64 %_132.0, %i
  br i1 %_132.1, label %panic28, label %bb72

bb72:                                             ; preds = %bb71
; invoke core::iter::traits::iterator::Iterator::nth
  %_126 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_128, i64 %_132.0)
          to label %bb73 unwind label %cleanup

panic28:                                          ; preds = %bb71
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_748510d3d70e9ed48165ea0f5b814153) #23
          to label %unreachable unwind label %cleanup

bb73:                                             ; preds = %bb72
  store i32 %_126, ptr %self.i71, align 4
  %111 = load i32, ptr %self.i71, align 4
  %112 = icmp eq i32 %111, 1114112
  %_2.i72 = select i1 %112, i64 0, i64 1
  %113 = trunc nuw i64 %_2.i72 to i1
  br i1 %113, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit76", label %bb2.i73

bb2.i73:                                          ; preds = %bb73
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_c60424e091d1bd56632151c04195edfa) #22
          to label %.noexc75 unwind label %cleanup

.noexc75:                                         ; preds = %bb2.i73
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit76": ; preds = %bb73
  %val.i74 = load i32, ptr %self.i71, align 4
  br label %bb74

bb74:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit76"
  %114 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i74, i32 48)
  %_134.0 = extractvalue { i32, i1 } %114, 0
  %_134.1 = extractvalue { i32, i1 } %114, 1
  br i1 %_134.1, label %panic29, label %bb75

bb75:                                             ; preds = %bb74
  %115 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_122.0, i32 %_134.0)
  %_135.0 = extractvalue { i32, i1 } %115, 0
  %_135.1 = extractvalue { i32, i1 } %115, 1
  br i1 %_135.1, label %panic30, label %bb76

panic29:                                          ; preds = %bb74
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7d3c09e3fb9fd6b1e6deb47b91916440) #23
          to label %unreachable unwind label %cleanup

bb76:                                             ; preds = %bb75
  store i32 %_135.0, ptr %three_digit, align 4
  %_138 = load i32, ptr %three_digit, align 4
  br label %bb77

panic30:                                          ; preds = %bb75
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_00791d6ece9260122bcb3a60228582dd) #23
          to label %unreachable unwind label %cleanup

bb77:                                             ; preds = %bb76
  %_141 = icmp eq i32 %_138, -2147483648
  %_142 = and i1 false, %_141
  br i1 %_142, label %panic31, label %bb78

bb78:                                             ; preds = %bb77
  %_137 = srem i32 %_138, 8
  %_136 = icmp eq i32 %_137, 0
  br i1 %_136, label %bb79, label %bb51

panic31:                                          ; preds = %bb77
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_952f99d12c17224b9bae911c26d535da) #23
          to label %unreachable unwind label %cleanup

bb79:                                             ; preds = %bb78
  %116 = load i32, ptr %count, align 4
  %117 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %116, i32 1)
  %_143.0 = extractvalue { i32, i1 } %117, 0
  %_143.1 = extractvalue { i32, i1 } %117, 1
  br i1 %_143.1, label %panic32, label %bb80

bb80:                                             ; preds = %bb79
  store i32 %_143.0, ptr %count, align 4
  br label %bb51

panic32:                                          ; preds = %bb79
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c35a57dc9c856ba01c6449d00c0b6b2b) #23
          to label %unreachable unwind label %cleanup

bb53:                                             ; No predecessors!
  unreachable

bb15:                                             ; preds = %bb13
  %_31.0 = extractvalue { ptr, i64 } %6, 0
  %_31.1 = extractvalue { ptr, i64 } %6, 1
; invoke core::str::<impl str>::chars
  %118 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_31.0, i64 %_31.1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %119 = extractvalue { ptr, ptr } %118, 0
  %120 = extractvalue { ptr, ptr } %118, 1
  store ptr %119, ptr %_30, align 8
  %121 = getelementptr inbounds i8, ptr %_30, i64 8
  store ptr %120, ptr %121, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_28 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_30, i64 0)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  store i32 %_28, ptr %self.i65, align 4
  %122 = load i32, ptr %self.i65, align 4
  %123 = icmp eq i32 %122, 1114112
  %_2.i66 = select i1 %123, i64 0, i64 1
  %124 = trunc nuw i64 %_2.i66 to i1
  br i1 %124, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit70", label %bb2.i67

bb2.i67:                                          ; preds = %bb17
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_47adf347256eda21cdab651ed92f6757) #22
          to label %.noexc69 unwind label %cleanup

.noexc69:                                         ; preds = %bb2.i67
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit70": ; preds = %bb17
  %val.i68 = load i32, ptr %self.i65, align 4
  br label %bb18

bb18:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit70"
  %125 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i68, i32 48)
  %_34.0 = extractvalue { i32, i1 } %125, 0
  %_34.1 = extractvalue { i32, i1 } %125, 1
  br i1 %_34.1, label %panic33, label %bb19

bb19:                                             ; preds = %bb18
  %126 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_34.0, i32 10)
  %_35.0 = extractvalue { i32, i1 } %126, 0
  %_35.1 = extractvalue { i32, i1 } %126, 1
  br i1 %_35.1, label %panic34, label %bb20

panic33:                                          ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7b55ee667d8e0626053e7a658ec27a39) #23
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %127 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb21 unwind label %cleanup

panic34:                                          ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_7b55ee667d8e0626053e7a658ec27a39) #23
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_42.0 = extractvalue { ptr, i64 } %127, 0
  %_42.1 = extractvalue { ptr, i64 } %127, 1
; invoke core::str::<impl str>::chars
  %128 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_42.0, i64 %_42.1)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %129 = extractvalue { ptr, ptr } %128, 0
  %130 = extractvalue { ptr, ptr } %128, 1
  store ptr %129, ptr %_41, align 8
  %131 = getelementptr inbounds i8, ptr %_41, i64 8
  store ptr %130, ptr %131, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_39 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_41, i64 1)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 %_39, ptr %self.i59, align 4
  %132 = load i32, ptr %self.i59, align 4
  %133 = icmp eq i32 %132, 1114112
  %_2.i60 = select i1 %133, i64 0, i64 1
  %134 = trunc nuw i64 %_2.i60 to i1
  br i1 %134, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit64", label %bb2.i61

bb2.i61:                                          ; preds = %bb23
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_1253c86776c1fc22861c297c6439ab08) #22
          to label %.noexc63 unwind label %cleanup

.noexc63:                                         ; preds = %bb2.i61
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit64": ; preds = %bb23
  %val.i62 = load i32, ptr %self.i59, align 4
  br label %bb24

bb24:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit64"
  %135 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i62, i32 48)
  %_45.0 = extractvalue { i32, i1 } %135, 0
  %_45.1 = extractvalue { i32, i1 } %135, 1
  br i1 %_45.1, label %panic35, label %bb25

bb25:                                             ; preds = %bb24
  %136 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_35.0, i32 %_45.0)
  %_46.0 = extractvalue { i32, i1 } %136, 0
  %_46.1 = extractvalue { i32, i1 } %136, 1
  br i1 %_46.1, label %panic36, label %bb26

panic35:                                          ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cbeb0dbacec78ebad31373d022662f44) #23
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %137 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb27 unwind label %cleanup

panic36:                                          ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7b55ee667d8e0626053e7a658ec27a39) #23
          to label %unreachable unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_55.0 = extractvalue { ptr, i64 } %137, 0
  %_55.1 = extractvalue { ptr, i64 } %137, 1
; invoke core::str::<impl str>::chars
  %138 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_55.0, i64 %_55.1)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %139 = extractvalue { ptr, ptr } %138, 0
  %140 = extractvalue { ptr, ptr } %138, 1
  store ptr %139, ptr %_54, align 8
  %141 = getelementptr inbounds i8, ptr %_54, i64 8
  store ptr %140, ptr %141, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_52 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_54, i64 1)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  store i32 %_52, ptr %self.i53, align 4
  %142 = load i32, ptr %self.i53, align 4
  %143 = icmp eq i32 %142, 1114112
  %_2.i54 = select i1 %143, i64 0, i64 1
  %144 = trunc nuw i64 %_2.i54 to i1
  br i1 %144, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit58", label %bb2.i55

bb2.i55:                                          ; preds = %bb29
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_aa83010b9d2da258e580147548dfb862) #22
          to label %.noexc57 unwind label %cleanup

.noexc57:                                         ; preds = %bb2.i55
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit58": ; preds = %bb29
  %val.i56 = load i32, ptr %self.i53, align 4
  br label %bb30

bb30:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit58"
  %145 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i56, i32 48)
  %_58.0 = extractvalue { i32, i1 } %145, 0
  %_58.1 = extractvalue { i32, i1 } %145, 1
  br i1 %_58.1, label %panic37, label %bb31

bb31:                                             ; preds = %bb30
  %146 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_58.0, i32 10)
  %_59.0 = extractvalue { i32, i1 } %146, 0
  %_59.1 = extractvalue { i32, i1 } %146, 1
  br i1 %_59.1, label %panic38, label %bb32

panic37:                                          ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8507de23422be5bb21816c4d33e70d6a) #23
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %147 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd584ce6468c34280E"(ptr align 8 %n)
          to label %bb33 unwind label %cleanup

panic38:                                          ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8507de23422be5bb21816c4d33e70d6a) #23
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  %_66.0 = extractvalue { ptr, i64 } %147, 0
  %_66.1 = extractvalue { ptr, i64 } %147, 1
; invoke core::str::<impl str>::chars
  %148 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_66.0, i64 %_66.1)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  %149 = extractvalue { ptr, ptr } %148, 0
  %150 = extractvalue { ptr, ptr } %148, 1
  store ptr %149, ptr %_65, align 8
  %151 = getelementptr inbounds i8, ptr %_65, i64 8
  store ptr %150, ptr %151, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_63 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr align 8 %_65, i64 0)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb34
  store i32 %_63, ptr %self.i47, align 4
  %152 = load i32, ptr %self.i47, align 4
  %153 = icmp eq i32 %152, 1114112
  %_2.i48 = select i1 %153, i64 0, i64 1
  %154 = trunc nuw i64 %_2.i48 to i1
  br i1 %154, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit52", label %bb2.i49

bb2.i49:                                          ; preds = %bb35
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_d1414eac9adaf7541d04b7fdd22970e4) #22
          to label %.noexc51 unwind label %cleanup

.noexc51:                                         ; preds = %bb2.i49
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit52": ; preds = %bb35
  %val.i50 = load i32, ptr %self.i47, align 4
  br label %bb36

bb36:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit52"
  %155 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i50, i32 48)
  %_69.0 = extractvalue { i32, i1 } %155, 0
  %_69.1 = extractvalue { i32, i1 } %155, 1
  br i1 %_69.1, label %panic39, label %bb37

bb37:                                             ; preds = %bb36
  %156 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_59.0, i32 %_69.0)
  %_70.0 = extractvalue { i32, i1 } %156, 0
  %_70.1 = extractvalue { i32, i1 } %156, 1
  br i1 %_70.1, label %panic40, label %bb38

panic39:                                          ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_692bec832649f28dfcbcd9472a443e38) #23
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb37
  br label %bb39

panic40:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8507de23422be5bb21816c4d33e70d6a) #23
          to label %unreachable unwind label %cleanup

bb39:                                             ; preds = %bb38
  %_75 = icmp eq i32 %_46.0, -2147483648
  %_76 = and i1 false, %_75
  br i1 %_76, label %panic41, label %bb40

bb40:                                             ; preds = %bb39
  %_72 = srem i32 %_46.0, 8
  %_71 = icmp eq i32 %_72, 0
  br i1 %_71, label %bb41, label %bb43

panic41:                                          ; preds = %bb39
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_7116e5eb20e07cf89b1ebbf80acc7301) #23
          to label %unreachable unwind label %cleanup

bb43:                                             ; preds = %bb42, %bb40
  br label %bb44

bb41:                                             ; preds = %bb40
  %157 = load i32, ptr %count, align 4
  %158 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %157, i32 1)
  %_77.0 = extractvalue { i32, i1 } %158, 0
  %_77.1 = extractvalue { i32, i1 } %158, 1
  br i1 %_77.1, label %panic42, label %bb42

bb42:                                             ; preds = %bb41
  store i32 %_77.0, ptr %count, align 4
  br label %bb43

panic42:                                          ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f541b32b1fdd1e6fe464177e61e901d3) #23
          to label %unreachable unwind label %cleanup

bb44:                                             ; preds = %bb43
  %_82 = icmp eq i32 %_70.0, -2147483648
  %_83 = and i1 false, %_82
  br i1 %_83, label %panic43, label %bb45

bb45:                                             ; preds = %bb44
  %_79 = srem i32 %_70.0, 8
  %_78 = icmp eq i32 %_79, 0
  br i1 %_78, label %bb46, label %bb48

panic43:                                          ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_5a44809c25de5a2b9d4ee1c8e568c1da) #23
          to label %unreachable unwind label %cleanup

bb48:                                             ; preds = %bb47, %bb45
  %159 = load i32, ptr %count, align 4
  store i32 %159, ptr %_0, align 4
  br label %bb132

bb46:                                             ; preds = %bb45
  %160 = load i32, ptr %count, align 4
  %161 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %160, i32 1)
  %_84.0 = extractvalue { i32, i1 } %161, 0
  %_84.1 = extractvalue { i32, i1 } %161, 1
  br i1 %_84.1, label %panic44, label %bb47

bb47:                                             ; preds = %bb46
  store i32 %_84.0, ptr %count, align 4
  br label %bb48

panic44:                                          ; preds = %bb46
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9d066fd795f9fb1a45ec71d35f5cb926) #23
          to label %unreachable unwind label %cleanup

bb132:                                            ; preds = %bb10, %bb11, %bb48
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha56a270c792f55cfE"(ptr align 8 %n)
  br label %bb133

bb3:                                              ; preds = %bb2
  %_12.0 = extractvalue { ptr, i64 } %5, 0
  %_12.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %162 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h9bc849443d9f4a36E"(ptr align 1 %_12.0, i64 %_12.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %163 = extractvalue { ptr, ptr } %162, 0
  %164 = extractvalue { ptr, ptr } %162, 1
  store ptr %163, ptr %_11, align 8
  %165 = getelementptr inbounds i8, ptr %_11, i64 8
  store ptr %164, ptr %165, align 8
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %_9 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d3131852e6bdd8fE"(ptr align 8 %_11)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 %_9, ptr %self.i, align 4
  %166 = load i32, ptr %self.i, align 4
  %167 = icmp eq i32 %166, 1114112
  %_2.i = select i1 %167, i64 0, i64 1
  %168 = trunc nuw i64 %_2.i to i1
  br i1 %168, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb5
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_a98e95e3d04bc205aef1a7edcb399cd1) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit": ; preds = %bb5
  %val.i = load i32, ptr %self.i, align 4
  br label %bb6

bb6:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit"
  %169 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_15.0 = extractvalue { i32, i1 } %169, 0
  %_15.1 = extractvalue { i32, i1 } %169, 1
  br i1 %_15.1, label %panic45, label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

panic45:                                          ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_061317e31f477ecf2332b4f2b334b7be) #23
          to label %unreachable unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_20 = icmp eq i32 %_15.0, -2147483648
  %_21 = and i1 false, %_20
  br i1 %_21, label %panic46, label %bb9

bb9:                                              ; preds = %bb8
  %_17 = srem i32 %_15.0, 8
  %_16 = icmp eq i32 %_17, 0
  br i1 %_16, label %bb10, label %bb11

panic46:                                          ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_e3a80a120efbc579938cd2d91e36b1d6) #23
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb9
  store i32 0, ptr %_0, align 4
  br label %bb132

bb10:                                             ; preds = %bb9
  store i32 1, ptr %_0, align 4
  br label %bb132

terminate:                                        ; preds = %bb134
  %170 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb135:                                            ; preds = %bb134
  %171 = load ptr, ptr %0, align 8
  %172 = getelementptr inbounds i8, ptr %0, i64 8
  %173 = load i32, ptr %172, align 8
  %174 = insertvalue { ptr, i32 } poison, ptr %171, 0
  %175 = insertvalue { ptr, i32 } %174, i32 %173, 1
  resume { ptr, i32 } %175
}
