define i32 @f_gold(ptr align 8 %tree, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i10 = alloca [4 x i8], align 4
  %self.i4 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_37 = alloca [16 x i8], align 8
  %_26 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %level = alloca [4 x i8], align 4
  store i32 -1, ptr %level, align 4
  store i32 0, ptr %sum, align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17hd39d075212c7daddE(ptr align 8 %tree)
          to label %bb1 unwind label %cleanup

bb30:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h22548ba7885097e6E"(ptr align 8 %tree) #21
          to label %bb31 unwind label %terminate

cleanup:                                          ; preds = %bb2.i12, %bb2.i6, %bb2.i, %panic3, %panic2, %panic1, %panic, %bb24, %bb23, %bb22, %bb16, %bb15, %bb14, %bb9, %bb8, %bb6, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb30

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9695dd55026d028eE"(i64 0, i64 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7.0 = extractvalue { i64, i64 } %5, 0
  %_7.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_7.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_7.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb13, %bb20, %bb28, %bb21, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h12d8ce7c87cf5686E"(ptr align 8 %iter)
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
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h60ddc34b8acfc17bE"(ptr align 8 %tree)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  %_0 = load i32, ptr %sum, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h22548ba7885097e6E"(ptr align 8 %tree)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_19.0 = extractvalue { ptr, i64 } %15, 0
  %_19.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %16 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5903bc302ad914c4E"(ptr align 1 %_19.0, i64 %_19.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %17 = extractvalue { ptr, ptr } %16, 0
  %18 = extractvalue { ptr, ptr } %16, 1
  store ptr %17, ptr %_18, align 8
  %19 = getelementptr inbounds i8, ptr %_18, i64 8
  store ptr %18, ptr %19, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_16 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h6c854cd8bc254a73E(ptr align 8 %_18, i64 %i)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_16, ptr %self.i10, align 4
  %20 = load i32, ptr %self.i10, align 4
  %21 = icmp eq i32 %20, 1114112
  %_2.i11 = select i1 %21, i64 0, i64 1
  %22 = trunc nuw i64 %_2.i11 to i1
  br i1 %22, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit15", label %bb2.i12

bb2.i12:                                          ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_72bb1cacbe37b21844fb033d96f6a192) #22
          to label %.noexc14 unwind label %cleanup

.noexc14:                                         ; preds = %bb2.i12
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit15": ; preds = %bb10
  %val.i13 = load i32, ptr %self.i10, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit15"
  %_14 = icmp eq i32 %val.i13, 40
  br i1 %_14, label %bb12, label %bb14

bb14:                                             ; preds = %bb11
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %23 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h60ddc34b8acfc17bE"(ptr align 8 %tree)
          to label %bb15 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %24 = load i32, ptr %level, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %_21.0 = extractvalue { i32, i1 } %25, 0
  %_21.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_21.1, label %panic3, label %bb13

bb15:                                             ; preds = %bb14
  %_27.0 = extractvalue { ptr, i64 } %23, 0
  %_27.1 = extractvalue { ptr, i64 } %23, 1
; invoke core::str::<impl str>::chars
  %26 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5903bc302ad914c4E"(ptr align 1 %_27.0, i64 %_27.1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %27 = extractvalue { ptr, ptr } %26, 0
  %28 = extractvalue { ptr, ptr } %26, 1
  store ptr %27, ptr %_26, align 8
  %29 = getelementptr inbounds i8, ptr %_26, i64 8
  store ptr %28, ptr %29, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_24 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h6c854cd8bc254a73E(ptr align 8 %_26, i64 %i)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  store i32 %_24, ptr %self.i4, align 4
  %30 = load i32, ptr %self.i4, align 4
  %31 = icmp eq i32 %30, 1114112
  %_2.i5 = select i1 %31, i64 0, i64 1
  %32 = trunc nuw i64 %_2.i5 to i1
  br i1 %32, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit9", label %bb2.i6

bb2.i6:                                           ; preds = %bb17
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_a7596a9ae817806d1dafa1e8d5c902fd) #22
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb2.i6
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit9": ; preds = %bb17
  %val.i7 = load i32, ptr %self.i4, align 4
  br label %bb18

bb18:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit9"
  %_22 = icmp eq i32 %val.i7, 41
  br i1 %_22, label %bb19, label %bb21

bb21:                                             ; preds = %bb18
  %_31 = load i32, ptr %level, align 4
  %_30 = icmp eq i32 %_31, %k
  br i1 %_30, label %bb22, label %bb3

bb19:                                             ; preds = %bb18
  %33 = load i32, ptr %level, align 4
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %33, i32 1)
  %_29.0 = extractvalue { i32, i1 } %34, 0
  %_29.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_29.1, label %panic2, label %bb20

bb22:                                             ; preds = %bb21
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %35 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h60ddc34b8acfc17bE"(ptr align 8 %tree)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_38.0 = extractvalue { ptr, i64 } %35, 0
  %_38.1 = extractvalue { ptr, i64 } %35, 1
; invoke core::str::<impl str>::chars
  %36 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5903bc302ad914c4E"(ptr align 1 %_38.0, i64 %_38.1)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %37 = extractvalue { ptr, ptr } %36, 0
  %38 = extractvalue { ptr, ptr } %36, 1
  store ptr %37, ptr %_37, align 8
  %39 = getelementptr inbounds i8, ptr %_37, i64 8
  store ptr %38, ptr %39, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_35 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h6c854cd8bc254a73E(ptr align 8 %_37, i64 %i)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  store i32 %_35, ptr %self.i, align 4
  %40 = load i32, ptr %self.i, align 4
  %41 = icmp eq i32 %40, 1114112
  %_2.i = select i1 %41, i64 0, i64 1
  %42 = trunc nuw i64 %_2.i to i1
  br i1 %42, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb25
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_94ab4f1d72df9a1d3664ad12a75d8c88) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit": ; preds = %bb25
  %val.i = load i32, ptr %self.i, align 4
  br label %bb26

bb26:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit"
  %43 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_41.0 = extractvalue { i32, i1 } %43, 0
  %_41.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_41.1, label %panic, label %bb27

bb27:                                             ; preds = %bb26
  %44 = load i32, ptr %sum, align 4
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %44, i32 %_41.0)
  %_42.0 = extractvalue { i32, i1 } %45, 0
  %_42.1 = extractvalue { i32, i1 } %45, 1
  br i1 %_42.1, label %panic1, label %bb28

panic:                                            ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9ed1289a79f481258ee0eeff0cc83b29) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2, %panic1, %panic
  unreachable

bb28:                                             ; preds = %bb27
  store i32 %_42.0, ptr %sum, align 4
  br label %bb3

panic1:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9f2e38fc5745da9af7f73c8660365883) #23
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i32 %_29.0, ptr %level, align 4
  br label %bb3

panic2:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3e71544f75f7ecdcbddfa4a68c23e72f) #23
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  store i32 %_21.0, ptr %level, align 4
  br label %bb3

panic3:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7940afc001701db5590e3d266f00eab0) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb30
  %46 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb31:                                             ; preds = %bb30
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds i8, ptr %0, i64 8
  %49 = load i32, ptr %48, align 8
  %50 = insertvalue { ptr, i32 } poison, ptr %47, 0
  %51 = insertvalue { ptr, i32 } %50, i32 %49, 1
  resume { ptr, i32 } %51
}
