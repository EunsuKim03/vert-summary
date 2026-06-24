define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i3 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_44 = alloca [16 x i8], align 8
  %_31 = alloca [16 x i8], align 8
  %_29 = alloca [4 x i8], align 4
  %_25 = alloca [16 x i8], align 8
  %_23 = alloca [4 x i8], align 4
  %_17 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %cur_count = alloca [4 x i8], align 4
  %_8 = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h42e5211337f2e839E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb31:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h397c1ff7559d821bE"(ptr align 8 %str) #21
          to label %bb32 unwind label %terminate

cleanup:                                          ; preds = %bb2.i5, %bb2.i, %panic2, %bb26, %bb25, %bb24, %bb19, %bb18, %panic1, %bb16, %bb15, %bb14, %bb13, %bb11, %bb8, %bb6, %panic, %bb3, %bb2, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb31

bb1:                                              ; preds = %start
  store i32 0, ptr %count, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6f7fde38ba8fe2abE"(ptr align 8 %str)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_9.0 = extractvalue { ptr, i64 } %5, 0
  %_9.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf9e0ed14c4526bedE"(ptr align 1 %_9.0, i64 %_9.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  store ptr %7, ptr %_8, align 8
  %9 = getelementptr inbounds i8, ptr %_8, i64 8
  store ptr %8, ptr %9, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_6 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE(ptr align 8 %_8, i64 0)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 %_6, ptr %self.i3, align 4
  %10 = load i32, ptr %self.i3, align 4
  %11 = icmp eq i32 %10, 1114112
  %_2.i4 = select i1 %11, i64 0, i64 1
  %12 = trunc nuw i64 %_2.i4 to i1
  br i1 %12, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit8", label %bb2.i5

bb2.i5:                                           ; preds = %bb4
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_b2b4daeb4b6b82e763f92cf190dff85c) #22
          to label %.noexc7 unwind label %cleanup

.noexc7:                                          ; preds = %bb2.i5
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit8": ; preds = %bb4
  %val.i6 = load i32, ptr %self.i3, align 4
  br label %bb5

bb5:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit8"
  store i32 %val.i6, ptr %res, align 4
  store i32 1, ptr %cur_count, align 4
  %_15.0 = sub i64 %n, 1
  %_15.1 = icmp ult i64 %n, 1
  br i1 %_15.1, label %panic, label %bb6

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he6e44d5379a10bf2E"(i64 0, i64 %_15.0)
          to label %bb7 unwind label %cleanup

panic:                                            ; preds = %bb5
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cddb7861ee4a606ede8537fbfbadd887) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic1, %panic
  unreachable

bb7:                                              ; preds = %bb6
  %_12.0 = extractvalue { i64, i64 } %13, 0
  %_12.1 = extractvalue { i64, i64 } %13, 1
  store i64 %_12.0, ptr %iter, align 8
  %14 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_12.1, ptr %14, align 8
  br label %bb8

bb8:                                              ; preds = %bb22, %bb29, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h53483a6512a8768bE"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  store i64 %16, ptr %_17, align 8
  %18 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %17, ptr %18, align 8
  %_19 = load i64, ptr %_17, align 8
  %19 = getelementptr inbounds i8, ptr %_17, i64 8
  %20 = load i64, ptr %19, align 8
  %21 = trunc nuw i64 %_19 to i1
  br i1 %21, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %22 = getelementptr inbounds i8, ptr %_17, i64 8
  %i = load i64, ptr %22, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %23 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6f7fde38ba8fe2abE"(ptr align 8 %str)
          to label %bb13 unwind label %cleanup

bb12:                                             ; preds = %bb9
  %_0 = load i32, ptr %res, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h397c1ff7559d821bE"(ptr align 8 %str)
  ret i32 %_0

bb13:                                             ; preds = %bb11
  %_26.0 = extractvalue { ptr, i64 } %23, 0
  %_26.1 = extractvalue { ptr, i64 } %23, 1
; invoke core::str::<impl str>::chars
  %24 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf9e0ed14c4526bedE"(ptr align 1 %_26.0, i64 %_26.1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %25 = extractvalue { ptr, ptr } %24, 0
  %26 = extractvalue { ptr, ptr } %24, 1
  store ptr %25, ptr %_25, align 8
  %27 = getelementptr inbounds i8, ptr %_25, i64 8
  store ptr %26, ptr %27, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %28 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE(ptr align 8 %_25, i64 %i)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  store i32 %28, ptr %_23, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %29 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6f7fde38ba8fe2abE"(ptr align 8 %str)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_32.0 = extractvalue { ptr, i64 } %29, 0
  %_32.1 = extractvalue { ptr, i64 } %29, 1
; invoke core::str::<impl str>::chars
  %30 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf9e0ed14c4526bedE"(ptr align 1 %_32.0, i64 %_32.1)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %31 = extractvalue { ptr, ptr } %30, 0
  %32 = extractvalue { ptr, ptr } %30, 1
  store ptr %31, ptr %_31, align 8
  %33 = getelementptr inbounds i8, ptr %_31, i64 8
  store ptr %32, ptr %33, align 8
  %_35.0 = add i64 %i, 1
  %_35.1 = icmp ult i64 %_35.0, %i
  br i1 %_35.1, label %panic1, label %bb18

bb18:                                             ; preds = %bb17
; invoke core::iter::traits::iterator::Iterator::nth
  %34 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE(ptr align 8 %_31, i64 %_35.0)
          to label %bb19 unwind label %cleanup

panic1:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6281958ea9e0562ee760af02a8c97367) #23
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i32 %34, ptr %_29, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_21 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9b89661d0e3f1568E"(ptr align 4 %_23, ptr align 4 %_29)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  br i1 %_21, label %bb21, label %bb23

bb23:                                             ; preds = %bb20
  %_38 = load i32, ptr %cur_count, align 4
  %_39 = load i32, ptr %count, align 4
  %_37 = icmp sgt i32 %_38, %_39
  br i1 %_37, label %bb24, label %bb29

bb21:                                             ; preds = %bb20
  %35 = load i32, ptr %cur_count, align 4
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %35, i32 1)
  %_36.0 = extractvalue { i32, i1 } %36, 0
  %_36.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_36.1, label %panic2, label %bb22

bb29:                                             ; preds = %bb28, %bb23
  store i32 1, ptr %cur_count, align 4
  br label %bb8

bb24:                                             ; preds = %bb23
  %_40 = load i32, ptr %cur_count, align 4
  store i32 %_40, ptr %count, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %37 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6f7fde38ba8fe2abE"(ptr align 8 %str)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_45.0 = extractvalue { ptr, i64 } %37, 0
  %_45.1 = extractvalue { ptr, i64 } %37, 1
; invoke core::str::<impl str>::chars
  %38 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf9e0ed14c4526bedE"(ptr align 1 %_45.0, i64 %_45.1)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %39 = extractvalue { ptr, ptr } %38, 0
  %40 = extractvalue { ptr, ptr } %38, 1
  store ptr %39, ptr %_44, align 8
  %41 = getelementptr inbounds i8, ptr %_44, i64 8
  store ptr %40, ptr %41, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_42 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE(ptr align 8 %_44, i64 %i)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  store i32 %_42, ptr %self.i, align 4
  %42 = load i32, ptr %self.i, align 4
  %43 = icmp eq i32 %42, 1114112
  %_2.i = select i1 %43, i64 0, i64 1
  %44 = trunc nuw i64 %_2.i to i1
  br i1 %44, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb27
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_36123845c29bc3db30fd787ad44684c9) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit": ; preds = %bb27
  %val.i = load i32, ptr %self.i, align 4
  br label %bb28

bb28:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit"
  store i32 %val.i, ptr %res, align 4
  br label %bb29

bb22:                                             ; preds = %bb21
  store i32 %_36.0, ptr %cur_count, align 4
  br label %bb8

panic2:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c3804369891ce1dcc120e3dee9eaa2a8) #23
          to label %unreachable unwind label %cleanup

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb31
  %45 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb32:                                             ; preds = %bb31
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds i8, ptr %0, i64 8
  %48 = load i32, ptr %47, align 8
  %49 = insertvalue { ptr, i32 } poison, ptr %46, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %48, 1
  resume { ptr, i32 } %50
}
