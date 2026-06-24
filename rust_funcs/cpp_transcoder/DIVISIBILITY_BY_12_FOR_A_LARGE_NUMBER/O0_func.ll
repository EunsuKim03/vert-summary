define i32 @f_gold(ptr align 8 %num) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %e.i = alloca [1 x i8], align 1
  %1 = alloca [8 x i8], align 8
  %self.i14 = alloca [8 x i8], align 4
  %self.i8 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %4 = alloca [16 x i8], align 8
  %_58 = alloca [8 x i8], align 4
  %_34 = alloca [4 x i8], align 4
  %iter = alloca [16 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %_21 = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %_3 = invoke i64 @_ZN5alloc6string6String3len17hf2e530a8d6723eaaE(ptr align 8 %num)
          to label %bb1 unwind label %cleanup

bb45:                                             ; preds = %cleanup.body
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371b7869e3768009E"(ptr align 8 %num) #22
          to label %bb46 unwind label %terminate

cleanup:                                          ; preds = %bb2.i10, %bb2.i, %panic7, %panic6, %panic5, %panic4, %panic3, %bb20, %bb18, %bb17, %bb16, %bb14, %panic2, %bb12, %bb11, %bb10, %panic1, %bb4, %bb3, %bb2, %panic, %bb36, %bb35, %start
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %cleanup.i, %cleanup
  %eh.lpad-body = phi { ptr, i32 } [ %5, %cleanup ], [ %25, %cleanup.i ]
  %6 = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %7 = extractvalue { ptr, i32 } %eh.lpad-body, 1
  store ptr %6, ptr %4, align 8
  %8 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb45

bb1:                                              ; preds = %start
  %_2 = icmp uge i64 %_3, 3
  br i1 %_2, label %bb2, label %bb35

bb35:                                             ; preds = %bb1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %9 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h750ab3a64f67e3afE"(ptr align 8 %num)
          to label %bb36 unwind label %cleanup

bb2:                                              ; preds = %bb1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %10 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h750ab3a64f67e3afE"(ptr align 8 %num)
          to label %bb3 unwind label %cleanup

bb36:                                             ; preds = %bb35
  %_59.0 = extractvalue { ptr, i64 } %9, 0
  %_59.1 = extractvalue { ptr, i64 } %9, 1
; invoke core::str::<impl str>::parse
  %11 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE"(ptr align 1 %_59.0, i64 %_59.1)
          to label %bb37 unwind label %cleanup

bb37:                                             ; preds = %bb36
  store i64 %11, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_58, ptr align 8 %3, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 4 %_58, i64 8, i1 false)
  %12 = load i64, ptr %2, align 8
  store i64 %12, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %self.i14, ptr align 8 %1, i64 8, i1 false)
  %13 = load i8, ptr %self.i14, align 4
  %14 = trunc nuw i8 %13 to i1
  %_2.i15 = zext i1 %14 to i64
  br i1 %14, label %bb2.i16, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he4b1b399bf4b160bE.exit"

bb2.i16:                                          ; preds = %bb37
  %15 = getelementptr inbounds i8, ptr %self.i14, i64 1
  %16 = load i8, ptr %15, align 1
  store i8 %16, ptr %e.i, align 1
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr align 1 %e.i, ptr align 8 @vtable.0, ptr align 8 @alloc_f0e93f2a3efeda78432e1787b2a7bea1) #23
          to label %unreachable.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb2.i16
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = extractvalue { ptr, i32 } %17, 1
  store ptr %18, ptr %0, align 8
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %19, ptr %20, align 8
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds i8, ptr %0, i64 8
  %23 = load i32, ptr %22, align 8
  %24 = insertvalue { ptr, i32 } poison, ptr %21, 0
  %25 = insertvalue { ptr, i32 } %24, i32 %23, 1
  br label %cleanup.body

unreachable.i:                                    ; preds = %bb2.i16
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he4b1b399bf4b160bE.exit": ; preds = %bb37
  %26 = getelementptr inbounds i8, ptr %self.i14, i64 4
  %t.i = load i32, ptr %26, align 4
  br label %bb38

bb38:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he4b1b399bf4b160bE.exit"
  br label %bb39

bb39:                                             ; preds = %bb38
  %_65 = icmp eq i32 %t.i, -2147483648
  %_66 = and i1 false, %_65
  br i1 %_66, label %panic, label %bb40

bb40:                                             ; preds = %bb39
  %_62 = srem i32 %t.i, 12
  %_61 = icmp eq i32 %_62, 0
  br i1 %_61, label %bb41, label %bb42

panic:                                            ; preds = %bb39
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_68b8fc31cb3c08d016d7c9912aecba72) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb42:                                             ; preds = %bb40
  store i32 0, ptr %_0, align 4
  br label %bb43

bb41:                                             ; preds = %bb40
  store i32 1, ptr %_0, align 4
  br label %bb43

bb43:                                             ; preds = %bb9, %bb33, %bb34, %bb41, %bb42
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371b7869e3768009E"(ptr align 8 %num)
  %27 = load i32, ptr %_0, align 4
  ret i32 %27

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { ptr, i64 } %10, 0
  %_9.1 = extractvalue { ptr, i64 } %10, 1
; invoke core::str::<impl str>::chars
  %28 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h94a41d24e9899b52E"(ptr align 1 %_9.0, i64 %_9.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_8.0 = extractvalue { ptr, ptr } %28, 0
  %_8.1 = extractvalue { ptr, ptr } %28, 1
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::last
  %_7 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17hd1a15c44ff1caf58E"(ptr %_8.0, ptr %_8.1)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 %_7, ptr %self.i8, align 4
  %29 = load i32, ptr %self.i8, align 4
  %30 = icmp eq i32 %29, 1114112
  %_2.i9 = select i1 %30, i64 0, i64 1
  %31 = trunc nuw i64 %_2.i9 to i1
  br i1 %31, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa84c3d99ab24b28E.exit13", label %bb2.i10

bb2.i10:                                          ; preds = %bb5
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_be43772f70968356d6141cdbf0a15b4f) #20
          to label %.noexc12 unwind label %cleanup

.noexc12:                                         ; preds = %bb2.i10
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa84c3d99ab24b28E.exit13": ; preds = %bb5
  %val.i11 = load i32, ptr %self.i8, align 4
  br label %bb6

bb6:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa84c3d99ab24b28E.exit13"
  br label %bb7

bb7:                                              ; preds = %bb6
  %_15 = icmp eq i32 %val.i11, -2147483648
  %_16 = and i1 false, %_15
  br i1 %_16, label %panic1, label %bb8

bb8:                                              ; preds = %bb7
  %_12 = srem i32 %val.i11, 2
  %_11 = icmp ne i32 %_12, 0
  br i1 %_11, label %bb9, label %bb10

panic1:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_307f0ff77f3d1b073fc6e5b7e3332d9e) #23
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %bb8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %32 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h750ab3a64f67e3afE"(ptr align 8 %num)
          to label %bb11 unwind label %cleanup

bb9:                                              ; preds = %bb8
  store i32 0, ptr %_0, align 4
  br label %bb43

bb11:                                             ; preds = %bb10
  %_22.0 = extractvalue { ptr, i64 } %32, 0
  %_22.1 = extractvalue { ptr, i64 } %32, 1
; invoke core::str::<impl str>::chars
  %33 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h94a41d24e9899b52E"(ptr align 1 %_22.0, i64 %_22.1)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %34 = extractvalue { ptr, ptr } %33, 0
  %35 = extractvalue { ptr, ptr } %33, 1
  store ptr %34, ptr %_21, align 8
  %36 = getelementptr inbounds i8, ptr %_21, i64 8
  store ptr %35, ptr %36, align 8
; invoke alloc::string::String::len
  %_25 = invoke i64 @_ZN5alloc6string6String3len17hf2e530a8d6723eaaE(ptr align 8 %num)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_27.0 = sub i64 %_25, 2
  %_27.1 = icmp ult i64 %_25, 2
  br i1 %_27.1, label %panic2, label %bb14

bb14:                                             ; preds = %bb13
; invoke core::iter::traits::iterator::Iterator::nth
  %_19 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hda118ff8e35a50a3E(ptr align 8 %_21, i64 %_27.0)
          to label %bb15 unwind label %cleanup

panic2:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_63427e4abadafcebe8570dd9e88b0349) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  store i32 %_19, ptr %self.i, align 4
  %37 = load i32, ptr %self.i, align 4
  %38 = icmp eq i32 %37, 1114112
  %_2.i = select i1 %38, i64 0, i64 1
  %39 = trunc nuw i64 %_2.i to i1
  br i1 %39, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa84c3d99ab24b28E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb15
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_ef2c363c226c81b7ccebc7bb7b6efab8) #20
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa84c3d99ab24b28E.exit": ; preds = %bb15
  %val.i = load i32, ptr %self.i, align 4
  br label %bb16

bb16:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa84c3d99ab24b28E.exit"
  store i32 0, ptr %sum, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %40 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h750ab3a64f67e3afE"(ptr align 8 %num)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_31.0 = extractvalue { ptr, i64 } %40, 0
  %_31.1 = extractvalue { ptr, i64 } %40, 1
; invoke core::str::<impl str>::chars
  %41 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h94a41d24e9899b52E"(ptr align 1 %_31.0, i64 %_31.1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_30.0 = extractvalue { ptr, ptr } %41, 0
  %_30.1 = extractvalue { ptr, ptr } %41, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %42 = invoke { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdc0b67f8b29ebe07E"(ptr %_30.0, ptr %_30.1)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_29.0 = extractvalue { ptr, ptr } %42, 0
  %_29.1 = extractvalue { ptr, ptr } %42, 1
  store ptr %_29.0, ptr %iter, align 8
  %43 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_29.1, ptr %43, align 8
  br label %bb20

bb20:                                             ; preds = %bb25, %bb19
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %44 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21ef9c53d1856544E"(ptr align 8 %iter)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 %44, ptr %_34, align 4
  %45 = load i32, ptr %_34, align 4
  %46 = icmp eq i32 %45, 1114112
  %_36 = select i1 %46, i64 0, i64 1
  %47 = trunc nuw i64 %_36 to i1
  br i1 %47, label %bb23, label %bb24

bb23:                                             ; preds = %bb21
  %c = load i32, ptr %_34, align 4
  %48 = load i32, ptr %sum, align 4
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %48, i32 %c)
  %_39.0 = extractvalue { i32, i1 } %49, 0
  %_39.1 = extractvalue { i32, i1 } %49, 1
  br i1 %_39.1, label %panic7, label %bb25

bb24:                                             ; preds = %bb21
  %_42 = load i32, ptr %sum, align 4
  br label %bb26

bb26:                                             ; preds = %bb24
  %_45 = icmp eq i32 %_42, -2147483648
  %_46 = and i1 false, %_45
  br i1 %_46, label %panic3, label %bb27

bb27:                                             ; preds = %bb26
  %_41 = srem i32 %_42, 3
  %_40 = icmp eq i32 %_41, 0
  br i1 %_40, label %bb28, label %bb34

panic3:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_2b5bbf4b522c9c6f504c882fb98142f1) #23
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %bb32, %bb27
  store i32 0, ptr %_0, align 4
  br label %bb43

bb28:                                             ; preds = %bb27
  %50 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %val.i, i32 10)
  %_51.0 = extractvalue { i32, i1 } %50, 0
  %_51.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_51.1, label %panic4, label %bb29

bb29:                                             ; preds = %bb28
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_51.0, i32 %val.i11)
  %_52.0 = extractvalue { i32, i1 } %51, 0
  %_52.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_52.1, label %panic5, label %bb30

panic4:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b46b5e89aea07538eed54e848402fffe) #23
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  br label %bb31

panic5:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_01ccc6b6548983e3e0e0f233a50fbc2e) #23
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_55 = icmp eq i32 %_52.0, -2147483648
  %_56 = and i1 false, %_55
  br i1 %_56, label %panic6, label %bb32

bb32:                                             ; preds = %bb31
  %_48 = srem i32 %_52.0, 4
  %_47 = icmp eq i32 %_48, 0
  br i1 %_47, label %bb33, label %bb34

panic6:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_01ccc6b6548983e3e0e0f233a50fbc2e) #23
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  store i32 1, ptr %_0, align 4
  br label %bb43

bb25:                                             ; preds = %bb23
  store i32 %_39.0, ptr %sum, align 4
  br label %bb20

panic7:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_59e3979b86d81d2734ef5458dd2a0fcd) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb45
  %52 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb46:                                             ; preds = %bb45
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds i8, ptr %4, i64 8
  %55 = load i32, ptr %54, align 8
  %56 = insertvalue { ptr, i32 } poison, ptr %53, 0
  %57 = insertvalue { ptr, i32 } %56, i32 %55, 1
  resume { ptr, i32 } %57
}
