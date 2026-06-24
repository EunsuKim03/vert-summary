define void @f_gold(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %s, i32 %0, i32 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %self.i4 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %2 = alloca [16 x i8], align 8
  %_43 = alloca [24 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_27 = alloca [24 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %c2 = alloca [4 x i8], align 4
  %c1 = alloca [4 x i8], align 4
  store i32 %0, ptr %c1, align 4
  store i32 %1, ptr %c2, align 4
; invoke alloc::string::String::len
  %l = invoke i64 @_ZN5alloc6string6String3len17h2612cbb629d1da75E(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb29:                                             ; preds = %bb28, %bb27, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr align 8 %s) #20
          to label %bb30 unwind label %terminate

cleanup:                                          ; preds = %bb2.i6, %bb2.i, %bb16, %bb13, %panic2, %bb26, %bb23, %panic, %bb19, %bb18, %bb17, %bb9, %bb8, %bb6, %bb3, %bb1, %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %2, align 8
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb29

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7ff7b05ca0fbb038E"(i64 0, i64 %l)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { i64, i64 } %7, 0
  %_6.1 = extractvalue { i64, i64 } %7, 1
  store i64 %_6.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %8, align 8
  br label %bb3

bb3:                                              ; preds = %bb16, %bb26, %bb21, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f3cd74a808c6f5eE"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_9, align 8
  %12 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %11, ptr %12, align 8
  %_11 = load i64, ptr %_9, align 8
  %13 = getelementptr inbounds i8, ptr %_9, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_11 to i1
  br i1 %15, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %16 = getelementptr inbounds i8, ptr %_9, i64 8
  %i = load i64, ptr %16, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %17 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf6c2cc9756f4d177E"(ptr align 8 %s)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %s, i64 24, i1 false)
  ret void

bb8:                                              ; preds = %bb6
  %_18.0 = extractvalue { ptr, i64 } %17, 0
  %_18.1 = extractvalue { ptr, i64 } %17, 1
; invoke core::str::<impl str>::chars
  %18 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hcc5530448c83b7e7E"(ptr align 1 %_18.0, i64 %_18.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  store ptr %19, ptr %_17, align 8
  %21 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %20, ptr %21, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_15 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3fa37af0af5de09E(ptr align 8 %_17, i64 %i)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_15, ptr %self.i4, align 4
  %22 = load i32, ptr %self.i4, align 4
  %23 = icmp eq i32 %22, 1114112
  %_2.i5 = select i1 %23, i64 0, i64 1
  %24 = trunc nuw i64 %_2.i5 to i1
  br i1 %24, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc50887782b24045aE.exit9", label %bb2.i6

bb2.i6:                                           ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_95740aa5a3105863e5e0aea14ec0eaa4) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb2.i6
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hc50887782b24045aE.exit9": ; preds = %bb10
  %val.i7 = load i32, ptr %self.i4, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc50887782b24045aE.exit9"
  %25 = load i32, ptr %c1, align 4
  %_13 = icmp eq i32 %val.i7, %25
  br i1 %_13, label %bb12, label %bb17

bb17:                                             ; preds = %bb11
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %26 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf6c2cc9756f4d177E"(ptr align 8 %s)
          to label %bb18 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_24.0 = add i64 %i, 1
  %_24.1 = icmp ult i64 %_24.0, %i
  br i1 %_24.1, label %panic2, label %bb13

bb18:                                             ; preds = %bb17
  %_34.0 = extractvalue { ptr, i64 } %26, 0
  %_34.1 = extractvalue { ptr, i64 } %26, 1
; invoke core::str::<impl str>::chars
  %27 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hcc5530448c83b7e7E"(ptr align 1 %_34.0, i64 %_34.1)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %28 = extractvalue { ptr, ptr } %27, 0
  %29 = extractvalue { ptr, ptr } %27, 1
  store ptr %28, ptr %_33, align 8
  %30 = getelementptr inbounds i8, ptr %_33, i64 8
  store ptr %29, ptr %30, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_31 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3fa37af0af5de09E(ptr align 8 %_33, i64 %i)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i32 %_31, ptr %self.i, align 4
  %31 = load i32, ptr %self.i, align 4
  %32 = icmp eq i32 %31, 1114112
  %_2.i = select i1 %32, i64 0, i64 1
  %33 = trunc nuw i64 %_2.i to i1
  br i1 %33, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc50887782b24045aE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb20
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_f2778d43092910bbc687852be59ae1a4) #25
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hc50887782b24045aE.exit": ; preds = %bb20
  %val.i = load i32, ptr %self.i, align 4
  br label %bb21

bb21:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc50887782b24045aE.exit"
  %34 = load i32, ptr %c2, align 4
  %_29 = icmp eq i32 %val.i, %34
  br i1 %_29, label %bb22, label %bb3

bb22:                                             ; preds = %bb21
  %_40.0 = add i64 %i, 1
  %_40.1 = icmp ult i64 %_40.0, %i
  br i1 %_40.1, label %panic, label %bb23

bb23:                                             ; preds = %bb22
; invoke <T as alloc::string::ToString>::to_string
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E"(ptr sret([24 x i8]) align 8 %_43, ptr align 4 %c1)
          to label %bb24 unwind label %cleanup

panic:                                            ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6d46485ddedcbca9697143885e7af573) #19
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic
  unreachable

bb24:                                             ; preds = %bb23
; invoke alloc::string::String::as_str
  %35 = invoke { ptr, i64 } @_ZN5alloc6string6String6as_str17h4f2d9945f48235daE(ptr align 8 %_43)
          to label %bb25 unwind label %cleanup1

bb27:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr align 8 %_43) #20
          to label %bb29 unwind label %terminate

cleanup1:                                         ; preds = %bb25, %bb24
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = extractvalue { ptr, i32 } %36, 0
  %38 = extractvalue { ptr, i32 } %36, 1
  store ptr %37, ptr %2, align 8
  %39 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %38, ptr %39, align 8
  br label %bb27

bb25:                                             ; preds = %bb24
  %_41.0 = extractvalue { ptr, i64 } %35, 0
  %_41.1 = extractvalue { ptr, i64 } %35, 1
; invoke alloc::string::String::replace_range
  invoke void @_ZN5alloc6string6String13replace_range17h664d473e476aaa46E(ptr align 8 %s, i64 %i, i64 %_40.0, ptr align 1 %_41.0, i64 %_41.1, ptr align 8 @alloc_4df0d0febdd5d3a64363530ad4e25ffb)
          to label %bb26 unwind label %cleanup1

bb26:                                             ; preds = %bb25
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr align 8 %_43)
          to label %bb3 unwind label %cleanup

terminate:                                        ; preds = %bb29, %bb28, %bb27
  %40 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb13:                                             ; preds = %bb12
; invoke <T as alloc::string::ToString>::to_string
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E"(ptr sret([24 x i8]) align 8 %_27, ptr align 4 %c2)
          to label %bb14 unwind label %cleanup

panic2:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2621cc8d2f648cc9fc56bdf2b1e8060a) #19
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
; invoke alloc::string::String::as_str
  %41 = invoke { ptr, i64 } @_ZN5alloc6string6String6as_str17h4f2d9945f48235daE(ptr align 8 %_27)
          to label %bb15 unwind label %cleanup3

bb28:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr align 8 %_27) #20
          to label %bb29 unwind label %terminate

cleanup3:                                         ; preds = %bb15, %bb14
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = extractvalue { ptr, i32 } %42, 0
  %44 = extractvalue { ptr, i32 } %42, 1
  store ptr %43, ptr %2, align 8
  %45 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %44, ptr %45, align 8
  br label %bb28

bb15:                                             ; preds = %bb14
  %_25.0 = extractvalue { ptr, i64 } %41, 0
  %_25.1 = extractvalue { ptr, i64 } %41, 1
; invoke alloc::string::String::replace_range
  invoke void @_ZN5alloc6string6String13replace_range17h664d473e476aaa46E(ptr align 8 %s, i64 %i, i64 %_24.0, ptr align 1 %_25.0, i64 %_25.1, ptr align 8 @alloc_2e9ecbc1f42a5da546130bf029d2e0a9)
          to label %bb16 unwind label %cleanup3

bb16:                                             ; preds = %bb15
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr align 8 %_27)
          to label %bb3 unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

bb30:                                             ; preds = %bb29
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds i8, ptr %2, i64 8
  %48 = load i32, ptr %47, align 8
  %49 = insertvalue { ptr, i32 } poison, ptr %46, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %48, 1
  resume { ptr, i32 } %50
}
