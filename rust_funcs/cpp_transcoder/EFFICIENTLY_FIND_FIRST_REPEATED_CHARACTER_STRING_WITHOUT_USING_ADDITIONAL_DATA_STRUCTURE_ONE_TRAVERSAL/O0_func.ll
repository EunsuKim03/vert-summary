define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %checker = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %checker, align 4
; invoke alloc::string::String::len
  %_5 = invoke i64 @_ZN5alloc6string6String3len17h7311e19d8b3eb1a4E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb18:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e4b2c5071b35c8bE"(ptr align 8 %str) #21
          to label %bb19 unwind label %terminate

cleanup:                                          ; preds = %bb2.i, %panic2, %panic1, %panic, %bb9, %bb8, %bb6, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb18

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4f2b083820b81fcbE"(i64 0, i64 %_5)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_3.0 = extractvalue { i64, i64 } %5, 0
  %_3.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_3.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_3.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb16, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0599345c53ef2ec7E"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_8, align 8
  %10 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %9, ptr %10, align 8
  %_10 = load i64, ptr %_8, align 8
  %11 = getelementptr inbounds i8, ptr %_8, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_10 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_8, i64 8
  %i = load i64, ptr %14, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2c2669152bceb1dbE"(ptr align 8 %str)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  store i32 -1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e4b2c5071b35c8bE"(ptr align 8 %str)
  br label %bb17

bb17:                                             ; preds = %bb14, %bb7
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb8:                                              ; preds = %bb6
  %_18.0 = extractvalue { ptr, i64 } %15, 0
  %_18.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %17 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h7fdc288a56bb92baE"(ptr align 1 %_18.0, i64 %_18.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %18 = extractvalue { ptr, ptr } %17, 0
  %19 = extractvalue { ptr, ptr } %17, 1
  store ptr %18, ptr %_17, align 8
  %20 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %19, ptr %20, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_15 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h650a34a24b091633E(ptr align 8 %_17, i64 %i)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_15, ptr %self.i, align 4
  %21 = load i32, ptr %self.i, align 4
  %22 = icmp eq i32 %21, 1114112
  %_2.i = select i1 %22, i64 0, i64 1
  %23 = trunc nuw i64 %_2.i to i1
  br i1 %23, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hda9734a8c2ce1344E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_49a71f689d7b3b1e31fef8d7962b435b) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hda9734a8c2ce1344E.exit": ; preds = %bb10
  %val.i = load i32, ptr %self.i, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hda9734a8c2ce1344E.exit"
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 97)
  %_21.0 = extractvalue { i32, i1 } %24, 0
  %_21.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_21.1, label %panic, label %bb12

bb12:                                             ; preds = %bb11
  %_24 = load i32, ptr %checker, align 4
  %_27 = icmp ult i32 %_21.0, 32
  br i1 %_27, label %bb13, label %panic1

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0aa713c25208c4add5018e8e1cf3ae0a) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic1, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %25 = and i32 %_21.0, 31
  %_25 = shl i32 1, %25
  %_23 = and i32 %_24, %_25
  %_22 = icmp sgt i32 %_23, 0
  br i1 %_22, label %bb14, label %bb15

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_shl_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_38c41c6fec1932d58b836e2cae6d815e) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb13
  %_30 = icmp ult i32 %_21.0, 32
  br i1 %_30, label %bb16, label %panic2

bb14:                                             ; preds = %bb13
  %26 = trunc i64 %i to i32
  store i32 %26, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e4b2c5071b35c8bE"(ptr align 8 %str)
  br label %bb17

bb16:                                             ; preds = %bb15
  %27 = and i32 %_21.0, 31
  %_28 = shl i32 1, %27
  %28 = load i32, ptr %checker, align 4
  %29 = or i32 %28, %_28
  store i32 %29, ptr %checker, align 4
  br label %bb3

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_shl_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_2cc21db636c820c2e791261956cd9b78) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb18
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb19:                                             ; preds = %bb18
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr inbounds i8, ptr %0, i64 8
  %33 = load i32, ptr %32, align 8
  %34 = insertvalue { ptr, i32 } poison, ptr %31, 0
  %35 = insertvalue { ptr, i32 } %34, i32 %33, 1
  resume { ptr, i32 } %35
}
