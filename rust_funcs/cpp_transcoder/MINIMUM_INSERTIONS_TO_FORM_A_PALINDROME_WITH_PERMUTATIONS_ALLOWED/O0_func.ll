define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_28 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %count = alloca [104 x i8], align 4
  %res = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17hf71007535983b56bE(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb30:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1d47141054ab0ac0E"(ptr align 8 %str) #21
          to label %bb31 unwind label %terminate

cleanup:                                          ; preds = %bb2.i, %panic8, %panic7, %panic6, %bb9, %bb8, %bb6, %panic4, %panic3, %panic2, %panic, %bb16, %bb7, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb30

bb1:                                              ; preds = %start
  store i32 0, ptr %res, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %count, i8 0, i64 104, i1 false)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc2e8cc41b7370384E"(i64 0, i64 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { i64, i64 } %5, 0
  %_6.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_6.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb14, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17heb4d93508ffb6027E"(ptr align 8 %iter)
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
  %i5 = load i64, ptr %14, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb03761ac7e984537E"(ptr align 8 %str)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc2e8cc41b7370384E"(i64 0, i64 26)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb7
  %_25.0 = extractvalue { i64, i64 } %16, 0
  %_25.1 = extractvalue { i64, i64 } %16, 1
  store i64 %_25.0, ptr %iter1, align 8
  %17 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_25.1, ptr %17, align 8
  br label %bb16

bb16:                                             ; preds = %bb24, %bb22, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17heb4d93508ffb6027E"(ptr align 8 %iter1)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  store i64 %19, ptr %_28, align 8
  %21 = getelementptr inbounds i8, ptr %_28, i64 8
  store i64 %20, ptr %21, align 8
  %_30 = load i64, ptr %_28, align 8
  %22 = getelementptr inbounds i8, ptr %_28, i64 8
  %23 = load i64, ptr %22, align 8
  %24 = trunc nuw i64 %_30 to i1
  br i1 %24, label %bb18, label %bb19

bb18:                                             ; preds = %bb17
  %25 = getelementptr inbounds i8, ptr %_28, i64 8
  %i = load i64, ptr %25, align 8
  %_35 = icmp ult i64 %i, 26
  br i1 %_35, label %bb20, label %panic2

bb19:                                             ; preds = %bb17
  %_42 = load i32, ptr %res, align 4
  %_41 = icmp eq i32 %_42, 0
  br i1 %_41, label %bb25, label %bb26

bb26:                                             ; preds = %bb19
  %_43 = load i32, ptr %res, align 4
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_43, i32 1)
  %_44.0 = extractvalue { i32, i1 } %26, 0
  %_44.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_44.1, label %panic, label %bb27

bb25:                                             ; preds = %bb19
  store i32 0, ptr %_0, align 4
  br label %bb28

bb27:                                             ; preds = %bb26
  store i32 %_44.0, ptr %_0, align 4
  br label %bb28

panic:                                            ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e7042ba38ded514295f69720b9cb6189) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic4, %panic3, %panic2, %panic
  unreachable

bb28:                                             ; preds = %bb25, %bb27
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1d47141054ab0ac0E"(ptr align 8 %str)
  %27 = load i32, ptr %_0, align 4
  ret i32 %27

bb20:                                             ; preds = %bb18
  %28 = getelementptr inbounds nuw i32, ptr %count, i64 %i
  %_34 = load i32, ptr %28, align 4
  br label %bb21

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 26, ptr align 8 @alloc_f9e47ddb330ff8029ef320d253767619) #23
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_38 = icmp eq i32 %_34, -2147483648
  %_39 = and i1 false, %_38
  br i1 %_39, label %panic3, label %bb22

bb22:                                             ; preds = %bb21
  %_33 = srem i32 %_34, 2
  %_32 = icmp eq i32 %_33, 1
  br i1 %_32, label %bb23, label %bb16

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_f9e47ddb330ff8029ef320d253767619) #23
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %29 = load i32, ptr %res, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %_40.0 = extractvalue { i32, i1 } %30, 0
  %_40.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_40.1, label %panic4, label %bb24

bb24:                                             ; preds = %bb23
  store i32 %_40.0, ptr %res, align 4
  br label %bb16

panic4:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_55116d131854e625622ae338bfc16222) #23
          to label %unreachable unwind label %cleanup

bb8:                                              ; preds = %bb6
  %_19.0 = extractvalue { ptr, i64 } %15, 0
  %_19.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %31 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h0d00951f8741bc87E"(ptr align 1 %_19.0, i64 %_19.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %32 = extractvalue { ptr, ptr } %31, 0
  %33 = extractvalue { ptr, ptr } %31, 1
  store ptr %32, ptr %_18, align 8
  %34 = getelementptr inbounds i8, ptr %_18, i64 8
  store ptr %33, ptr %34, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_16 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h91bcce2a4f02ac2aE(ptr align 8 %_18, i64 %i5)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_16, ptr %self.i, align 4
  %35 = load i32, ptr %self.i, align 4
  %36 = icmp eq i32 %35, 1114112
  %_2.i = select i1 %36, i64 0, i64 1
  %37 = trunc nuw i64 %_2.i to i1
  br i1 %37, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd95500ebf43bb41eE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_b2186d8e3a80cbd6341c9cd0f3c69488) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd95500ebf43bb41eE.exit": ; preds = %bb10
  %val.i = load i32, ptr %self.i, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd95500ebf43bb41eE.exit"
  %_14 = zext i32 %val.i to i64
  %_22.0 = sub i64 %_14, 97
  %_22.1 = icmp ult i64 %_14, 97
  br i1 %_22.1, label %panic6, label %bb12

bb12:                                             ; preds = %bb11
  %_23 = icmp ult i64 %_22.0, 26
  br i1 %_23, label %bb13, label %panic7

panic6:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ba9ccbf9296372ac0e6b78a58a677cd6) #23
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %38 = getelementptr inbounds nuw i32, ptr %count, i64 %_22.0
  %39 = load i32, ptr %38, align 4
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 1)
  %_24.0 = extractvalue { i32, i1 } %40, 0
  %_24.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_24.1, label %panic8, label %bb14

panic7:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22.0, i64 26, ptr align 8 @alloc_db80c4a6ef2a83fda03ba72df6e18871) #23
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %41 = getelementptr inbounds nuw i32, ptr %count, i64 %_22.0
  store i32 %_24.0, ptr %41, align 4
  br label %bb3

panic8:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_db80c4a6ef2a83fda03ba72df6e18871) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb30
  %42 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb31:                                             ; preds = %bb30
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds i8, ptr %0, i64 8
  %45 = load i32, ptr %44, align 8
  %46 = insertvalue { ptr, i32 } poison, ptr %43, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1
  resume { ptr, i32 } %47
}
