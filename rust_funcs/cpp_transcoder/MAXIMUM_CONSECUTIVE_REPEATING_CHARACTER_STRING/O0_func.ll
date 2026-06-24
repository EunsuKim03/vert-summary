define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i15 = alloca [4 x i8], align 4
  %self.i9 = alloca [4 x i8], align 4
  %self.i3 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_52 = alloca [16 x i8], align 8
  %_40 = alloca [16 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_25 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %cur_count = alloca [4 x i8], align 4
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_9 = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %_3 = invoke i64 @_ZN5alloc6string6String3len17he02759643f7acf6bE(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb34:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61e31bb7eb4f60a7E"(ptr align 8 %str) #21
          to label %bb35 unwind label %terminate

cleanup:                                          ; preds = %bb2.i17, %bb2.i11, %bb2.i5, %bb2.i, %bb30, %bb29, %bb28, %panic2, %bb22, %bb21, %bb20, %bb18, %bb17, %bb16, %bb14, %bb12, %panic, %bb7, %bb5, %bb3, %bb2, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb34

bb1:                                              ; preds = %start
  %len = trunc i64 %_3 to i32
  store i32 0, ptr %count, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd5c5af7c793abb78E"(ptr align 8 %str)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_10.0 = extractvalue { ptr, i64 } %5, 0
  %_10.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b1a5533337d41dE"(ptr align 1 %_10.0, i64 %_10.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  store ptr %7, ptr %_9, align 8
  %9 = getelementptr inbounds i8, ptr %_9, i64 8
  store ptr %8, ptr %9, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_7 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr align 8 %_9, i64 0)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 %_7, ptr %self.i15, align 4
  %10 = load i32, ptr %self.i15, align 4
  %11 = icmp eq i32 %10, 1114112
  %_2.i16 = select i1 %11, i64 0, i64 1
  %12 = trunc nuw i64 %_2.i16 to i1
  br i1 %12, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit20", label %bb2.i17

bb2.i17:                                          ; preds = %bb4
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_3d7263bca282c43246414e46d30b0fcf) #22
          to label %.noexc19 unwind label %cleanup

.noexc19:                                         ; preds = %bb2.i17
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit20": ; preds = %bb4
  %val.i18 = load i32, ptr %self.i15, align 4
  br label %bb5

bb5:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit20"
  store i32 %val.i18, ptr %res, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0728052b9307082E"(i32 0, i32 %len)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12.0 = extractvalue { i32, i32 } %13, 0
  %_12.1 = extractvalue { i32, i32 } %13, 1
  store i32 %_12.0, ptr %iter, align 4
  %14 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_12.1, ptr %14, align 4
  br label %bb7

bb7:                                              ; preds = %bb32, %bb27, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h7cd531120686eb97E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_15, align 4
  %18 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_15, align 4
  %20 = getelementptr inbounds i8, ptr %_15, i64 4
  %21 = load i32, ptr %20, align 4
  %_17 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_17 to i1
  br i1 %22, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %23 = getelementptr inbounds i8, ptr %_15, i64 4
  %i = load i32, ptr %23, align 4
  store i32 1, ptr %cur_count, align 4
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_23.0 = extractvalue { i32, i1 } %24, 0
  %_23.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_23.1, label %panic, label %bb12

bb11:                                             ; preds = %bb8
  %_0 = load i32, ptr %res, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61e31bb7eb4f60a7E"(ptr align 8 %str)
  ret i32 %_0

bb12:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %25 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0728052b9307082E"(i32 %_23.0, i32 %len)
          to label %bb13 unwind label %cleanup

panic:                                            ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_eb3390490283ec3f198caf534da4ef6c) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %_20.0 = extractvalue { i32, i32 } %25, 0
  %_20.1 = extractvalue { i32, i32 } %25, 1
  store i32 %_20.0, ptr %iter1, align 4
  %26 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_20.1, ptr %26, align 4
  br label %bb14

bb14:                                             ; preds = %bb26, %bb13
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %27 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h7cd531120686eb97E"(ptr align 4 %iter1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = extractvalue { i32, i32 } %27, 1
  store i32 %28, ptr %_25, align 4
  %30 = getelementptr inbounds i8, ptr %_25, i64 4
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %_25, align 4
  %32 = getelementptr inbounds i8, ptr %_25, i64 4
  %33 = load i32, ptr %32, align 4
  %_27 = zext i32 %31 to i64
  %34 = trunc nuw i64 %_27 to i1
  br i1 %34, label %bb16, label %bb27

bb16:                                             ; preds = %bb15
  %35 = getelementptr inbounds i8, ptr %_25, i64 4
  %j = load i32, ptr %35, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %36 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd5c5af7c793abb78E"(ptr align 8 %str)
          to label %bb17 unwind label %cleanup

bb27:                                             ; preds = %bb24, %bb15
  %_46 = load i32, ptr %cur_count, align 4
  %_47 = load i32, ptr %count, align 4
  %_45 = icmp sgt i32 %_46, %_47
  br i1 %_45, label %bb28, label %bb7

bb17:                                             ; preds = %bb16
  %_34.0 = extractvalue { ptr, i64 } %36, 0
  %_34.1 = extractvalue { ptr, i64 } %36, 1
; invoke core::str::<impl str>::chars
  %37 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b1a5533337d41dE"(ptr align 1 %_34.0, i64 %_34.1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %38 = extractvalue { ptr, ptr } %37, 0
  %39 = extractvalue { ptr, ptr } %37, 1
  store ptr %38, ptr %_33, align 8
  %40 = getelementptr inbounds i8, ptr %_33, i64 8
  store ptr %39, ptr %40, align 8
  %_36 = sext i32 %i to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %_31 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr align 8 %_33, i64 %_36)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i32 %_31, ptr %self.i9, align 4
  %41 = load i32, ptr %self.i9, align 4
  %42 = icmp eq i32 %41, 1114112
  %_2.i10 = select i1 %42, i64 0, i64 1
  %43 = trunc nuw i64 %_2.i10 to i1
  br i1 %43, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit14", label %bb2.i11

bb2.i11:                                          ; preds = %bb19
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_278f715e635ddb1569eba4178b6f98ed) #22
          to label %.noexc13 unwind label %cleanup

.noexc13:                                         ; preds = %bb2.i11
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit14": ; preds = %bb19
  %val.i12 = load i32, ptr %self.i9, align 4
  br label %bb20

bb20:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit14"
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %44 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd5c5af7c793abb78E"(ptr align 8 %str)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_41.0 = extractvalue { ptr, i64 } %44, 0
  %_41.1 = extractvalue { ptr, i64 } %44, 1
; invoke core::str::<impl str>::chars
  %45 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b1a5533337d41dE"(ptr align 1 %_41.0, i64 %_41.1)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %46 = extractvalue { ptr, ptr } %45, 0
  %47 = extractvalue { ptr, ptr } %45, 1
  store ptr %46, ptr %_40, align 8
  %48 = getelementptr inbounds i8, ptr %_40, i64 8
  store ptr %47, ptr %48, align 8
  %_43 = sext i32 %j to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %_38 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr align 8 %_40, i64 %_43)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 %_38, ptr %self.i3, align 4
  %49 = load i32, ptr %self.i3, align 4
  %50 = icmp eq i32 %49, 1114112
  %_2.i4 = select i1 %50, i64 0, i64 1
  %51 = trunc nuw i64 %_2.i4 to i1
  br i1 %51, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit8", label %bb2.i5

bb2.i5:                                           ; preds = %bb23
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_90c5a32b5e3f93ed098e2a9c82cb94e4) #22
          to label %.noexc7 unwind label %cleanup

.noexc7:                                          ; preds = %bb2.i5
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit8": ; preds = %bb23
  %val.i6 = load i32, ptr %self.i3, align 4
  br label %bb24

bb24:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit8"
  %_29 = icmp ne i32 %val.i12, %val.i6
  br i1 %_29, label %bb27, label %bb25

bb25:                                             ; preds = %bb24
  %52 = load i32, ptr %cur_count, align 4
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %52, i32 1)
  %_44.0 = extractvalue { i32, i1 } %53, 0
  %_44.1 = extractvalue { i32, i1 } %53, 1
  br i1 %_44.1, label %panic2, label %bb26

bb26:                                             ; preds = %bb25
  store i32 %_44.0, ptr %cur_count, align 4
  br label %bb14

panic2:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_595e84c1ab32bb4ef2e38fc61a760f68) #23
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_48 = load i32, ptr %cur_count, align 4
  store i32 %_48, ptr %count, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %54 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd5c5af7c793abb78E"(ptr align 8 %str)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_53.0 = extractvalue { ptr, i64 } %54, 0
  %_53.1 = extractvalue { ptr, i64 } %54, 1
; invoke core::str::<impl str>::chars
  %55 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b1a5533337d41dE"(ptr align 1 %_53.0, i64 %_53.1)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb29
  %56 = extractvalue { ptr, ptr } %55, 0
  %57 = extractvalue { ptr, ptr } %55, 1
  store ptr %56, ptr %_52, align 8
  %58 = getelementptr inbounds i8, ptr %_52, i64 8
  store ptr %57, ptr %58, align 8
  %_55 = sext i32 %i to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %_50 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr align 8 %_52, i64 %_55)
          to label %bb31 unwind label %cleanup

bb31:                                             ; preds = %bb30
  store i32 %_50, ptr %self.i, align 4
  %59 = load i32, ptr %self.i, align 4
  %60 = icmp eq i32 %59, 1114112
  %_2.i = select i1 %60, i64 0, i64 1
  %61 = trunc nuw i64 %_2.i to i1
  br i1 %61, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb31
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_2f5f0aaf834ca1c985b893a085dad389) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit": ; preds = %bb31
  %val.i = load i32, ptr %self.i, align 4
  br label %bb32

bb32:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit"
  store i32 %val.i, ptr %res, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb34
  %62 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb35:                                             ; preds = %bb34
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds i8, ptr %0, i64 8
  %65 = load i32, ptr %64, align 8
  %66 = insertvalue { ptr, i32 } poison, ptr %63, 0
  %67 = insertvalue { ptr, i32 } %66, i32 %65, 1
  resume { ptr, i32 } %67
}
