define void @f_gold(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i14 = alloca [4 x i8], align 4
  %self.i8 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_48 = alloca [16 x i8], align 8
  %_31 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %result = alloca [24 x i8], align 8
  %end = alloca [8 x i8], align 8
  %start1 = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
; invoke alloc::string::String::len
  %_3 = invoke i64 @_ZN5alloc6string6String3len17h9ad2c1f455f4b8f3E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb36:                                             ; preds = %bb35, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3691f2c42b37fa7dE"(ptr align 8 %str) #21
          to label %bb37 unwind label %terminate

cleanup:                                          ; preds = %bb3, %panic2, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb36

bb1:                                              ; preds = %start
  %_5.0 = sub i64 %_3, 1
  %_5.1 = icmp ult i64 %_3, 1
  br i1 %_5.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  store i64 %_5.0, ptr %i, align 8
  %_8 = load i64, ptr %i, align 8
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic2, label %bb3

panic:                                            ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4a0388d16982b126a2e95b6d03f8ce7c) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic2, %panic
  unreachable

bb3:                                              ; preds = %bb2
  store i64 %_9.0, ptr %end, align 8
; invoke alloc::string::String::new
  invoke void @_ZN5alloc6string6String3new17h6a5c0a130c1b0cfbE(ptr sret([24 x i8]) align 8 %result)
          to label %bb38 unwind label %cleanup

panic2:                                           ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3390142ccac2c654e4fb651302d1ba47) #23
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb3
  br label %bb4

bb4:                                              ; preds = %bb23, %bb38
  %_12 = load i64, ptr %i, align 8
  %_11 = icmp uge i64 %_12, 0
  br i1 %_11, label %bb5, label %bb24

bb24:                                             ; preds = %bb4
  store i64 0, ptr %start1, align 8
  br label %bb25

bb5:                                              ; preds = %bb4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h036ec837d55b3106E"(ptr align 8 %str)
          to label %bb6 unwind label %cleanup3

bb25:                                             ; preds = %bb32, %bb24
  %_41 = load i64, ptr %start1, align 8
  %_42 = load i64, ptr %end, align 8
  %_40 = icmp ne i64 %_41, %_42
  br i1 %_40, label %bb26, label %bb33

bb33:                                             ; preds = %bb25
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %result, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3691f2c42b37fa7dE"(ptr align 8 %str)
  ret void

bb26:                                             ; preds = %bb25
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %6 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h036ec837d55b3106E"(ptr align 8 %str)
          to label %bb27 unwind label %cleanup3

bb35:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3691f2c42b37fa7dE"(ptr align 8 %result) #21
          to label %bb36 unwind label %terminate

cleanup3:                                         ; preds = %bb2.i16, %bb2.i10, %bb2.i, %panic7, %bb17, %bb15, %bb14, %bb13, %panic6, %bb20, %panic5, %bb7, %bb6, %bb5, %panic4, %bb30, %bb28, %bb27, %bb26
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb35

bb27:                                             ; preds = %bb26
  %_49.0 = extractvalue { ptr, i64 } %6, 0
  %_49.1 = extractvalue { ptr, i64 } %6, 1
; invoke core::str::<impl str>::chars
  %11 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h86cdd0b4f40bb3cdE"(ptr align 1 %_49.0, i64 %_49.1)
          to label %bb28 unwind label %cleanup3

bb28:                                             ; preds = %bb27
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  store ptr %12, ptr %_48, align 8
  %14 = getelementptr inbounds i8, ptr %_48, i64 8
  store ptr %13, ptr %14, align 8
  %_51 = load i64, ptr %start1, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_46 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h2c1ce89b8e77138cE(ptr align 8 %_48, i64 %_51)
          to label %bb29 unwind label %cleanup3

bb29:                                             ; preds = %bb28
  store i32 %_46, ptr %self.i14, align 4
  %15 = load i32, ptr %self.i14, align 4
  %16 = icmp eq i32 %15, 1114112
  %_2.i15 = select i1 %16, i64 0, i64 1
  %17 = trunc nuw i64 %_2.i15 to i1
  br i1 %17, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h50b5be6e5e70bf4eE.exit19", label %bb2.i16

bb2.i16:                                          ; preds = %bb29
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_0c0087c7bc01ba84e97f5a163a94e09d) #22
          to label %.noexc18 unwind label %cleanup3

.noexc18:                                         ; preds = %bb2.i16
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h50b5be6e5e70bf4eE.exit19": ; preds = %bb29
  %val.i17 = load i32, ptr %self.i14, align 4
  br label %bb30

bb30:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h50b5be6e5e70bf4eE.exit19"
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17h4be0dea376b51bfdE(ptr align 8 %result, i32 %val.i17)
          to label %bb31 unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %18 = load i64, ptr %start1, align 8
  %_52.0 = add i64 %18, 1
  %_52.1 = icmp ult i64 %_52.0, %18
  br i1 %_52.1, label %panic4, label %bb32

bb32:                                             ; preds = %bb31
  store i64 %_52.0, ptr %start1, align 8
  br label %bb25

panic4:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9cfab2736612edd6e139309dc7d50ef8) #23
          to label %unreachable unwind label %cleanup3

bb6:                                              ; preds = %bb5
  %_18.0 = extractvalue { ptr, i64 } %5, 0
  %_18.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %19 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h86cdd0b4f40bb3cdE"(ptr align 1 %_18.0, i64 %_18.1)
          to label %bb7 unwind label %cleanup3

bb7:                                              ; preds = %bb6
  %20 = extractvalue { ptr, ptr } %19, 0
  %21 = extractvalue { ptr, ptr } %19, 1
  store ptr %20, ptr %_17, align 8
  %22 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %21, ptr %22, align 8
  %_20 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_15 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h2c1ce89b8e77138cE(ptr align 8 %_17, i64 %_20)
          to label %bb8 unwind label %cleanup3

bb8:                                              ; preds = %bb7
  store i32 %_15, ptr %self.i8, align 4
  %23 = load i32, ptr %self.i8, align 4
  %24 = icmp eq i32 %23, 1114112
  %_2.i9 = select i1 %24, i64 0, i64 1
  %25 = trunc nuw i64 %_2.i9 to i1
  br i1 %25, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h50b5be6e5e70bf4eE.exit13", label %bb2.i10

bb2.i10:                                          ; preds = %bb8
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_0710c1f28d859b0a65b6aaa2900f8b4f) #22
          to label %.noexc12 unwind label %cleanup3

.noexc12:                                         ; preds = %bb2.i10
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h50b5be6e5e70bf4eE.exit13": ; preds = %bb8
  %val.i11 = load i32, ptr %self.i8, align 4
  br label %bb9

bb9:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h50b5be6e5e70bf4eE.exit13"
  %_13 = icmp eq i32 %val.i11, 32
  br i1 %_13, label %bb10, label %bb22

bb22:                                             ; preds = %bb21, %bb9
  %26 = load i64, ptr %i, align 8
  %_39.0 = sub i64 %26, 1
  %_39.1 = icmp ult i64 %26, 1
  br i1 %_39.1, label %panic6, label %bb23

bb10:                                             ; preds = %bb9
  %_21 = load i64, ptr %i, align 8
  %_22.0 = add i64 %_21, 1
  %_22.1 = icmp ult i64 %_22.0, %_21
  br i1 %_22.1, label %panic5, label %bb11

bb11:                                             ; preds = %bb10
  store i64 %_22.0, ptr %start1, align 8
  br label %bb12

panic5:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_940bbe1a2d076ef85b5741f5e9fa1926) #23
          to label %unreachable unwind label %cleanup3

bb12:                                             ; preds = %bb19, %bb11
  %_24 = load i64, ptr %start1, align 8
  %_25 = load i64, ptr %end, align 8
  %_23 = icmp ne i64 %_24, %_25
  br i1 %_23, label %bb13, label %bb20

bb20:                                             ; preds = %bb12
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17h4be0dea376b51bfdE(ptr align 8 %result, i32 32)
          to label %bb21 unwind label %cleanup3

bb13:                                             ; preds = %bb12
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %27 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h036ec837d55b3106E"(ptr align 8 %str)
          to label %bb14 unwind label %cleanup3

bb21:                                             ; preds = %bb20
  %_38 = load i64, ptr %i, align 8
  store i64 %_38, ptr %end, align 8
  br label %bb22

bb23:                                             ; preds = %bb22
  store i64 %_39.0, ptr %i, align 8
  br label %bb4

panic6:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6d055fe537190c33c049c2aec4329c37) #23
          to label %unreachable unwind label %cleanup3

bb14:                                             ; preds = %bb13
  %_32.0 = extractvalue { ptr, i64 } %27, 0
  %_32.1 = extractvalue { ptr, i64 } %27, 1
; invoke core::str::<impl str>::chars
  %28 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h86cdd0b4f40bb3cdE"(ptr align 1 %_32.0, i64 %_32.1)
          to label %bb15 unwind label %cleanup3

bb15:                                             ; preds = %bb14
  %29 = extractvalue { ptr, ptr } %28, 0
  %30 = extractvalue { ptr, ptr } %28, 1
  store ptr %29, ptr %_31, align 8
  %31 = getelementptr inbounds i8, ptr %_31, i64 8
  store ptr %30, ptr %31, align 8
  %_34 = load i64, ptr %start1, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_29 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h2c1ce89b8e77138cE(ptr align 8 %_31, i64 %_34)
          to label %bb16 unwind label %cleanup3

bb16:                                             ; preds = %bb15
  store i32 %_29, ptr %self.i, align 4
  %32 = load i32, ptr %self.i, align 4
  %33 = icmp eq i32 %32, 1114112
  %_2.i = select i1 %33, i64 0, i64 1
  %34 = trunc nuw i64 %_2.i to i1
  br i1 %34, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h50b5be6e5e70bf4eE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb16
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_282d241064cce51e779272cc44ee7eb0) #22
          to label %.noexc unwind label %cleanup3

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h50b5be6e5e70bf4eE.exit": ; preds = %bb16
  %val.i = load i32, ptr %self.i, align 4
  br label %bb17

bb17:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h50b5be6e5e70bf4eE.exit"
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17h4be0dea376b51bfdE(ptr align 8 %result, i32 %val.i)
          to label %bb18 unwind label %cleanup3

bb18:                                             ; preds = %bb17
  %35 = load i64, ptr %start1, align 8
  %_35.0 = add i64 %35, 1
  %_35.1 = icmp ult i64 %_35.0, %35
  br i1 %_35.1, label %panic7, label %bb19

bb19:                                             ; preds = %bb18
  store i64 %_35.0, ptr %start1, align 8
  br label %bb12

panic7:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0b671ef30a2e44e1acad733f0efbc3a9) #23
          to label %unreachable unwind label %cleanup3

terminate:                                        ; preds = %bb36, %bb35
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb37:                                             ; preds = %bb36
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds i8, ptr %0, i64 8
  %39 = load i32, ptr %38, align 8
  %40 = insertvalue { ptr, i32 } poison, ptr %37, 0
  %41 = insertvalue { ptr, i32 } %40, i32 %39, 1
  resume { ptr, i32 } %41
}
