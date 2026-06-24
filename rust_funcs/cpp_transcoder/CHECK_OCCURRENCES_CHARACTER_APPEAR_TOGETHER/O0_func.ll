define i32 @f_gold(ptr align 8 %s, i32 %c) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i2 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %i = alloca [8 x i8], align 8
  %one_seen = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %one_seen, align 4
  store i64 0, ptr %i, align 8
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h9245b9e613a68578E(ptr align 8 %s)
          to label %bb24 unwind label %cleanup

bb22:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h77a1045ed024e451E"(ptr align 8 %s) #21
          to label %bb23 unwind label %terminate

cleanup:                                          ; preds = %bb2.i4, %bb2.i, %panic1, %bb12, %bb11, %bb10, %panic, %bb4, %bb3, %bb2, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb22

bb24:                                             ; preds = %start
  br label %bb1

bb1:                                              ; preds = %bb17, %bb19, %bb24
  %_8 = load i64, ptr %i, align 8
  %_7 = icmp ult i64 %_8, %n
  br i1 %_7, label %bb2, label %bb20

bb20:                                             ; preds = %bb1
  store i32 1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h77a1045ed024e451E"(ptr align 8 %s)
  br label %bb21

bb2:                                              ; preds = %bb1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h42cc47c5fd6528f7E"(ptr align 8 %s)
          to label %bb3 unwind label %cleanup

bb21:                                             ; preds = %bb8, %bb20
  %6 = load i32, ptr %_0, align 4
  ret i32 %6

bb3:                                              ; preds = %bb2
  %_14.0 = extractvalue { ptr, i64 } %5, 0
  %_14.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %7 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h0a38fb5c8a28641aE"(ptr align 1 %_14.0, i64 %_14.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { ptr, ptr } %7, 0
  %9 = extractvalue { ptr, ptr } %7, 1
  store ptr %8, ptr %_13, align 8
  %10 = getelementptr inbounds i8, ptr %_13, i64 8
  store ptr %9, ptr %10, align 8
  %_16 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_11 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17he2b8805943b3a86dE(ptr align 8 %_13, i64 %_16)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 %_11, ptr %self.i2, align 4
  %11 = load i32, ptr %self.i2, align 4
  %12 = icmp eq i32 %11, 1114112
  %_2.i3 = select i1 %12, i64 0, i64 1
  %13 = trunc nuw i64 %_2.i3 to i1
  br i1 %13, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h9d500985c45ed15bE.exit7", label %bb2.i4

bb2.i4:                                           ; preds = %bb5
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_c8b2f52b66ad242467ff179b0c1e3a9e) #22
          to label %.noexc6 unwind label %cleanup

.noexc6:                                          ; preds = %bb2.i4
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h9d500985c45ed15bE.exit7": ; preds = %bb5
  %val.i5 = load i32, ptr %self.i2, align 4
  br label %bb6

bb6:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h9d500985c45ed15bE.exit7"
  %_9 = icmp eq i32 %val.i5, %c
  br i1 %_9, label %bb7, label %bb18

bb18:                                             ; preds = %bb6
  %14 = load i64, ptr %i, align 8
  %_30.0 = add i64 %14, 1
  %_30.1 = icmp ult i64 %_30.0, %14
  br i1 %_30.1, label %panic, label %bb19

bb7:                                              ; preds = %bb6
  %_18 = load i32, ptr %one_seen, align 4
  %_17 = icmp eq i32 %_18, 1
  br i1 %_17, label %bb8, label %bb9

bb19:                                             ; preds = %bb18
  store i64 %_30.0, ptr %i, align 8
  br label %bb1

panic:                                            ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_47e88dabf225f25fb76c328850ae7081) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic1, %panic
  unreachable

bb9:                                              ; preds = %bb16, %bb7
  %_20 = load i64, ptr %i, align 8
  %_19 = icmp ult i64 %_20, %n
  br i1 %_19, label %bb10, label %bb17

bb8:                                              ; preds = %bb7
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h77a1045ed024e451E"(ptr align 8 %s)
  br label %bb21

bb17:                                             ; preds = %bb14, %bb9
  store i32 1, ptr %one_seen, align 4
  br label %bb1

bb10:                                             ; preds = %bb9
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h42cc47c5fd6528f7E"(ptr align 8 %s)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_26.0 = extractvalue { ptr, i64 } %15, 0
  %_26.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %16 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h0a38fb5c8a28641aE"(ptr align 1 %_26.0, i64 %_26.1)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %17 = extractvalue { ptr, ptr } %16, 0
  %18 = extractvalue { ptr, ptr } %16, 1
  store ptr %17, ptr %_25, align 8
  %19 = getelementptr inbounds i8, ptr %_25, i64 8
  store ptr %18, ptr %19, align 8
  %_28 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_23 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17he2b8805943b3a86dE(ptr align 8 %_25, i64 %_28)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store i32 %_23, ptr %self.i, align 4
  %20 = load i32, ptr %self.i, align 4
  %21 = icmp eq i32 %20, 1114112
  %_2.i = select i1 %21, i64 0, i64 1
  %22 = trunc nuw i64 %_2.i to i1
  br i1 %22, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h9d500985c45ed15bE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb13
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_aecda470804c2e4e7199fcb2c628395e) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h9d500985c45ed15bE.exit": ; preds = %bb13
  %val.i = load i32, ptr %self.i, align 4
  br label %bb14

bb14:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h9d500985c45ed15bE.exit"
  %_21 = icmp eq i32 %val.i, %c
  br i1 %_21, label %bb15, label %bb17

bb15:                                             ; preds = %bb14
  %23 = load i64, ptr %i, align 8
  %_29.0 = add i64 %23, 1
  %_29.1 = icmp ult i64 %_29.0, %23
  br i1 %_29.1, label %panic1, label %bb16

bb16:                                             ; preds = %bb15
  store i64 %_29.0, ptr %i, align 8
  br label %bb9

panic1:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4bb3bdf8289964263e6129d0d09ae3d5) #23
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb22
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb23:                                             ; preds = %bb22
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = insertvalue { ptr, i32 } poison, ptr %25, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}
