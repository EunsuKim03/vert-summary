define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i12 = alloca [4 x i8], align 4
  %self.i6 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_41 = alloca [16 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %c_count = alloca [4 x i8], align 4
  %b_count = alloca [4 x i8], align 4
  %a_count = alloca [4 x i8], align 4
  store i32 0, ptr %a_count, align 4
  store i32 0, ptr %b_count, align 4
  store i32 0, ptr %c_count, align 4
; invoke alloc::string::String::len
  %_7 = invoke i64 @_ZN5alloc6string6String3len17h3a7453f9eccf1d24E(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb32:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0f892c979e9018e3E"(ptr align 8 %s) #21
          to label %bb33 unwind label %terminate

cleanup:                                          ; preds = %bb2.i14, %bb2.i8, %bb2.i, %panic5, %panic4, %panic3, %panic2, %panic1, %panic, %bb25, %bb24, %bb23, %bb17, %bb16, %bb15, %bb9, %bb8, %bb6, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb32

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hecebe9d8300b7962E"(i64 0, i64 %_7)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_5.0 = extractvalue { i64, i64 } %5, 0
  %_5.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_5.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb14, %bb22, %bb30, %bb27, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h866a195e257c42cfE"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_10, align 8
  %10 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %9, ptr %10, align 8
  %_12 = load i64, ptr %_10, align 8
  %11 = getelementptr inbounds i8, ptr %_10, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_12 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %14, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17ha3ee5d219ed892ddE"(ptr align 8 %s)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  %_0 = load i32, ptr %c_count, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0f892c979e9018e3E"(ptr align 8 %s)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_19.0 = extractvalue { ptr, i64 } %15, 0
  %_19.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %16 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h2d0a5a8f16409b1fE"(ptr align 1 %_19.0, i64 %_19.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %17 = extractvalue { ptr, ptr } %16, 0
  %18 = extractvalue { ptr, ptr } %16, 1
  store ptr %17, ptr %_18, align 8
  %19 = getelementptr inbounds i8, ptr %_18, i64 8
  store ptr %18, ptr %19, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_16 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h483cd3066047d990E(ptr align 8 %_18, i64 %i)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_16, ptr %self.i12, align 4
  %20 = load i32, ptr %self.i12, align 4
  %21 = icmp eq i32 %20, 1114112
  %_2.i13 = select i1 %21, i64 0, i64 1
  %22 = trunc nuw i64 %_2.i13 to i1
  br i1 %22, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h922bb7b99e8c5e26E.exit17", label %bb2.i14

bb2.i14:                                          ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_8f866e941862a0c3a2ebf49fb6f30524) #22
          to label %.noexc16 unwind label %cleanup

.noexc16:                                         ; preds = %bb2.i14
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h922bb7b99e8c5e26E.exit17": ; preds = %bb10
  %val.i15 = load i32, ptr %self.i12, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h922bb7b99e8c5e26E.exit17"
  %_14 = icmp eq i32 %val.i15, 97
  br i1 %_14, label %bb12, label %bb15

bb15:                                             ; preds = %bb11
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %23 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17ha3ee5d219ed892ddE"(ptr align 8 %s)
          to label %bb16 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_22 = load i32, ptr %a_count, align 4
  %24 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_22)
  %_23.0 = extractvalue { i32, i1 } %24, 0
  %_23.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_23.1, label %panic4, label %bb13

bb16:                                             ; preds = %bb15
  %_30.0 = extractvalue { ptr, i64 } %23, 0
  %_30.1 = extractvalue { ptr, i64 } %23, 1
; invoke core::str::<impl str>::chars
  %25 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h2d0a5a8f16409b1fE"(ptr align 1 %_30.0, i64 %_30.1)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %26 = extractvalue { ptr, ptr } %25, 0
  %27 = extractvalue { ptr, ptr } %25, 1
  store ptr %26, ptr %_29, align 8
  %28 = getelementptr inbounds i8, ptr %_29, i64 8
  store ptr %27, ptr %28, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_27 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h483cd3066047d990E(ptr align 8 %_29, i64 %i)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  store i32 %_27, ptr %self.i6, align 4
  %29 = load i32, ptr %self.i6, align 4
  %30 = icmp eq i32 %29, 1114112
  %_2.i7 = select i1 %30, i64 0, i64 1
  %31 = trunc nuw i64 %_2.i7 to i1
  br i1 %31, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h922bb7b99e8c5e26E.exit11", label %bb2.i8

bb2.i8:                                           ; preds = %bb18
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_667cfcb48a43f6ddee90546590ad557f) #22
          to label %.noexc10 unwind label %cleanup

.noexc10:                                         ; preds = %bb2.i8
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h922bb7b99e8c5e26E.exit11": ; preds = %bb18
  %val.i9 = load i32, ptr %self.i6, align 4
  br label %bb19

bb19:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h922bb7b99e8c5e26E.exit11"
  %_25 = icmp eq i32 %val.i9, 98
  br i1 %_25, label %bb20, label %bb23

bb23:                                             ; preds = %bb19
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %32 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17ha3ee5d219ed892ddE"(ptr align 8 %s)
          to label %bb24 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_32 = load i32, ptr %a_count, align 4
  %_34 = load i32, ptr %b_count, align 4
  %33 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_34)
  %_35.0 = extractvalue { i32, i1 } %33, 0
  %_35.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_35.1, label %panic2, label %bb21

bb24:                                             ; preds = %bb23
  %_42.0 = extractvalue { ptr, i64 } %32, 0
  %_42.1 = extractvalue { ptr, i64 } %32, 1
; invoke core::str::<impl str>::chars
  %34 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h2d0a5a8f16409b1fE"(ptr align 1 %_42.0, i64 %_42.1)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %35 = extractvalue { ptr, ptr } %34, 0
  %36 = extractvalue { ptr, ptr } %34, 1
  store ptr %35, ptr %_41, align 8
  %37 = getelementptr inbounds i8, ptr %_41, i64 8
  store ptr %36, ptr %37, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_39 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h483cd3066047d990E(ptr align 8 %_41, i64 %i)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  store i32 %_39, ptr %self.i, align 4
  %38 = load i32, ptr %self.i, align 4
  %39 = icmp eq i32 %38, 1114112
  %_2.i = select i1 %39, i64 0, i64 1
  %40 = trunc nuw i64 %_2.i to i1
  br i1 %40, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h922bb7b99e8c5e26E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb26
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_63139f9ff2eac1c6b684ed220fa47460) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h922bb7b99e8c5e26E.exit": ; preds = %bb26
  %val.i = load i32, ptr %self.i, align 4
  br label %bb27

bb27:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h922bb7b99e8c5e26E.exit"
  %_37 = icmp eq i32 %val.i, 99
  br i1 %_37, label %bb28, label %bb3

bb28:                                             ; preds = %bb27
  %_44 = load i32, ptr %b_count, align 4
  %_46 = load i32, ptr %c_count, align 4
  %41 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_46)
  %_47.0 = extractvalue { i32, i1 } %41, 0
  %_47.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_47.1, label %panic, label %bb29

bb29:                                             ; preds = %bb28
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_44, i32 %_47.0)
  %_48.0 = extractvalue { i32, i1 } %42, 0
  %_48.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_48.1, label %panic1, label %bb30

panic:                                            ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6201fcb6f02a16e0da1f624ff7bba37b) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb30:                                             ; preds = %bb29
  store i32 %_48.0, ptr %c_count, align 4
  br label %bb3

panic1:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_13b14af2ad4584efbffc72d5828ba84c) #23
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 %_35.0)
  %_36.0 = extractvalue { i32, i1 } %43, 0
  %_36.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_36.1, label %panic3, label %bb22

panic2:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d65a40538f96dae00eb46d7a32c7ed33) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_36.0, ptr %b_count, align 4
  br label %bb3

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_abe7ed10f6fe13d1a59a627a9ceafe07) #23
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_23.0)
  %_24.0 = extractvalue { i32, i1 } %44, 0
  %_24.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_24.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8a7dfae01417b5a5f0eed33d4352a071) #23
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  store i32 %_24.0, ptr %a_count, align 4
  br label %bb3

panic5:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_61995ae5585f23518aa0dd0d53037135) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb32
  %45 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb33:                                             ; preds = %bb32
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds i8, ptr %0, i64 8
  %48 = load i32, ptr %47, align 8
  %49 = insertvalue { ptr, i32 } poison, ptr %46, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %48, 1
  resume { ptr, i32 } %50
}
