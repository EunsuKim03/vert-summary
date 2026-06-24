define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i20 = alloca [4 x i8], align 4
  %self.i14 = alloca [4 x i8], align 4
  %self.i8 = alloca [4 x i8], align 4
  %self.i2 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_52 = alloca [16 x i8], align 8
  %_45 = alloca [16 x i8], align 8
  %_36 = alloca [16 x i8], align 8
  %_26 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %count = alloca [4 x i8], align 4
  %one_seen = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %len = invoke i64 @_ZN5alloc6string6String3len17h013995dec56b7075E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb40:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hff350c673a32a625E"(ptr align 8 %str) #21
          to label %bb41 unwind label %terminate

cleanup:                                          ; preds = %bb2.i22, %bb2.i16, %bb2.i10, %bb2.i4, %bb2.i, %bb35, %bb34, %bb33, %bb30, %bb29, %bb28, %bb23, %bb22, %bb21, %panic1, %bb16, %panic, %bb14, %bb13, %bb9, %bb8, %bb6, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb40

bb1:                                              ; preds = %start
  store i32 0, ptr %one_seen, align 4
  store i32 0, ptr %count, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8191ece2f07d0088E"(i64 0, i64 %len)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { i64, i64 } %5, 0
  %_6.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_6.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb27, %bb38, %bb37, %bb32, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h89057786f8a98ef8E"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_9, align 8
  %10 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %9, ptr %10, align 8
  %_11 = load i64, ptr %_9, align 8
  %11 = getelementptr inbounds i8, ptr %_9, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_11 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_9, i64 8
  %i = load i64, ptr %14, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h903c35a5abefca23E"(ptr align 8 %str)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  %_0 = load i32, ptr %count, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hff350c673a32a625E"(ptr align 8 %str)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_18.0 = extractvalue { ptr, i64 } %15, 0
  %_18.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %16 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h64965853a365dd33E"(ptr align 1 %_18.0, i64 %_18.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %17 = extractvalue { ptr, ptr } %16, 0
  %18 = extractvalue { ptr, ptr } %16, 1
  store ptr %17, ptr %_17, align 8
  %19 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %18, ptr %19, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_15 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr align 8 %_17, i64 %i)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_15, ptr %self.i20, align 4
  %20 = load i32, ptr %self.i20, align 4
  %21 = icmp eq i32 %20, 1114112
  %_2.i21 = select i1 %21, i64 0, i64 1
  %22 = trunc nuw i64 %_2.i21 to i1
  br i1 %22, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit25", label %bb2.i22

bb2.i22:                                          ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_688d8caaad636dc803c1acd2d7a014ed) #22
          to label %.noexc24 unwind label %cleanup

.noexc24:                                         ; preds = %bb2.i22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit25": ; preds = %bb10
  %val.i23 = load i32, ptr %self.i20, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit25"
  %_13 = icmp eq i32 %val.i23, 49
  br i1 %_13, label %bb12, label %bb21

bb21:                                             ; preds = %bb20, %bb18, %bb12, %bb11
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %23 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h903c35a5abefca23E"(ptr align 8 %str)
          to label %bb22 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_21 = load i32, ptr %one_seen, align 4
  %_20 = icmp eq i32 %_21, 1
  br i1 %_20, label %bb13, label %bb21

bb13:                                             ; preds = %bb12
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %24 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h903c35a5abefca23E"(ptr align 8 %str)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_27.0 = extractvalue { ptr, i64 } %24, 0
  %_27.1 = extractvalue { ptr, i64 } %24, 1
; invoke core::str::<impl str>::chars
  %25 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h64965853a365dd33E"(ptr align 1 %_27.0, i64 %_27.1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %26 = extractvalue { ptr, ptr } %25, 0
  %27 = extractvalue { ptr, ptr } %25, 1
  store ptr %26, ptr %_26, align 8
  %28 = getelementptr inbounds i8, ptr %_26, i64 8
  store ptr %27, ptr %28, align 8
  %_30.0 = sub i64 %i, 1
  %_30.1 = icmp ult i64 %i, 1
  br i1 %_30.1, label %panic, label %bb16

bb16:                                             ; preds = %bb15
; invoke core::iter::traits::iterator::Iterator::nth
  %_24 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr align 8 %_26, i64 %_30.0)
          to label %bb17 unwind label %cleanup

panic:                                            ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dfad23415893aece1cd4297899a4118b) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic1, %panic
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_24, ptr %self.i14, align 4
  %29 = load i32, ptr %self.i14, align 4
  %30 = icmp eq i32 %29, 1114112
  %_2.i15 = select i1 %30, i64 0, i64 1
  %31 = trunc nuw i64 %_2.i15 to i1
  br i1 %31, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit19", label %bb2.i16

bb2.i16:                                          ; preds = %bb17
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_cb2cd9413476aa696aa8655e7f9d7e0b) #22
          to label %.noexc18 unwind label %cleanup

.noexc18:                                         ; preds = %bb2.i16
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit19": ; preds = %bb17
  %val.i17 = load i32, ptr %self.i14, align 4
  br label %bb18

bb18:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit19"
  %_22 = icmp eq i32 %val.i17, 48
  br i1 %_22, label %bb19, label %bb21

bb19:                                             ; preds = %bb18
  %32 = load i32, ptr %count, align 4
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 1)
  %_31.0 = extractvalue { i32, i1 } %33, 0
  %_31.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_31.1, label %panic1, label %bb20

bb20:                                             ; preds = %bb19
  store i32 %_31.0, ptr %count, align 4
  br label %bb21

panic1:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e2eed0d4d23509f96325a0a5002d25f7) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_37.0 = extractvalue { ptr, i64 } %23, 0
  %_37.1 = extractvalue { ptr, i64 } %23, 1
; invoke core::str::<impl str>::chars
  %34 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h64965853a365dd33E"(ptr align 1 %_37.0, i64 %_37.1)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %35 = extractvalue { ptr, ptr } %34, 0
  %36 = extractvalue { ptr, ptr } %34, 1
  store ptr %35, ptr %_36, align 8
  %37 = getelementptr inbounds i8, ptr %_36, i64 8
  store ptr %36, ptr %37, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_34 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr align 8 %_36, i64 %i)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  store i32 %_34, ptr %self.i8, align 4
  %38 = load i32, ptr %self.i8, align 4
  %39 = icmp eq i32 %38, 1114112
  %_2.i9 = select i1 %39, i64 0, i64 1
  %40 = trunc nuw i64 %_2.i9 to i1
  br i1 %40, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit13", label %bb2.i10

bb2.i10:                                          ; preds = %bb24
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_eede39662f2173f116cbbbf30563cc8b) #22
          to label %.noexc12 unwind label %cleanup

.noexc12:                                         ; preds = %bb2.i10
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit13": ; preds = %bb24
  %val.i11 = load i32, ptr %self.i8, align 4
  br label %bb25

bb25:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit13"
  %_32 = icmp eq i32 %val.i11, 49
  br i1 %_32, label %bb26, label %bb28

bb28:                                             ; preds = %bb26, %bb25
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %41 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h903c35a5abefca23E"(ptr align 8 %str)
          to label %bb29 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_40 = load i32, ptr %one_seen, align 4
  %_39 = icmp eq i32 %_40, 0
  br i1 %_39, label %bb27, label %bb28

bb27:                                             ; preds = %bb26
  store i32 1, ptr %one_seen, align 4
  br label %bb3

bb29:                                             ; preds = %bb28
  %_46.0 = extractvalue { ptr, i64 } %41, 0
  %_46.1 = extractvalue { ptr, i64 } %41, 1
; invoke core::str::<impl str>::chars
  %42 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h64965853a365dd33E"(ptr align 1 %_46.0, i64 %_46.1)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb29
  %43 = extractvalue { ptr, ptr } %42, 0
  %44 = extractvalue { ptr, ptr } %42, 1
  store ptr %43, ptr %_45, align 8
  %45 = getelementptr inbounds i8, ptr %_45, i64 8
  store ptr %44, ptr %45, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_43 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr align 8 %_45, i64 %i)
          to label %bb31 unwind label %cleanup

bb31:                                             ; preds = %bb30
  store i32 %_43, ptr %self.i2, align 4
  %46 = load i32, ptr %self.i2, align 4
  %47 = icmp eq i32 %46, 1114112
  %_2.i3 = select i1 %47, i64 0, i64 1
  %48 = trunc nuw i64 %_2.i3 to i1
  br i1 %48, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit7", label %bb2.i4

bb2.i4:                                           ; preds = %bb31
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_93d52e31445b8aa913756eedbf5fb849) #22
          to label %.noexc6 unwind label %cleanup

.noexc6:                                          ; preds = %bb2.i4
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit7": ; preds = %bb31
  %val.i5 = load i32, ptr %self.i2, align 4
  br label %bb32

bb32:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit7"
  %_41 = icmp ne i32 %val.i5, 48
  br i1 %_41, label %bb33, label %bb3

bb33:                                             ; preds = %bb32
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %49 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h903c35a5abefca23E"(ptr align 8 %str)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  %_53.0 = extractvalue { ptr, i64 } %49, 0
  %_53.1 = extractvalue { ptr, i64 } %49, 1
; invoke core::str::<impl str>::chars
  %50 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h64965853a365dd33E"(ptr align 1 %_53.0, i64 %_53.1)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb34
  %51 = extractvalue { ptr, ptr } %50, 0
  %52 = extractvalue { ptr, ptr } %50, 1
  store ptr %51, ptr %_52, align 8
  %53 = getelementptr inbounds i8, ptr %_52, i64 8
  store ptr %52, ptr %53, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_50 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr align 8 %_52, i64 %i)
          to label %bb36 unwind label %cleanup

bb36:                                             ; preds = %bb35
  store i32 %_50, ptr %self.i, align 4
  %54 = load i32, ptr %self.i, align 4
  %55 = icmp eq i32 %54, 1114112
  %_2.i = select i1 %55, i64 0, i64 1
  %56 = trunc nuw i64 %_2.i to i1
  br i1 %56, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb36
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_100013cdb7d392daed1279cb07969aaa) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit": ; preds = %bb36
  %val.i = load i32, ptr %self.i, align 4
  br label %bb37

bb37:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6d156a1ae12dd6feE.exit"
  %_48 = icmp ne i32 %val.i, 49
  br i1 %_48, label %bb38, label %bb3

bb38:                                             ; preds = %bb37
  store i32 0, ptr %one_seen, align 4
  br label %bb3

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb40
  %57 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb41:                                             ; preds = %bb40
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr inbounds i8, ptr %0, i64 8
  %60 = load i32, ptr %59, align 8
  %61 = insertvalue { ptr, i32 } poison, ptr %58, 0
  %62 = insertvalue { ptr, i32 } %61, i32 %60, 1
  resume { ptr, i32 } %62
}
