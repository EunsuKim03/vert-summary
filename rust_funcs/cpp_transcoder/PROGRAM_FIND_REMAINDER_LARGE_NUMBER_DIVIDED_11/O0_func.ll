define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %rem = alloca [4 x i8], align 4
  %num = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %_3 = invoke i64 @_ZN5alloc6string6String3len17ha74d5434e394a6acE(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb19:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb437363126019f00E"(ptr align 8 %str) #21
          to label %bb20 unwind label %terminate

cleanup:                                          ; preds = %bb2.i, %panic3, %panic2, %panic1, %bb11, %bb10, %bb9, %panic, %bb4, %bb2, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb19

bb1:                                              ; preds = %start
  %len = trunc i64 %_3 to i32
  store i32 0, ptr %num, align 4
  store i32 0, ptr %rem, align 4
  %_9 = invoke i32 @min(i32 %len, i32 11)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd47d372f1c389edfE"(i32 0, i32 %_9)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_7.0 = extractvalue { i32, i32 } %5, 0
  %_7.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_7.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %6, align 4
  br label %bb4

bb4:                                              ; preds = %bb17, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc2eac8624fa9a9f8E"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_11, align 4
  %10 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_11, align 4
  %12 = getelementptr inbounds i8, ptr %_11, i64 4
  %13 = load i32, ptr %12, align 4
  %_13 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_13 to i1
  br i1 %14, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %15, align 4
  %_16 = load i32, ptr %rem, align 4
  %16 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_16, i32 10)
  %_17.0 = extractvalue { i32, i1 } %16, 0
  %_17.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_17.1, label %panic, label %bb9

bb8:                                              ; preds = %bb5
  %_0 = load i32, ptr %rem, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb437363126019f00E"(ptr align 8 %str)
  ret i32 %_0

bb9:                                              ; preds = %bb7
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %17 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hc154339385780263E"(ptr align 8 %str)
          to label %bb10 unwind label %cleanup

panic:                                            ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3b929662036f0bdfdc1434963d809e17) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2, %panic1, %panic
  unreachable

bb10:                                             ; preds = %bb9
  %_24.0 = extractvalue { ptr, i64 } %17, 0
  %_24.1 = extractvalue { ptr, i64 } %17, 1
; invoke core::str::<impl str>::chars
  %18 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h54e2952e6997ae0bE"(ptr align 1 %_24.0, i64 %_24.1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  store ptr %19, ptr %_23, align 8
  %21 = getelementptr inbounds i8, ptr %_23, i64 8
  store ptr %20, ptr %21, align 8
  %_26 = sext i32 %i to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %_21 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h90546c2cc15a4d6bE(ptr align 8 %_23, i64 %_26)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i32 %_21, ptr %self.i, align 4
  %22 = load i32, ptr %self.i, align 4
  %23 = icmp eq i32 %22, 1114112
  %_2.i = select i1 %23, i64 0, i64 1
  %24 = trunc nuw i64 %_2.i to i1
  br i1 %24, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h21eb8e9828e86fecE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb12
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_e0b90d94706423d98f418d2e5899ab1c) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h21eb8e9828e86fecE.exit": ; preds = %bb12
  %val.i = load i32, ptr %self.i, align 4
  br label %bb13

bb13:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h21eb8e9828e86fecE.exit"
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_28.0 = extractvalue { i32, i1 } %25, 0
  %_28.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_28.1, label %panic1, label %bb14

bb14:                                             ; preds = %bb13
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_17.0, i32 %_28.0)
  %_29.0 = extractvalue { i32, i1 } %26, 0
  %_29.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_29.1, label %panic2, label %bb15

panic1:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_66c72744a5a94d4c8b24978b03050e40) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  store i32 %_29.0, ptr %num, align 4
  %_30 = load i32, ptr %num, align 4
  br label %bb16

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3b929662036f0bdfdc1434963d809e17) #23
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_33 = icmp eq i32 %_30, -2147483648
  %_34 = and i1 false, %_33
  br i1 %_34, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
  %27 = srem i32 %_30, 11
  store i32 %27, ptr %rem, align 4
  br label %bb4

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_1247a14dde6f882234335d4d8cfbf189) #23
          to label %unreachable unwind label %cleanup

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb19
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb20:                                             ; preds = %bb19
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}
