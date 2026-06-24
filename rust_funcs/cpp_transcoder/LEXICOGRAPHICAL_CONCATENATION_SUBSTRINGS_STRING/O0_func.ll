define void @f_gold(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_44 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %res = alloca [24 x i8], align 8
  %_30 = alloca [24 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_20 = alloca [24 x i8], align 8
  %_19 = alloca [24 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %index = alloca [4 x i8], align 4
  %arr = alloca [24 x i8], align 8
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h1511b733048c25a6E(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb37:                                             ; preds = %bb36, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr align 8 %s) #22
          to label %bb38 unwind label %terminate

cleanup:                                          ; preds = %bb30, %bb4, %panic3, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb37

bb1:                                              ; preds = %start
  %_7.0 = add i64 %n, 1
  %_7.1 = icmp ult i64 %_7.0, %n
  br i1 %_7.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %5 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %_7.0)
  %_8.0 = extractvalue { i64, i1 } %5, 0
  %_8.1 = extractvalue { i64, i1 } %5, 1
  br i1 %_8.1, label %panic3, label %bb3

panic:                                            ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_638bf5ec7b5cb4b6cdad4ced7285aa32) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic9, %panic8, %panic7, %panic3, %panic
  unreachable

bb3:                                              ; preds = %bb2
  br label %bb4

panic3:                                           ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_bc2c24520a941ffb2d4e0379d505cdd8) #24
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb3
  %sub_count = udiv i64 %_8.0, 2
; invoke alloc::vec::Vec<T>::with_capacity
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E"(ptr sret([24 x i8]) align 8 %arr, i64 %sub_count)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 0, ptr %index, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %6 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd5a409a964bb9516E"(i64 0, i64 %n)
          to label %bb6 unwind label %cleanup4

bb36:                                             ; preds = %bb35, %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"(ptr align 8 %arr) #22
          to label %bb37 unwind label %terminate

cleanup4:                                         ; preds = %panic9, %bb20, %bb19, %bb18, %panic8, %bb15, %bb13, %bb12, %panic7, %bb24, %bb23, %bb11, %bb7, %bb5
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb36

bb6:                                              ; preds = %bb5
  %_12.0 = extractvalue { i64, i64 } %6, 0
  %_12.1 = extractvalue { i64, i64 } %6, 1
  store i64 %_12.0, ptr %iter, align 8
  %11 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_12.1, ptr %11, align 8
  br label %bb7

bb7:                                              ; preds = %bb16, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %12 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h1df42aebd36c8f36E"(ptr align 8 %iter)
          to label %bb8 unwind label %cleanup4

bb8:                                              ; preds = %bb7
  %13 = extractvalue { i64, i64 } %12, 0
  %14 = extractvalue { i64, i64 } %12, 1
  store i64 %13, ptr %_15, align 8
  %15 = getelementptr inbounds i8, ptr %_15, i64 8
  store i64 %14, ptr %15, align 8
  %_17 = load i64, ptr %_15, align 8
  %16 = getelementptr inbounds i8, ptr %_15, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = trunc nuw i64 %_17 to i1
  br i1 %18, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %19 = getelementptr inbounds i8, ptr %_15, i64 8
  %i6 = load i64, ptr %19, align 8
  %_22.0 = sub i64 %n, %i6
  %_22.1 = icmp ult i64 %n, %i6
  br i1 %_22.1, label %panic7, label %bb12

bb11:                                             ; preds = %bb8
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %20 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h854cdac677096adeE"(ptr align 8 %arr)
          to label %bb23 unwind label %cleanup4

bb23:                                             ; preds = %bb11
  %_38.0 = extractvalue { ptr, i64 } %20, 0
  %_38.1 = extractvalue { ptr, i64 } %20, 1
; invoke alloc::slice::<impl [T]>::sort
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E"(ptr align 8 %_38.0, i64 %_38.1)
          to label %bb24 unwind label %cleanup4

bb24:                                             ; preds = %bb23
; invoke alloc::string::String::new
  invoke void @_ZN5alloc6string6String3new17h0cdc520cc739c7d8E(ptr sret([24 x i8]) align 8 %res)
          to label %bb25 unwind label %cleanup4

bb25:                                             ; preds = %bb24
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %21 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd5a409a964bb9516E"(i64 0, i64 %sub_count)
          to label %bb26 unwind label %cleanup5

bb35:                                             ; preds = %cleanup5
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr align 8 %res) #22
          to label %bb36 unwind label %terminate

cleanup5:                                         ; preds = %bb32, %bb31, %bb29, %bb27, %bb25
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  store ptr %23, ptr %0, align 8
  %25 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %24, ptr %25, align 8
  br label %bb35

bb26:                                             ; preds = %bb25
  %_41.0 = extractvalue { i64, i64 } %21, 0
  %_41.1 = extractvalue { i64, i64 } %21, 1
  store i64 %_41.0, ptr %iter2, align 8
  %26 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_41.1, ptr %26, align 8
  br label %bb27

bb27:                                             ; preds = %bb39, %bb26
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %27 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h1df42aebd36c8f36E"(ptr align 8 %iter2)
          to label %bb28 unwind label %cleanup5

bb28:                                             ; preds = %bb27
  %28 = extractvalue { i64, i64 } %27, 0
  %29 = extractvalue { i64, i64 } %27, 1
  store i64 %28, ptr %_44, align 8
  %30 = getelementptr inbounds i8, ptr %_44, i64 8
  store i64 %29, ptr %30, align 8
  %_46 = load i64, ptr %_44, align 8
  %31 = getelementptr inbounds i8, ptr %_44, i64 8
  %32 = load i64, ptr %31, align 8
  %33 = trunc nuw i64 %_46 to i1
  br i1 %33, label %bb29, label %bb30

bb29:                                             ; preds = %bb28
  %34 = getelementptr inbounds i8, ptr %_44, i64 8
  %i = load i64, ptr %34, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E"(ptr align 8 %arr, i64 %i, ptr align 8 @alloc_4cce44244d9639ad41a74bd16b875a27)
          to label %bb31 unwind label %cleanup5

bb30:                                             ; preds = %bb28
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %res, i64 24, i1 false)
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"(ptr align 8 %arr)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb30
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr align 8 %s)
  ret void

bb31:                                             ; preds = %bb29
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %35 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5409e241ac35a38aE"(ptr align 8 %_51)
          to label %bb32 unwind label %cleanup5

bb32:                                             ; preds = %bb31
  %_50.0 = extractvalue { ptr, i64 } %35, 0
  %_50.1 = extractvalue { ptr, i64 } %35, 1
; invoke alloc::string::String::push_str
  invoke void @_ZN5alloc6string6String8push_str17h648d30ae5282f772E(ptr align 8 %res, ptr align 1 %_50.0, i64 %_50.1)
          to label %bb39 unwind label %cleanup5

bb39:                                             ; preds = %bb32
  br label %bb27

terminate:                                        ; preds = %bb37, %bb36, %bb35
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb12:                                             ; preds = %bb10
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h868f59c6e803ab8eE"(ptr sret([24 x i8]) align 8 %_20, i64 1, i64 %_22.0)
          to label %bb13 unwind label %cleanup4

panic7:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b35101d64fc0154fca05bf9ff8826f58) #24
          to label %unreachable unwind label %cleanup4

bb13:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98404760b49f82d7E"(ptr sret([24 x i8]) align 8 %_19, ptr align 8 %_20)
          to label %bb14 unwind label %cleanup4

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_19, i64 24, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb22, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %37 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2accc03c61302840E"(ptr align 8 %iter1)
          to label %bb16 unwind label %cleanup4

bb16:                                             ; preds = %bb15
  %38 = extractvalue { i64, i64 } %37, 0
  %39 = extractvalue { i64, i64 } %37, 1
  store i64 %38, ptr %_24, align 8
  %40 = getelementptr inbounds i8, ptr %_24, i64 8
  store i64 %39, ptr %40, align 8
  %_26 = load i64, ptr %_24, align 8
  %41 = getelementptr inbounds i8, ptr %_24, i64 8
  %42 = load i64, ptr %41, align 8
  %43 = trunc nuw i64 %_26 to i1
  br i1 %43, label %bb17, label %bb7

bb17:                                             ; preds = %bb16
  %44 = getelementptr inbounds i8, ptr %_24, i64 8
  %len = load i64, ptr %44, align 8
  %_35.0 = add i64 %i6, %len
  %_35.1 = icmp ult i64 %_35.0, %i6
  br i1 %_35.1, label %panic8, label %bb18

bb18:                                             ; preds = %bb17
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %45 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E"(ptr align 8 %s, i64 %i6, i64 %_35.0, ptr align 8 @alloc_04774e36529a2f0ec64e4c14b859aaab)
          to label %bb19 unwind label %cleanup4

panic8:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_15d441524932b9b8a4338ff5a741a3f2) #24
          to label %unreachable unwind label %cleanup4

bb19:                                             ; preds = %bb18
  %_31.0 = extractvalue { ptr, i64 } %45, 0
  %_31.1 = extractvalue { ptr, i64 } %45, 1
; invoke <T as alloc::string::ToString>::to_string
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E"(ptr sret([24 x i8]) align 8 %_30, ptr align 1 %_31.0, i64 %_31.1)
          to label %bb20 unwind label %cleanup4

bb20:                                             ; preds = %bb19
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE"(ptr align 8 %arr, ptr align 8 %_30)
          to label %bb21 unwind label %cleanup4

bb21:                                             ; preds = %bb20
  %46 = load i32, ptr %index, align 4
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %46, i32 1)
  %_36.0 = extractvalue { i32, i1 } %47, 0
  %_36.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_36.1, label %panic9, label %bb22

bb22:                                             ; preds = %bb21
  store i32 %_36.0, ptr %index, align 4
  br label %bb15

panic9:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c0d63b55c9bc9bc06e53864502b3c0ea) #24
          to label %unreachable unwind label %cleanup4

bb9:                                              ; No predecessors!
  unreachable

bb38:                                             ; preds = %bb37
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds i8, ptr %0, i64 8
  %50 = load i32, ptr %49, align 8
  %51 = insertvalue { ptr, i32 } poison, ptr %48, 0
  %52 = insertvalue { ptr, i32 } %51, i32 %50, 1
  resume { ptr, i32 } %52
}
