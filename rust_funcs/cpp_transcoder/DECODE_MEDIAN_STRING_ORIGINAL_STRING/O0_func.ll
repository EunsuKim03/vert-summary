define void @f_gold(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i22 = alloca [4 x i8], align 4
  %self.i16 = alloca [4 x i8], align 4
  %self.i10 = alloca [4 x i8], align 4
  %self.i4 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_60 = alloca [16 x i8], align 8
  %_50 = alloca [16 x i8], align 8
  %_42 = alloca [16 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %iter = alloca [32 x i8], align 8
  %_9 = alloca [32 x i8], align 8
  %_8 = alloca [32 x i8], align 8
  %s1 = alloca [24 x i8], align 8
; invoke alloc::string::String::len
  %l = invoke i64 @_ZN5alloc6string6String3len17h183edb25baffb3fbE(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb42:                                             ; preds = %bb41, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E"(ptr align 8 %s) #22
          to label %bb43 unwind label %terminate

cleanup:                                          ; preds = %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb42

bb1:                                              ; preds = %start
; invoke alloc::string::String::new
  invoke void @_ZN5alloc6string6String3new17h3649ad9fe22e7df6E(ptr sret([24 x i8]) align 8 %s1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  %_6 = urem i64 %l, 2
  %is_even = icmp eq i64 %_6, 0
; invoke core::iter::traits::iterator::Iterator::step_by
  invoke void @_ZN4core4iter6traits8iterator8Iterator7step_by17h6ab334a5c9ef891cE(ptr sret([32 x i8]) align 8 %_9, i64 0, i64 %l, i64 2)
          to label %bb4 unwind label %cleanup1

bb41:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E"(ptr align 8 %s1) #22
          to label %bb42 unwind label %terminate

cleanup1:                                         ; preds = %bb2.i24, %bb2.i18, %bb2.i12, %bb2.i6, %bb2.i, %bb21, %bb19, %panic3, %bb17, %bb16, %bb15, %bb13, %bb12, %bb11, %bb34, %bb32, %panic2, %bb30, %bb29, %bb28, %bb26, %bb25, %bb24, %bb39, %bb37, %bb36, %bb35, %panic, %bb6, %bb4, %bb3
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb41

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hff5a9b42167b96e0E"(ptr sret([32 x i8]) align 8 %_8, ptr align 8 %_9)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_8, i64 32, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb44, %bb45, %bb46, %bb5
; invoke <core::iter::adapters::step_by::StepBy<I> as core::iter::traits::iterator::Iterator>::next
  %9 = invoke { i64, i64 } @"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbb4c18a85786b908E"(ptr align 8 %iter)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_12, align 8
  %12 = getelementptr inbounds i8, ptr %_12, i64 8
  store i64 %11, ptr %12, align 8
  %_14 = load i64, ptr %_12, align 8
  %13 = getelementptr inbounds i8, ptr %_12, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_14 to i1
  br i1 %15, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %16 = getelementptr inbounds i8, ptr %_12, i64 8
  %i = load i64, ptr %16, align 8
  br i1 %is_even, label %bb11, label %bb22

bb10:                                             ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %s1, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E"(ptr align 8 %s)
  ret void

bb22:                                             ; preds = %bb9
  %_36.0 = sub i64 %l, %i
  %_36.1 = icmp ult i64 %l, %i
  br i1 %_36.1, label %panic, label %bb23

bb11:                                             ; preds = %bb9
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %17 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf227f1630edaa34eE"(ptr align 8 %s)
          to label %bb12 unwind label %cleanup1

bb23:                                             ; preds = %bb22
  %_34 = icmp ugt i64 %_36.0, 1
  br i1 %_34, label %bb24, label %bb35

panic:                                            ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_59464c717ec0530e5b4ed15cfabb0b9d) #23
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %panic3, %panic2, %panic
  unreachable

bb35:                                             ; preds = %bb23
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %18 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf227f1630edaa34eE"(ptr align 8 %s)
          to label %bb36 unwind label %cleanup1

bb24:                                             ; preds = %bb23
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %19 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf227f1630edaa34eE"(ptr align 8 %s)
          to label %bb25 unwind label %cleanup1

bb36:                                             ; preds = %bb35
  %_61.0 = extractvalue { ptr, i64 } %18, 0
  %_61.1 = extractvalue { ptr, i64 } %18, 1
; invoke core::str::<impl str>::chars
  %20 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17ha6963354d8787db9E"(ptr align 1 %_61.0, i64 %_61.1)
          to label %bb37 unwind label %cleanup1

bb37:                                             ; preds = %bb36
  %21 = extractvalue { ptr, ptr } %20, 0
  %22 = extractvalue { ptr, ptr } %20, 1
  store ptr %21, ptr %_60, align 8
  %23 = getelementptr inbounds i8, ptr %_60, i64 8
  store ptr %22, ptr %23, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_58 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr align 8 %_60, i64 %i)
          to label %bb38 unwind label %cleanup1

bb38:                                             ; preds = %bb37
  store i32 %_58, ptr %self.i22, align 4
  %24 = load i32, ptr %self.i22, align 4
  %25 = icmp eq i32 %24, 1114112
  %_2.i23 = select i1 %25, i64 0, i64 1
  %26 = trunc nuw i64 %_2.i23 to i1
  br i1 %26, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit27", label %bb2.i24

bb2.i24:                                          ; preds = %bb38
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_14f68835a4088d69591254df407a4ea6) #18
          to label %.noexc26 unwind label %cleanup1

.noexc26:                                         ; preds = %bb2.i24
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit27": ; preds = %bb38
  %val.i25 = load i32, ptr %self.i22, align 4
  br label %bb39

bb39:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit27"
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17hea652613f2db8c62E(ptr align 8 %s1, i32 %val.i25)
          to label %bb46 unwind label %cleanup1

bb46:                                             ; preds = %bb39
  br label %bb6

bb25:                                             ; preds = %bb24
  %_43.0 = extractvalue { ptr, i64 } %19, 0
  %_43.1 = extractvalue { ptr, i64 } %19, 1
; invoke core::str::<impl str>::chars
  %27 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17ha6963354d8787db9E"(ptr align 1 %_43.0, i64 %_43.1)
          to label %bb26 unwind label %cleanup1

bb26:                                             ; preds = %bb25
  %28 = extractvalue { ptr, ptr } %27, 0
  %29 = extractvalue { ptr, ptr } %27, 1
  store ptr %28, ptr %_42, align 8
  %30 = getelementptr inbounds i8, ptr %_42, i64 8
  store ptr %29, ptr %30, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_40 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr align 8 %_42, i64 %i)
          to label %bb27 unwind label %cleanup1

bb27:                                             ; preds = %bb26
  store i32 %_40, ptr %self.i16, align 4
  %31 = load i32, ptr %self.i16, align 4
  %32 = icmp eq i32 %31, 1114112
  %_2.i17 = select i1 %32, i64 0, i64 1
  %33 = trunc nuw i64 %_2.i17 to i1
  br i1 %33, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit21", label %bb2.i18

bb2.i18:                                          ; preds = %bb27
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_ad37e888b10a46c3a4cacfcdc0472908) #18
          to label %.noexc20 unwind label %cleanup1

.noexc20:                                         ; preds = %bb2.i18
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit21": ; preds = %bb27
  %val.i19 = load i32, ptr %self.i16, align 4
  br label %bb28

bb28:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit21"
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17hea652613f2db8c62E(ptr align 8 %s1, i32 %val.i19)
          to label %bb29 unwind label %cleanup1

bb29:                                             ; preds = %bb28
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %34 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf227f1630edaa34eE"(ptr align 8 %s)
          to label %bb30 unwind label %cleanup1

bb30:                                             ; preds = %bb29
  %_51.0 = extractvalue { ptr, i64 } %34, 0
  %_51.1 = extractvalue { ptr, i64 } %34, 1
; invoke core::str::<impl str>::chars
  %35 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17ha6963354d8787db9E"(ptr align 1 %_51.0, i64 %_51.1)
          to label %bb31 unwind label %cleanup1

bb31:                                             ; preds = %bb30
  %36 = extractvalue { ptr, ptr } %35, 0
  %37 = extractvalue { ptr, ptr } %35, 1
  store ptr %36, ptr %_50, align 8
  %38 = getelementptr inbounds i8, ptr %_50, i64 8
  store ptr %37, ptr %38, align 8
  %_54.0 = add i64 %i, 1
  %_54.1 = icmp ult i64 %_54.0, %i
  br i1 %_54.1, label %panic2, label %bb32

bb32:                                             ; preds = %bb31
; invoke core::iter::traits::iterator::Iterator::nth
  %_48 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr align 8 %_50, i64 %_54.0)
          to label %bb33 unwind label %cleanup1

panic2:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_77ee19a80a070d9e6d5b659e5f4ea2ed) #23
          to label %unreachable unwind label %cleanup1

bb33:                                             ; preds = %bb32
  store i32 %_48, ptr %self.i10, align 4
  %39 = load i32, ptr %self.i10, align 4
  %40 = icmp eq i32 %39, 1114112
  %_2.i11 = select i1 %40, i64 0, i64 1
  %41 = trunc nuw i64 %_2.i11 to i1
  br i1 %41, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit15", label %bb2.i12

bb2.i12:                                          ; preds = %bb33
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_8fcf40f22d34bdd1c0a39e0351eb1e86) #18
          to label %.noexc14 unwind label %cleanup1

.noexc14:                                         ; preds = %bb2.i12
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit15": ; preds = %bb33
  %val.i13 = load i32, ptr %self.i10, align 4
  br label %bb34

bb34:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit15"
; invoke alloc::string::String::insert
  invoke void @_ZN5alloc6string6String6insert17h1f406d1e9567cc97E(ptr align 8 %s1, i64 0, i32 %val.i13, ptr align 8 @alloc_dd2e8850c9a716b3b5781c6aab978c3b)
          to label %bb45 unwind label %cleanup1

bb45:                                             ; preds = %bb34
  br label %bb6

bb12:                                             ; preds = %bb11
  %_22.0 = extractvalue { ptr, i64 } %17, 0
  %_22.1 = extractvalue { ptr, i64 } %17, 1
; invoke core::str::<impl str>::chars
  %42 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17ha6963354d8787db9E"(ptr align 1 %_22.0, i64 %_22.1)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  %43 = extractvalue { ptr, ptr } %42, 0
  %44 = extractvalue { ptr, ptr } %42, 1
  store ptr %43, ptr %_21, align 8
  %45 = getelementptr inbounds i8, ptr %_21, i64 8
  store ptr %44, ptr %45, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_19 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr align 8 %_21, i64 %i)
          to label %bb14 unwind label %cleanup1

bb14:                                             ; preds = %bb13
  store i32 %_19, ptr %self.i4, align 4
  %46 = load i32, ptr %self.i4, align 4
  %47 = icmp eq i32 %46, 1114112
  %_2.i5 = select i1 %47, i64 0, i64 1
  %48 = trunc nuw i64 %_2.i5 to i1
  br i1 %48, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit9", label %bb2.i6

bb2.i6:                                           ; preds = %bb14
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_316ee4cecd7320a2364fd5dd49c842ed) #18
          to label %.noexc8 unwind label %cleanup1

.noexc8:                                          ; preds = %bb2.i6
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit9": ; preds = %bb14
  %val.i7 = load i32, ptr %self.i4, align 4
  br label %bb15

bb15:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit9"
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17hea652613f2db8c62E(ptr align 8 %s1, i32 %val.i7)
          to label %bb16 unwind label %cleanup1

bb16:                                             ; preds = %bb15
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %49 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf227f1630edaa34eE"(ptr align 8 %s)
          to label %bb17 unwind label %cleanup1

bb17:                                             ; preds = %bb16
  %_30.0 = extractvalue { ptr, i64 } %49, 0
  %_30.1 = extractvalue { ptr, i64 } %49, 1
; invoke core::str::<impl str>::chars
  %50 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17ha6963354d8787db9E"(ptr align 1 %_30.0, i64 %_30.1)
          to label %bb18 unwind label %cleanup1

bb18:                                             ; preds = %bb17
  %51 = extractvalue { ptr, ptr } %50, 0
  %52 = extractvalue { ptr, ptr } %50, 1
  store ptr %51, ptr %_29, align 8
  %53 = getelementptr inbounds i8, ptr %_29, i64 8
  store ptr %52, ptr %53, align 8
  %_33.0 = add i64 %i, 1
  %_33.1 = icmp ult i64 %_33.0, %i
  br i1 %_33.1, label %panic3, label %bb19

bb19:                                             ; preds = %bb18
; invoke core::iter::traits::iterator::Iterator::nth
  %_27 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr align 8 %_29, i64 %_33.0)
          to label %bb20 unwind label %cleanup1

panic3:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7e7dd4779d75c2f3237c1bc454d2fc71) #23
          to label %unreachable unwind label %cleanup1

bb20:                                             ; preds = %bb19
  store i32 %_27, ptr %self.i, align 4
  %54 = load i32, ptr %self.i, align 4
  %55 = icmp eq i32 %54, 1114112
  %_2.i = select i1 %55, i64 0, i64 1
  %56 = trunc nuw i64 %_2.i to i1
  br i1 %56, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb20
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_2291131c5242550125e102814d896be0) #18
          to label %.noexc unwind label %cleanup1

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit": ; preds = %bb20
  %val.i = load i32, ptr %self.i, align 4
  br label %bb21

bb21:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6d5b29de87805f0E.exit"
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17hea652613f2db8c62E(ptr align 8 %s1, i32 %val.i)
          to label %bb44 unwind label %cleanup1

bb44:                                             ; preds = %bb21
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb42, %bb41
  %57 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb43:                                             ; preds = %bb42
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr inbounds i8, ptr %0, i64 8
  %60 = load i32, ptr %59, align 8
  %61 = insertvalue { ptr, i32 } poison, ptr %58, 0
  %62 = insertvalue { ptr, i32 } %61, i32 %60, 1
  resume { ptr, i32 } %62
}
