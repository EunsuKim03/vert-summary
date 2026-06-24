define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i21 = alloca [4 x i8], align 4
  %self.i15 = alloca [4 x i8], align 4
  %self.i9 = alloca [4 x i8], align 4
  %self.i3 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_45 = alloca [16 x i8], align 8
  %_37 = alloca [16 x i8], align 8
  %_28 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %counter = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %_5 = alloca [16 x i8], align 8
  %last = alloca [4 x i8], align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %1 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h09d05c3e4f166bdaE"(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb35:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd646daa662d33de7E"(ptr align 8 %str) #21
          to label %bb36 unwind label %terminate

cleanup:                                          ; preds = %bb2.i23, %bb2.i17, %bb2.i11, %bb2.i5, %bb2.i, %panic2, %panic1, %bb29, %bb28, %bb27, %panic, %bb22, %bb21, %bb20, %bb15, %bb14, %bb13, %bb9, %bb8, %bb7, %bb5, %bb2, %bb1, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb35

bb1:                                              ; preds = %start
  %_6.0 = extractvalue { ptr, i64 } %1, 0
  %_6.1 = extractvalue { ptr, i64 } %1, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfd64add3bb03706aE"(ptr align 1 %_6.0, i64 %_6.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  store ptr %7, ptr %_5, align 8
  %9 = getelementptr inbounds i8, ptr %_5, i64 8
  store ptr %8, ptr %9, align 8
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %_3 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32308dde0eac2ae5E"(ptr align 8 %_5)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i32 %_3, ptr %self.i21, align 4
  %10 = load i32, ptr %self.i21, align 4
  %11 = icmp eq i32 %10, 1114112
  %_2.i22 = select i1 %11, i64 0, i64 1
  %12 = trunc nuw i64 %_2.i22 to i1
  br i1 %12, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit26", label %bb2.i23

bb2.i23:                                          ; preds = %bb3
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_96e6c3be7c4b30cbcf9d45c76c90bfd0) #22
          to label %.noexc25 unwind label %cleanup

.noexc25:                                         ; preds = %bb2.i23
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit26": ; preds = %bb3
  %val.i24 = load i32, ptr %self.i21, align 4
  br label %bb4

bb4:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit26"
  store i32 %val.i24, ptr %last, align 4
  store i64 1, ptr %i, align 8
  store i32 0, ptr %counter, align 4
  br label %bb5

bb5:                                              ; preds = %bb32, %bb4
  %_11 = load i64, ptr %i, align 8
; invoke alloc::string::String::len
  %_12 = invoke i64 @_ZN5alloc6string6String3len17h6527e4b41d1653afE(ptr align 8 %str)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_10 = icmp ult i64 %_11, %_12
  br i1 %_10, label %bb7, label %bb33

bb33:                                             ; preds = %bb6
  %_0 = load i32, ptr %counter, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd646daa662d33de7E"(ptr align 8 %str)
  ret i32 %_0

bb7:                                              ; preds = %bb6
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %13 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h09d05c3e4f166bdaE"(ptr align 8 %str)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_19.0 = extractvalue { ptr, i64 } %13, 0
  %_19.1 = extractvalue { ptr, i64 } %13, 1
; invoke core::str::<impl str>::chars
  %14 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfd64add3bb03706aE"(ptr align 1 %_19.0, i64 %_19.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %15 = extractvalue { ptr, ptr } %14, 0
  %16 = extractvalue { ptr, ptr } %14, 1
  store ptr %15, ptr %_18, align 8
  %17 = getelementptr inbounds i8, ptr %_18, i64 8
  store ptr %16, ptr %17, align 8
  %_21 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_16 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h51beb41ffd420c68E(ptr align 8 %_18, i64 %_21)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_16, ptr %self.i15, align 4
  %18 = load i32, ptr %self.i15, align 4
  %19 = icmp eq i32 %18, 1114112
  %_2.i16 = select i1 %19, i64 0, i64 1
  %20 = trunc nuw i64 %_2.i16 to i1
  br i1 %20, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit20", label %bb2.i17

bb2.i17:                                          ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_5d3d217d934ec1ed56891210cf4853c9) #22
          to label %.noexc19 unwind label %cleanup

.noexc19:                                         ; preds = %bb2.i17
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit20": ; preds = %bb10
  %val.i18 = load i32, ptr %self.i15, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit20"
  %_14 = icmp eq i32 %val.i18, 48
  br i1 %_14, label %bb12, label %bb27

bb27:                                             ; preds = %bb26, %bb24, %bb12, %bb11
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %21 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h09d05c3e4f166bdaE"(ptr align 8 %str)
          to label %bb28 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_23 = load i32, ptr %last, align 4
  %_22 = icmp eq i32 %_23, 49
  br i1 %_22, label %bb13, label %bb27

bb13:                                             ; preds = %bb19, %bb12
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %22 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h09d05c3e4f166bdaE"(ptr align 8 %str)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_29.0 = extractvalue { ptr, i64 } %22, 0
  %_29.1 = extractvalue { ptr, i64 } %22, 1
; invoke core::str::<impl str>::chars
  %23 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfd64add3bb03706aE"(ptr align 1 %_29.0, i64 %_29.1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %24 = extractvalue { ptr, ptr } %23, 0
  %25 = extractvalue { ptr, ptr } %23, 1
  store ptr %24, ptr %_28, align 8
  %26 = getelementptr inbounds i8, ptr %_28, i64 8
  store ptr %25, ptr %26, align 8
  %_31 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_26 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h51beb41ffd420c68E(ptr align 8 %_28, i64 %_31)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  store i32 %_26, ptr %self.i9, align 4
  %27 = load i32, ptr %self.i9, align 4
  %28 = icmp eq i32 %27, 1114112
  %_2.i10 = select i1 %28, i64 0, i64 1
  %29 = trunc nuw i64 %_2.i10 to i1
  br i1 %29, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit14", label %bb2.i11

bb2.i11:                                          ; preds = %bb16
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_ac82f80029bf27fc51f4237a15f69319) #22
          to label %.noexc13 unwind label %cleanup

.noexc13:                                         ; preds = %bb2.i11
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit14": ; preds = %bb16
  %val.i12 = load i32, ptr %self.i9, align 4
  br label %bb17

bb17:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit14"
  %_24 = icmp eq i32 %val.i12, 48
  br i1 %_24, label %bb18, label %bb20

bb20:                                             ; preds = %bb17
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %30 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h09d05c3e4f166bdaE"(ptr align 8 %str)
          to label %bb21 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %31 = load i64, ptr %i, align 8
  %_32.0 = add i64 %31, 1
  %_32.1 = icmp ult i64 %_32.0, %31
  br i1 %_32.1, label %panic2, label %bb19

bb21:                                             ; preds = %bb20
  %_38.0 = extractvalue { ptr, i64 } %30, 0
  %_38.1 = extractvalue { ptr, i64 } %30, 1
; invoke core::str::<impl str>::chars
  %32 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfd64add3bb03706aE"(ptr align 1 %_38.0, i64 %_38.1)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %33 = extractvalue { ptr, ptr } %32, 0
  %34 = extractvalue { ptr, ptr } %32, 1
  store ptr %33, ptr %_37, align 8
  %35 = getelementptr inbounds i8, ptr %_37, i64 8
  store ptr %34, ptr %35, align 8
  %_40 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_35 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h51beb41ffd420c68E(ptr align 8 %_37, i64 %_40)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 %_35, ptr %self.i3, align 4
  %36 = load i32, ptr %self.i3, align 4
  %37 = icmp eq i32 %36, 1114112
  %_2.i4 = select i1 %37, i64 0, i64 1
  %38 = trunc nuw i64 %_2.i4 to i1
  br i1 %38, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit8", label %bb2.i5

bb2.i5:                                           ; preds = %bb23
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_05b852704473c7b06816922e1f39e8c4) #22
          to label %.noexc7 unwind label %cleanup

.noexc7:                                          ; preds = %bb2.i5
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit8": ; preds = %bb23
  %val.i6 = load i32, ptr %self.i3, align 4
  br label %bb24

bb24:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit8"
  %_33 = icmp eq i32 %val.i6, 49
  br i1 %_33, label %bb25, label %bb27

bb25:                                             ; preds = %bb24
  %39 = load i32, ptr %counter, align 4
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 1)
  %_41.0 = extractvalue { i32, i1 } %40, 0
  %_41.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_41.1, label %panic, label %bb26

bb26:                                             ; preds = %bb25
  store i32 %_41.0, ptr %counter, align 4
  br label %bb27

panic:                                            ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_abaaa04bd11d9f66e5ba2e87662e214b) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic1, %panic
  unreachable

bb28:                                             ; preds = %bb27
  %_46.0 = extractvalue { ptr, i64 } %21, 0
  %_46.1 = extractvalue { ptr, i64 } %21, 1
; invoke core::str::<impl str>::chars
  %41 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfd64add3bb03706aE"(ptr align 1 %_46.0, i64 %_46.1)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %42 = extractvalue { ptr, ptr } %41, 0
  %43 = extractvalue { ptr, ptr } %41, 1
  store ptr %42, ptr %_45, align 8
  %44 = getelementptr inbounds i8, ptr %_45, i64 8
  store ptr %43, ptr %44, align 8
  %_48 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_43 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h51beb41ffd420c68E(ptr align 8 %_45, i64 %_48)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb29
  store i32 %_43, ptr %self.i, align 4
  %45 = load i32, ptr %self.i, align 4
  %46 = icmp eq i32 %45, 1114112
  %_2.i = select i1 %46, i64 0, i64 1
  %47 = trunc nuw i64 %_2.i to i1
  br i1 %47, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb30
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_7d3da418ee1397a0f65b17bb5bc78aaf) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit": ; preds = %bb30
  %val.i = load i32, ptr %self.i, align 4
  br label %bb31

bb31:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4f0d244b686258cdE.exit"
  store i32 %val.i, ptr %last, align 4
  %48 = load i64, ptr %i, align 8
  %_49.0 = add i64 %48, 1
  %_49.1 = icmp ult i64 %_49.0, %48
  br i1 %_49.1, label %panic1, label %bb32

bb32:                                             ; preds = %bb31
  store i64 %_49.0, ptr %i, align 8
  br label %bb5

panic1:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2caf4dd8ece07b52eb2eeaab6925a493) #23
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i64 %_32.0, ptr %i, align 8
  br label %bb13

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_590ce44b09c4d5d9d529c2f2c966a355) #23
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb35
  %49 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb36:                                             ; preds = %bb35
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds i8, ptr %0, i64 8
  %52 = load i32, ptr %51, align 8
  %53 = insertvalue { ptr, i32 } poison, ptr %50, 0
  %54 = insertvalue { ptr, i32 } %53, i32 %52, 1
  resume { ptr, i32 } %54
}
