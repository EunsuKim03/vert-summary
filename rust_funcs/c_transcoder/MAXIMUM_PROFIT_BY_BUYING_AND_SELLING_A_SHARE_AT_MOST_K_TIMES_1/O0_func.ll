define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_68 = alloca [1 x i8], align 1
  %_25 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %prev_diff = alloca [4 x i8], align 4
  %_16 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_13 = alloca [24 x i8], align 8
  %_12 = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %profit = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %price = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %price, ptr align 8 %2, i64 8, i1 false)
  store i8 0, ptr %_68, align 1
  %_7 = sext i32 %n to i64
  %_8.0 = add i64 %_7, 1
  %_8.1 = icmp ult i64 %_8.0, %_7
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_68, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h709428d803c2c2fbE(ptr sret([24 x i8]) align 8 %_5, float 0.000000e+00, i64 %_8.0)
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %k, i32 1)
  %_11.0 = extractvalue { i32, i1 } %3, 0
  %_11.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_11.1, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0df9c97c9af0c7e3d73e2098e3cc079b) #23
  unreachable

bb3:                                              ; preds = %bb1
  %_9 = sext i32 %_11.0 to i64
  store i8 0, ptr %_68, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h32f2847c9cfee6b3E(ptr sret([24 x i8]) align 8 %profit, ptr align 8 %_5, i64 %_9)
          to label %bb4 unwind label %cleanup

panic2:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dd08ddea5455899eebe7a4bc1abe748a) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %cleanup
  %4 = load i8, ptr %_68, align 1
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %bb36, label %bb35

cleanup:                                          ; preds = %bb3, %panic2
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %1, align 8
  %9 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb37

unreachable:                                      ; preds = %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic2
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_68, align 1
  %_14 = sext i32 %k to i64
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hb949e30f1e0d506bE"(ptr sret([24 x i8]) align 8 %_13, i64 1, i64 %_14)
          to label %bb5 unwind label %cleanup3

bb34:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17ha3b7f6464cf31c5eE"(ptr align 8 %profit) #22
          to label %bb35 unwind label %terminate

cleanup3:                                         ; preds = %bb28, %bb27, %bb26, %panic10, %bb24, %panic9, %bb22, %bb21, %panic8, %panic7, %bb18, %panic6, %bb16, %panic5, %bb13, %bb10, %bb31, %panic4, %bb11, %bb7, %bb5, %bb4
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  store ptr %11, ptr %1, align 8
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %12, ptr %13, align 8
  br label %bb34

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha48c651e9445dfdbE"(ptr sret([24 x i8]) align 8 %_12, ptr align 8 %_13)
          to label %bb6 unwind label %cleanup3

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_12, i64 24, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb14, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %14 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h31c74ced990d4ccdE"(ptr align 8 %iter)
          to label %bb8 unwind label %cleanup3

bb8:                                              ; preds = %bb7
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = extractvalue { i64, i64 } %14, 1
  store i64 %15, ptr %_16, align 8
  %17 = getelementptr inbounds i8, ptr %_16, i64 8
  store i64 %16, ptr %17, align 8
  %_18 = load i64, ptr %_16, align 8
  %18 = getelementptr inbounds i8, ptr %_16, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = trunc nuw i64 %_18 to i1
  br i1 %20, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %21 = getelementptr inbounds i8, ptr %_16, i64 8
  %i = load i64, ptr %21, align 8
  store float 0xFFF0000000000000, ptr %prev_diff, align 4
  %_23 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %22 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf540f6fafa5d6d41E"(i64 1, i64 %_23)
          to label %bb12 unwind label %cleanup3

bb11:                                             ; preds = %bb8
  %_64 = sext i32 %k to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E"(ptr align 8 %profit, i64 %_64, ptr align 8 @alloc_08b15ba745e096f233db07e44cac1c7d)
          to label %bb30 unwind label %cleanup3

bb30:                                             ; preds = %bb11
  %_66 = sext i32 %n to i64
  %_67.0 = sub i64 %_66, 1
  %_67.1 = icmp ult i64 %_66, 1
  br i1 %_67.1, label %panic4, label %bb31

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE"(ptr align 8 %_62, i64 %_67.0, ptr align 8 @alloc_2f1c40cee7905a5751ec2e9288d1776f)
          to label %bb32 unwind label %cleanup3

panic4:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7223fb047bd6cdca584e5fc25b0db8aa) #24
          to label %unreachable unwind label %cleanup3

bb32:                                             ; preds = %bb31
  %_60 = load float, ptr %_61, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_60)
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17ha3b7f6464cf31c5eE"(ptr align 8 %profit)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %_21.0 = extractvalue { i64, i64 } %22, 0
  %_21.1 = extractvalue { i64, i64 } %22, 1
  store i64 %_21.0, ptr %iter1, align 8
  %23 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_21.1, ptr %23, align 8
  br label %bb13

bb13:                                             ; preds = %bb29, %bb12
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %24 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3bd3272743409fbfE"(ptr align 8 %iter1)
          to label %bb14 unwind label %cleanup3

bb14:                                             ; preds = %bb13
  %25 = extractvalue { i64, i64 } %24, 0
  %26 = extractvalue { i64, i64 } %24, 1
  store i64 %25, ptr %_25, align 8
  %27 = getelementptr inbounds i8, ptr %_25, i64 8
  store i64 %26, ptr %27, align 8
  %_27 = load i64, ptr %_25, align 8
  %28 = getelementptr inbounds i8, ptr %_25, i64 8
  %29 = load i64, ptr %28, align 8
  %30 = trunc nuw i64 %_27 to i1
  br i1 %30, label %bb15, label %bb7

bb15:                                             ; preds = %bb14
  %31 = getelementptr inbounds i8, ptr %_25, i64 8
  %j = load i64, ptr %31, align 8
  %_30 = load float, ptr %prev_diff, align 4
  %_37.0 = sub i64 %i, 1
  %_37.1 = icmp ult i64 %i, 1
  br i1 %_37.1, label %panic5, label %bb16

bb16:                                             ; preds = %bb15
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E"(ptr align 8 %profit, i64 %_37.0, ptr align 8 @alloc_d99236fc3e93b89f3e99046d9e0e6aef)
          to label %bb17 unwind label %cleanup3

panic5:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f3dbb15ec6161ec933f1dda8eb0c5710) #24
          to label %unreachable unwind label %cleanup3

bb17:                                             ; preds = %bb16
  %_39.0 = sub i64 %j, 1
  %_39.1 = icmp ult i64 %j, 1
  br i1 %_39.1, label %panic6, label %bb18

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE"(ptr align 8 %_34, i64 %_39.0, ptr align 8 @alloc_4a59789a91ddccce0310684cec7e115b)
          to label %bb19 unwind label %cleanup3

panic6:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8f5d16bb06335e87eb555a0912048563) #24
          to label %unreachable unwind label %cleanup3

bb19:                                             ; preds = %bb18
  %_32 = load float, ptr %_33, align 4
  %_43.0 = sub i64 %j, 1
  %_43.1 = icmp ult i64 %j, 1
  br i1 %_43.1, label %panic7, label %bb20

bb20:                                             ; preds = %bb19
  %_44 = icmp ult i64 %_43.0, 2
  br i1 %_44, label %bb21, label %panic8

panic7:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f3b44e7962d9e84c2aa3d75a7c56603c) #24
          to label %unreachable unwind label %cleanup3

bb21:                                             ; preds = %bb20
  %32 = getelementptr inbounds nuw i32, ptr %price, i64 %_43.0
  %_41 = load i32, ptr %32, align 4
  %_40 = sitofp i32 %_41 to float
  %_31 = fsub float %_32, %_40
; invoke core::f32::<impl f32>::max
  %_29 = invoke float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17h34f9487f1b1e2bebE"(float %_30, float %_31)
          to label %bb22 unwind label %cleanup3

panic8:                                           ; preds = %bb20
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_43.0, i64 2, ptr align 8 @alloc_ef0fd2869febe85ed63148ce4aa58f98) #24
          to label %unreachable unwind label %cleanup3

bb22:                                             ; preds = %bb21
  store float %_29, ptr %prev_diff, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf420d531692da3d8E"(ptr align 8 %profit, i64 %i, ptr align 8 @alloc_7e1d96c9ada9fd68c25f18d9308a6762)
          to label %bb23 unwind label %cleanup3

bb23:                                             ; preds = %bb22
  %_51.0 = sub i64 %j, 1
  %_51.1 = icmp ult i64 %j, 1
  br i1 %_51.1, label %panic9, label %bb24

bb24:                                             ; preds = %bb23
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5d62dfb30f30ab0aE"(ptr align 8 %_48, i64 %_51.0, ptr align 8 @alloc_c2efa849385477082ff783fe117a7bd1)
          to label %bb25 unwind label %cleanup3

panic9:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_26a9f11adbacac28e5cf329b89d37612) #24
          to label %unreachable unwind label %cleanup3

bb25:                                             ; preds = %bb24
  %_46 = load float, ptr %_47, align 4
  %_55 = icmp ult i64 %j, 2
  br i1 %_55, label %bb26, label %panic10

bb26:                                             ; preds = %bb25
  %33 = getelementptr inbounds nuw i32, ptr %price, i64 %j
  %_54 = load i32, ptr %33, align 4
  %_53 = sitofp i32 %_54 to float
  %_56 = load float, ptr %prev_diff, align 4
  %_52 = fadd float %_53, %_56
; invoke core::f32::<impl f32>::max
  %_45 = invoke float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17h34f9487f1b1e2bebE"(float %_46, float %_52)
          to label %bb27 unwind label %cleanup3

panic10:                                          ; preds = %bb25
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_2f1ef89464b49e556dec7c217a556b4f) #24
          to label %unreachable unwind label %cleanup3

bb27:                                             ; preds = %bb26
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_58 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h729772c335507d3eE"(ptr align 8 %profit, i64 %i, ptr align 8 @alloc_ecfc075b57a6f4b16fd1dc64f68663df)
          to label %bb28 unwind label %cleanup3

bb28:                                             ; preds = %bb27
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_57 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0fd9672b6103b3d8E"(ptr align 8 %_58, i64 %j, ptr align 8 @alloc_5f1a9a46a1465fe21f934874788cad0a)
          to label %bb29 unwind label %cleanup3

bb29:                                             ; preds = %bb28
  store float %_45, ptr %_57, align 4
  br label %bb13

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb36, %bb34
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb35:                                             ; preds = %bb36, %bb37, %bb34
  %35 = load ptr, ptr %1, align 8
  %36 = getelementptr inbounds i8, ptr %1, i64 8
  %37 = load i32, ptr %36, align 8
  %38 = insertvalue { ptr, i32 } poison, ptr %35, 0
  %39 = insertvalue { ptr, i32 } %38, i32 %37, 1
  resume { ptr, i32 } %39

bb36:                                             ; preds = %bb37
; invoke core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h702d6fdea300b01fE"(ptr align 8 %_5) #22
          to label %bb35 unwind label %terminate
}
