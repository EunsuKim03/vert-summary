define i32 @f_gold(ptr align 8 %s, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i10 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_27 = alloca [16 x i8], align 8
  %_19 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %c = alloca [4 x i8], align 4
  %c2 = alloca [4 x i8], align 4
  %c1 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h363dd620b43e73c6E(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb31:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h82b6547f9f508da8E"(ptr align 8 %s) #21
          to label %bb32 unwind label %terminate

cleanup:                                          ; preds = %bb2.i12, %bb2.i, %panic9, %panic8, %bb16, %bb15, %bb14, %panic7, %bb9, %bb8, %bb6, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb31

bb1:                                              ; preds = %start
  store i32 0, ptr %c1, align 4
  store i32 0, ptr %c2, align 4
  store i32 0, ptr %c, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6c29a5dae0978c54E"(i64 0, i64 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_8.0 = extractvalue { i64, i64 } %5, 0
  %_8.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_8.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_8.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb21, %bb18, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6c4b55b98c4db569E"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_11, align 8
  %10 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %9, ptr %10, align 8
  %_13 = load i64, ptr %_11, align 8
  %11 = getelementptr inbounds i8, ptr %_11, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_13 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_11, i64 8
  %i = load i64, ptr %14, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hc17a60a8d67a8f97E"(ptr align 8 %s)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  %_34 = load i32, ptr %c, align 4
  %16 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_34, i32 %k)
  %_35.0 = extractvalue { i32, i1 } %16, 0
  %_35.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_35.1, label %panic, label %bb22

bb22:                                             ; preds = %bb7
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 1)
  %_41.0 = extractvalue { i32, i1 } %17, 0
  %_41.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_41.1, label %panic1, label %bb23

panic:                                            ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_137e88ae733dcfab22865bc34c8f2f8b) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb23:                                             ; preds = %bb22
  %18 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %k, i32 %_41.0)
  %_42.0 = extractvalue { i32, i1 } %18, 0
  %_42.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_42.1, label %panic2, label %bb24

panic1:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cdaa7ef5644d9aff41d2b7f4c03874a9) #23
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  br label %bb25

panic2:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_213e13ba719d8e91f3a5c9243b95698a) #23
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_45 = icmp eq i32 %_42.0, -2147483648
  %_46 = and i1 false, %_45
  br i1 %_46, label %panic3, label %bb26

bb26:                                             ; preds = %bb25
  %_38 = sdiv i32 %_42.0, 2
  %_47 = load i32, ptr %c1, align 4
  %19 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_38, i32 %_47)
  %_48.0 = extractvalue { i32, i1 } %19, 0
  %_48.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_48.1, label %panic4, label %bb27

panic3:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_6c77b7e201ffb0d19cd366f373436b73) #23
          to label %unreachable unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_49 = load i32, ptr %c2, align 4
  %20 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_48.0, i32 %_49)
  %_50.0 = extractvalue { i32, i1 } %20, 0
  %_50.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_50.1, label %panic5, label %bb28

panic4:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6c77b7e201ffb0d19cd366f373436b73) #23
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_35.0, i32 %_50.0)
  %_51.0 = extractvalue { i32, i1 } %21, 0
  %_51.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_51.1, label %panic6, label %bb29

panic5:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6c77b7e201ffb0d19cd366f373436b73) #23
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h82b6547f9f508da8E"(ptr align 8 %s)
  ret i32 %_51.0

panic6:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_137e88ae733dcfab22865bc34c8f2f8b) #23
          to label %unreachable unwind label %cleanup

bb8:                                              ; preds = %bb6
  %_20.0 = extractvalue { ptr, i64 } %15, 0
  %_20.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %22 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf395cc56d331b505E"(ptr align 1 %_20.0, i64 %_20.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %23 = extractvalue { ptr, ptr } %22, 0
  %24 = extractvalue { ptr, ptr } %22, 1
  store ptr %23, ptr %_19, align 8
  %25 = getelementptr inbounds i8, ptr %_19, i64 8
  store ptr %24, ptr %25, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_17 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1b58d682adacc1beE(ptr align 8 %_19, i64 %i)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_17, ptr %self.i10, align 4
  %26 = load i32, ptr %self.i10, align 4
  %27 = icmp eq i32 %26, 1114112
  %_2.i11 = select i1 %27, i64 0, i64 1
  %28 = trunc nuw i64 %_2.i11 to i1
  br i1 %28, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit15", label %bb2.i12

bb2.i12:                                          ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_4b3d7225603c3d456b24befd1dec04fd) #22
          to label %.noexc14 unwind label %cleanup

.noexc14:                                         ; preds = %bb2.i12
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit15": ; preds = %bb10
  %val.i13 = load i32, ptr %self.i10, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit15"
  %_15 = icmp eq i32 %val.i13, 97
  br i1 %_15, label %bb12, label %bb14

bb14:                                             ; preds = %bb13, %bb11
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %29 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hc17a60a8d67a8f97E"(ptr align 8 %s)
          to label %bb15 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %30 = load i32, ptr %c1, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 1)
  %_22.0 = extractvalue { i32, i1 } %31, 0
  %_22.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_22.1, label %panic7, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_22.0, ptr %c1, align 4
  br label %bb14

panic7:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_94d7ab1fc189a7dcd004ed6a19eec11a) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_28.0 = extractvalue { ptr, i64 } %29, 0
  %_28.1 = extractvalue { ptr, i64 } %29, 1
; invoke core::str::<impl str>::chars
  %32 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf395cc56d331b505E"(ptr align 1 %_28.0, i64 %_28.1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %33 = extractvalue { ptr, ptr } %32, 0
  %34 = extractvalue { ptr, ptr } %32, 1
  store ptr %33, ptr %_27, align 8
  %35 = getelementptr inbounds i8, ptr %_27, i64 8
  store ptr %34, ptr %35, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_25 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1b58d682adacc1beE(ptr align 8 %_27, i64 %i)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  store i32 %_25, ptr %self.i, align 4
  %36 = load i32, ptr %self.i, align 4
  %37 = icmp eq i32 %36, 1114112
  %_2.i = select i1 %37, i64 0, i64 1
  %38 = trunc nuw i64 %_2.i to i1
  br i1 %38, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb17
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_32f33447948e4ec50eb40cf491325ac3) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit": ; preds = %bb17
  %val.i = load i32, ptr %self.i, align 4
  br label %bb18

bb18:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6b676f90d48efd6cE.exit"
  %_23 = icmp eq i32 %val.i, 98
  br i1 %_23, label %bb19, label %bb3

bb19:                                             ; preds = %bb18
  %39 = load i32, ptr %c2, align 4
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 1)
  %_30.0 = extractvalue { i32, i1 } %40, 0
  %_30.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_30.1, label %panic8, label %bb20

bb20:                                             ; preds = %bb19
  store i32 %_30.0, ptr %c2, align 4
  %_31 = load i32, ptr %c1, align 4
  %41 = load i32, ptr %c, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %41, i32 %_31)
  %_32.0 = extractvalue { i32, i1 } %42, 0
  %_32.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_32.1, label %panic9, label %bb21

panic8:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_38944e640144d7091aff9131a8c26cae) #23
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 %_32.0, ptr %c, align 4
  br label %bb3

panic9:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f3f66cf8f830d65920e40dc9ffb99d54) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb31
  %43 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb32:                                             ; preds = %bb31
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds i8, ptr %0, i64 8
  %46 = load i32, ptr %45, align 8
  %47 = insertvalue { ptr, i32 } poison, ptr %44, 0
  %48 = insertvalue { ptr, i32 } %47, i32 %46, 1
  resume { ptr, i32 } %48
}
