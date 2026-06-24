define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i45 = alloca [4 x i8], align 4
  %self.i39 = alloca [4 x i8], align 4
  %self.i33 = alloca [4 x i8], align 4
  %self.i27 = alloca [4 x i8], align 4
  %self.i21 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_121 = alloca [16 x i8], align 8
  %_109 = alloca [16 x i8], align 8
  %_97 = alloca [16 x i8], align 8
  %_85 = alloca [16 x i8], align 8
  %_73 = alloca [16 x i8], align 8
  %_61 = alloca [16 x i8], align 8
  %c = alloca [4 x i8], align 4
  %_41 = alloca [8 x i8], align 4
  %iter5 = alloca [8 x i8], align 4
  %_34 = alloca [8 x i8], align 4
  %iter4 = alloca [8 x i8], align 4
  %_27 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_20 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_13 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %ans = alloca [4 x i8], align 4
  store i32 6, ptr %ans, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10)
          to label %bb1 unwind label %cleanup

bb82:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h57bc81a81808f801E"(ptr align 8 %s) #21
          to label %bb83 unwind label %terminate

cleanup:                                          ; preds = %bb2.i47, %bb2.i41, %bb2.i35, %bb2.i29, %bb2.i23, %bb2.i, %panic20, %panic19, %bb73, %bb72, %bb71, %panic18, %panic17, %bb65, %bb64, %bb63, %panic16, %panic15, %bb57, %bb56, %bb55, %panic14, %panic13, %bb49, %bb48, %bb47, %panic12, %panic11, %bb41, %bb40, %bb39, %panic10, %panic9, %bb33, %bb32, %bb31, %panic8, %panic7, %panic6, %panic, %bb24, %bb22, %bb20, %bb18, %bb16, %bb14, %bb12, %bb10, %bb8, %bb5, %bb2, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb82

bb1:                                              ; preds = %start
  %_3.0 = extractvalue { i32, i32 } %1, 0
  %_3.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_3.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %6, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %bb1
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_6, align 4
  %10 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_6, align 4
  %12 = getelementptr inbounds i8, ptr %_6, i64 4
  %13 = load i32, ptr %12, align 4
  %_8 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_8 to i1
  br i1 %14, label %bb5, label %bb6

bb5:                                              ; preds = %bb3
  %15 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %15, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10)
          to label %bb7 unwind label %cleanup

bb6:                                              ; preds = %bb3
  %_0 = load i32, ptr %ans, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h57bc81a81808f801E"(ptr align 8 %s)
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %_10.0 = extractvalue { i32, i32 } %16, 0
  %_10.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_10.0, ptr %iter1, align 4
  %17 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_10.1, ptr %17, align 4
  br label %bb8

bb8:                                              ; preds = %bb13, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_13, align 4
  %21 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_13, align 4
  %23 = getelementptr inbounds i8, ptr %_13, i64 4
  %24 = load i32, ptr %23, align 4
  %_15 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_15 to i1
  br i1 %25, label %bb10, label %bb2

bb10:                                             ; preds = %bb9
  %26 = getelementptr inbounds i8, ptr %_13, i64 4
  %j = load i32, ptr %26, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %27 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_17.0 = extractvalue { i32, i32 } %27, 0
  %_17.1 = extractvalue { i32, i32 } %27, 1
  store i32 %_17.0, ptr %iter2, align 4
  %28 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_17.1, ptr %28, align 4
  br label %bb12

bb12:                                             ; preds = %bb17, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter2)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_20, align 4
  %32 = getelementptr inbounds i8, ptr %_20, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_20, align 4
  %34 = getelementptr inbounds i8, ptr %_20, i64 4
  %35 = load i32, ptr %34, align 4
  %_22 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_22 to i1
  br i1 %36, label %bb14, label %bb8

bb14:                                             ; preds = %bb13
  %37 = getelementptr inbounds i8, ptr %_20, i64 4
  %k = load i32, ptr %37, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %38 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_24.0 = extractvalue { i32, i32 } %38, 0
  %_24.1 = extractvalue { i32, i32 } %38, 1
  store i32 %_24.0, ptr %iter3, align 4
  %39 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_24.1, ptr %39, align 4
  br label %bb16

bb16:                                             ; preds = %bb21, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %40 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter3)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = extractvalue { i32, i32 } %40, 1
  store i32 %41, ptr %_27, align 4
  %43 = getelementptr inbounds i8, ptr %_27, i64 4
  store i32 %42, ptr %43, align 4
  %44 = load i32, ptr %_27, align 4
  %45 = getelementptr inbounds i8, ptr %_27, i64 4
  %46 = load i32, ptr %45, align 4
  %_29 = zext i32 %44 to i64
  %47 = trunc nuw i64 %_29 to i1
  br i1 %47, label %bb18, label %bb12

bb18:                                             ; preds = %bb17
  %48 = getelementptr inbounds i8, ptr %_27, i64 4
  %l = load i32, ptr %48, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %49 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_31.0 = extractvalue { i32, i32 } %49, 0
  %_31.1 = extractvalue { i32, i32 } %49, 1
  store i32 %_31.0, ptr %iter4, align 4
  %50 = getelementptr inbounds i8, ptr %iter4, i64 4
  store i32 %_31.1, ptr %50, align 4
  br label %bb20

bb20:                                             ; preds = %bb25, %bb19
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %51 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter4)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = extractvalue { i32, i32 } %51, 1
  store i32 %52, ptr %_34, align 4
  %54 = getelementptr inbounds i8, ptr %_34, i64 4
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %_34, align 4
  %56 = getelementptr inbounds i8, ptr %_34, i64 4
  %57 = load i32, ptr %56, align 4
  %_36 = zext i32 %55 to i64
  %58 = trunc nuw i64 %_36 to i1
  br i1 %58, label %bb22, label %bb16

bb22:                                             ; preds = %bb21
  %59 = getelementptr inbounds i8, ptr %_34, i64 4
  %m = load i32, ptr %59, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %60 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2eeb801863b65a36E"(i32 0, i32 10)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_38.0 = extractvalue { i32, i32 } %60, 0
  %_38.1 = extractvalue { i32, i32 } %60, 1
  store i32 %_38.0, ptr %iter5, align 4
  %61 = getelementptr inbounds i8, ptr %iter5, i64 4
  store i32 %_38.1, ptr %61, align 4
  br label %bb24

bb24:                                             ; preds = %bb80, %bb79, %bb30, %bb23
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %62 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hed8ba716ef681ea8E"(ptr align 4 %iter5)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %63 = extractvalue { i32, i32 } %62, 0
  %64 = extractvalue { i32, i32 } %62, 1
  store i32 %63, ptr %_41, align 4
  %65 = getelementptr inbounds i8, ptr %_41, i64 4
  store i32 %64, ptr %65, align 4
  %66 = load i32, ptr %_41, align 4
  %67 = getelementptr inbounds i8, ptr %_41, i64 4
  %68 = load i32, ptr %67, align 4
  %_43 = zext i32 %66 to i64
  %69 = trunc nuw i64 %_43 to i1
  br i1 %69, label %bb26, label %bb20

bb26:                                             ; preds = %bb25
  %70 = getelementptr inbounds i8, ptr %_41, i64 4
  %n = load i32, ptr %70, align 4
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %j)
  %_48.0 = extractvalue { i32, i1 } %71, 0
  %_48.1 = extractvalue { i32, i1 } %71, 1
  br i1 %_48.1, label %panic, label %bb27

bb27:                                             ; preds = %bb26
  %72 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_48.0, i32 %k)
  %_49.0 = extractvalue { i32, i1 } %72, 0
  %_49.1 = extractvalue { i32, i1 } %72, 1
  br i1 %_49.1, label %panic6, label %bb28

panic:                                            ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e1ee1ddceccac05f8647873d9a0623f6) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic20, %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic
  unreachable

bb28:                                             ; preds = %bb27
  %73 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l, i32 %m)
  %_52.0 = extractvalue { i32, i1 } %73, 0
  %_52.1 = extractvalue { i32, i1 } %73, 1
  br i1 %_52.1, label %panic7, label %bb29

panic6:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e1ee1ddceccac05f8647873d9a0623f6) #23
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_52.0, i32 %n)
  %_53.0 = extractvalue { i32, i1 } %74, 0
  %_53.1 = extractvalue { i32, i1 } %74, 1
  br i1 %_53.1, label %panic8, label %bb30

panic7:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b20b02724bb18e00ce7a5d06f8a2826b) #23
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_45 = icmp eq i32 %_49.0, %_53.0
  br i1 %_45, label %bb31, label %bb24

panic8:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b20b02724bb18e00ce7a5d06f8a2826b) #23
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30
  store i32 0, ptr %c, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %75 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb9374d6ea752c312E"(ptr align 8 %s)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_62.0 = extractvalue { ptr, i64 } %75, 0
  %_62.1 = extractvalue { ptr, i64 } %75, 1
; invoke core::str::<impl str>::chars
  %76 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h4c365abb6f2df00eE"(ptr align 1 %_62.0, i64 %_62.1)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb32
  %77 = extractvalue { ptr, ptr } %76, 0
  %78 = extractvalue { ptr, ptr } %76, 1
  store ptr %77, ptr %_61, align 8
  %79 = getelementptr inbounds i8, ptr %_61, i64 8
  store ptr %78, ptr %79, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_59 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0a02f79f74323ff1E(ptr align 8 %_61, i64 0)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  store i32 %_59, ptr %self.i45, align 4
  %80 = load i32, ptr %self.i45, align 4
  %81 = icmp eq i32 %80, 1114112
  %_2.i46 = select i1 %81, i64 0, i64 1
  %82 = trunc nuw i64 %_2.i46 to i1
  br i1 %82, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit50", label %bb2.i47

bb2.i47:                                          ; preds = %bb34
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_5d720ddc212ec709992fdde3e458e7cd) #22
          to label %.noexc49 unwind label %cleanup

.noexc49:                                         ; preds = %bb2.i47
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit50": ; preds = %bb34
  %val.i48 = load i32, ptr %self.i45, align 4
  br label %bb35

bb35:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit50"
  %83 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i48, i32 48)
  %_65.0 = extractvalue { i32, i1 } %83, 0
  %_65.1 = extractvalue { i32, i1 } %83, 1
  br i1 %_65.1, label %panic9, label %bb36

bb36:                                             ; preds = %bb35
  %_55 = icmp ne i32 %_65.0, %i
  br i1 %_55, label %bb37, label %bb39

panic9:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ae05e1eac8f553b6daea85b93814eff8) #23
          to label %unreachable unwind label %cleanup

bb39:                                             ; preds = %bb38, %bb36
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %84 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb9374d6ea752c312E"(ptr align 8 %s)
          to label %bb40 unwind label %cleanup

bb37:                                             ; preds = %bb36
  %85 = load i32, ptr %c, align 4
  %86 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %85, i32 1)
  %_66.0 = extractvalue { i32, i1 } %86, 0
  %_66.1 = extractvalue { i32, i1 } %86, 1
  br i1 %_66.1, label %panic10, label %bb38

bb38:                                             ; preds = %bb37
  store i32 %_66.0, ptr %c, align 4
  br label %bb39

panic10:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6f7c6138c87c7f670cd981a37d7c3421) #23
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %bb39
  %_74.0 = extractvalue { ptr, i64 } %84, 0
  %_74.1 = extractvalue { ptr, i64 } %84, 1
; invoke core::str::<impl str>::chars
  %87 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h4c365abb6f2df00eE"(ptr align 1 %_74.0, i64 %_74.1)
          to label %bb41 unwind label %cleanup

bb41:                                             ; preds = %bb40
  %88 = extractvalue { ptr, ptr } %87, 0
  %89 = extractvalue { ptr, ptr } %87, 1
  store ptr %88, ptr %_73, align 8
  %90 = getelementptr inbounds i8, ptr %_73, i64 8
  store ptr %89, ptr %90, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_71 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0a02f79f74323ff1E(ptr align 8 %_73, i64 1)
          to label %bb42 unwind label %cleanup

bb42:                                             ; preds = %bb41
  store i32 %_71, ptr %self.i39, align 4
  %91 = load i32, ptr %self.i39, align 4
  %92 = icmp eq i32 %91, 1114112
  %_2.i40 = select i1 %92, i64 0, i64 1
  %93 = trunc nuw i64 %_2.i40 to i1
  br i1 %93, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit44", label %bb2.i41

bb2.i41:                                          ; preds = %bb42
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_69d61d2f8ab9d9293adeec17fc477d79) #22
          to label %.noexc43 unwind label %cleanup

.noexc43:                                         ; preds = %bb2.i41
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit44": ; preds = %bb42
  %val.i42 = load i32, ptr %self.i39, align 4
  br label %bb43

bb43:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit44"
  %94 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i42, i32 48)
  %_77.0 = extractvalue { i32, i1 } %94, 0
  %_77.1 = extractvalue { i32, i1 } %94, 1
  br i1 %_77.1, label %panic11, label %bb44

bb44:                                             ; preds = %bb43
  %_67 = icmp ne i32 %_77.0, %j
  br i1 %_67, label %bb45, label %bb47

panic11:                                          ; preds = %bb43
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b8a43e96763e2d6d3916fb4b52b0121a) #23
          to label %unreachable unwind label %cleanup

bb47:                                             ; preds = %bb46, %bb44
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %95 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb9374d6ea752c312E"(ptr align 8 %s)
          to label %bb48 unwind label %cleanup

bb45:                                             ; preds = %bb44
  %96 = load i32, ptr %c, align 4
  %97 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %96, i32 1)
  %_78.0 = extractvalue { i32, i1 } %97, 0
  %_78.1 = extractvalue { i32, i1 } %97, 1
  br i1 %_78.1, label %panic12, label %bb46

bb46:                                             ; preds = %bb45
  store i32 %_78.0, ptr %c, align 4
  br label %bb47

panic12:                                          ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c413ddb27821713d5d98a8fe56eda04a) #23
          to label %unreachable unwind label %cleanup

bb48:                                             ; preds = %bb47
  %_86.0 = extractvalue { ptr, i64 } %95, 0
  %_86.1 = extractvalue { ptr, i64 } %95, 1
; invoke core::str::<impl str>::chars
  %98 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h4c365abb6f2df00eE"(ptr align 1 %_86.0, i64 %_86.1)
          to label %bb49 unwind label %cleanup

bb49:                                             ; preds = %bb48
  %99 = extractvalue { ptr, ptr } %98, 0
  %100 = extractvalue { ptr, ptr } %98, 1
  store ptr %99, ptr %_85, align 8
  %101 = getelementptr inbounds i8, ptr %_85, i64 8
  store ptr %100, ptr %101, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_83 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0a02f79f74323ff1E(ptr align 8 %_85, i64 2)
          to label %bb50 unwind label %cleanup

bb50:                                             ; preds = %bb49
  store i32 %_83, ptr %self.i33, align 4
  %102 = load i32, ptr %self.i33, align 4
  %103 = icmp eq i32 %102, 1114112
  %_2.i34 = select i1 %103, i64 0, i64 1
  %104 = trunc nuw i64 %_2.i34 to i1
  br i1 %104, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit38", label %bb2.i35

bb2.i35:                                          ; preds = %bb50
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_4aed0aaaa669fa15106df367ddb70a1e) #22
          to label %.noexc37 unwind label %cleanup

.noexc37:                                         ; preds = %bb2.i35
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit38": ; preds = %bb50
  %val.i36 = load i32, ptr %self.i33, align 4
  br label %bb51

bb51:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit38"
  %105 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i36, i32 48)
  %_89.0 = extractvalue { i32, i1 } %105, 0
  %_89.1 = extractvalue { i32, i1 } %105, 1
  br i1 %_89.1, label %panic13, label %bb52

bb52:                                             ; preds = %bb51
  %_79 = icmp ne i32 %_89.0, %k
  br i1 %_79, label %bb53, label %bb55

panic13:                                          ; preds = %bb51
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ff41b19dcd2edae5e8fe6c3f53eb8391) #23
          to label %unreachable unwind label %cleanup

bb55:                                             ; preds = %bb54, %bb52
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %106 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb9374d6ea752c312E"(ptr align 8 %s)
          to label %bb56 unwind label %cleanup

bb53:                                             ; preds = %bb52
  %107 = load i32, ptr %c, align 4
  %108 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %107, i32 1)
  %_90.0 = extractvalue { i32, i1 } %108, 0
  %_90.1 = extractvalue { i32, i1 } %108, 1
  br i1 %_90.1, label %panic14, label %bb54

bb54:                                             ; preds = %bb53
  store i32 %_90.0, ptr %c, align 4
  br label %bb55

panic14:                                          ; preds = %bb53
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9faa2b440dd9d8f8c5c890768abb947b) #23
          to label %unreachable unwind label %cleanup

bb56:                                             ; preds = %bb55
  %_98.0 = extractvalue { ptr, i64 } %106, 0
  %_98.1 = extractvalue { ptr, i64 } %106, 1
; invoke core::str::<impl str>::chars
  %109 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h4c365abb6f2df00eE"(ptr align 1 %_98.0, i64 %_98.1)
          to label %bb57 unwind label %cleanup

bb57:                                             ; preds = %bb56
  %110 = extractvalue { ptr, ptr } %109, 0
  %111 = extractvalue { ptr, ptr } %109, 1
  store ptr %110, ptr %_97, align 8
  %112 = getelementptr inbounds i8, ptr %_97, i64 8
  store ptr %111, ptr %112, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_95 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0a02f79f74323ff1E(ptr align 8 %_97, i64 3)
          to label %bb58 unwind label %cleanup

bb58:                                             ; preds = %bb57
  store i32 %_95, ptr %self.i27, align 4
  %113 = load i32, ptr %self.i27, align 4
  %114 = icmp eq i32 %113, 1114112
  %_2.i28 = select i1 %114, i64 0, i64 1
  %115 = trunc nuw i64 %_2.i28 to i1
  br i1 %115, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit32", label %bb2.i29

bb2.i29:                                          ; preds = %bb58
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_65f7c902417ba190630bd60004763944) #22
          to label %.noexc31 unwind label %cleanup

.noexc31:                                         ; preds = %bb2.i29
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit32": ; preds = %bb58
  %val.i30 = load i32, ptr %self.i27, align 4
  br label %bb59

bb59:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit32"
  %116 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i30, i32 48)
  %_101.0 = extractvalue { i32, i1 } %116, 0
  %_101.1 = extractvalue { i32, i1 } %116, 1
  br i1 %_101.1, label %panic15, label %bb60

bb60:                                             ; preds = %bb59
  %_91 = icmp ne i32 %_101.0, %l
  br i1 %_91, label %bb61, label %bb63

panic15:                                          ; preds = %bb59
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1a75d5becfafef21eeda3a7ba2bddef8) #23
          to label %unreachable unwind label %cleanup

bb63:                                             ; preds = %bb62, %bb60
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %117 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb9374d6ea752c312E"(ptr align 8 %s)
          to label %bb64 unwind label %cleanup

bb61:                                             ; preds = %bb60
  %118 = load i32, ptr %c, align 4
  %119 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %118, i32 1)
  %_102.0 = extractvalue { i32, i1 } %119, 0
  %_102.1 = extractvalue { i32, i1 } %119, 1
  br i1 %_102.1, label %panic16, label %bb62

bb62:                                             ; preds = %bb61
  store i32 %_102.0, ptr %c, align 4
  br label %bb63

panic16:                                          ; preds = %bb61
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0d821ab818d6c2f637e3d9e0d43c3387) #23
          to label %unreachable unwind label %cleanup

bb64:                                             ; preds = %bb63
  %_110.0 = extractvalue { ptr, i64 } %117, 0
  %_110.1 = extractvalue { ptr, i64 } %117, 1
; invoke core::str::<impl str>::chars
  %120 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h4c365abb6f2df00eE"(ptr align 1 %_110.0, i64 %_110.1)
          to label %bb65 unwind label %cleanup

bb65:                                             ; preds = %bb64
  %121 = extractvalue { ptr, ptr } %120, 0
  %122 = extractvalue { ptr, ptr } %120, 1
  store ptr %121, ptr %_109, align 8
  %123 = getelementptr inbounds i8, ptr %_109, i64 8
  store ptr %122, ptr %123, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_107 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0a02f79f74323ff1E(ptr align 8 %_109, i64 4)
          to label %bb66 unwind label %cleanup

bb66:                                             ; preds = %bb65
  store i32 %_107, ptr %self.i21, align 4
  %124 = load i32, ptr %self.i21, align 4
  %125 = icmp eq i32 %124, 1114112
  %_2.i22 = select i1 %125, i64 0, i64 1
  %126 = trunc nuw i64 %_2.i22 to i1
  br i1 %126, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit26", label %bb2.i23

bb2.i23:                                          ; preds = %bb66
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_cdfc0eaeea3f758a16a25076d45405b5) #22
          to label %.noexc25 unwind label %cleanup

.noexc25:                                         ; preds = %bb2.i23
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit26": ; preds = %bb66
  %val.i24 = load i32, ptr %self.i21, align 4
  br label %bb67

bb67:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit26"
  %127 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i24, i32 48)
  %_113.0 = extractvalue { i32, i1 } %127, 0
  %_113.1 = extractvalue { i32, i1 } %127, 1
  br i1 %_113.1, label %panic17, label %bb68

bb68:                                             ; preds = %bb67
  %_103 = icmp ne i32 %_113.0, %m
  br i1 %_103, label %bb69, label %bb71

panic17:                                          ; preds = %bb67
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1fc2f729ab4c6ef2a5333851d519aa47) #23
          to label %unreachable unwind label %cleanup

bb71:                                             ; preds = %bb70, %bb68
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %128 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb9374d6ea752c312E"(ptr align 8 %s)
          to label %bb72 unwind label %cleanup

bb69:                                             ; preds = %bb68
  %129 = load i32, ptr %c, align 4
  %130 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %129, i32 1)
  %_114.0 = extractvalue { i32, i1 } %130, 0
  %_114.1 = extractvalue { i32, i1 } %130, 1
  br i1 %_114.1, label %panic18, label %bb70

bb70:                                             ; preds = %bb69
  store i32 %_114.0, ptr %c, align 4
  br label %bb71

panic18:                                          ; preds = %bb69
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_468f2ccb9c386ba126735060386c3083) #23
          to label %unreachable unwind label %cleanup

bb72:                                             ; preds = %bb71
  %_122.0 = extractvalue { ptr, i64 } %128, 0
  %_122.1 = extractvalue { ptr, i64 } %128, 1
; invoke core::str::<impl str>::chars
  %131 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h4c365abb6f2df00eE"(ptr align 1 %_122.0, i64 %_122.1)
          to label %bb73 unwind label %cleanup

bb73:                                             ; preds = %bb72
  %132 = extractvalue { ptr, ptr } %131, 0
  %133 = extractvalue { ptr, ptr } %131, 1
  store ptr %132, ptr %_121, align 8
  %134 = getelementptr inbounds i8, ptr %_121, i64 8
  store ptr %133, ptr %134, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_119 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0a02f79f74323ff1E(ptr align 8 %_121, i64 5)
          to label %bb74 unwind label %cleanup

bb74:                                             ; preds = %bb73
  store i32 %_119, ptr %self.i, align 4
  %135 = load i32, ptr %self.i, align 4
  %136 = icmp eq i32 %135, 1114112
  %_2.i = select i1 %136, i64 0, i64 1
  %137 = trunc nuw i64 %_2.i to i1
  br i1 %137, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb74
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_c9fcc62b8fa1fb0279b975fd078c3abd) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit": ; preds = %bb74
  %val.i = load i32, ptr %self.i, align 4
  br label %bb75

bb75:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17ha33b6d8188769194E.exit"
  %138 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_125.0 = extractvalue { i32, i1 } %138, 0
  %_125.1 = extractvalue { i32, i1 } %138, 1
  br i1 %_125.1, label %panic19, label %bb76

bb76:                                             ; preds = %bb75
  %_115 = icmp ne i32 %_125.0, %n
  br i1 %_115, label %bb77, label %bb79

panic19:                                          ; preds = %bb75
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_81ff3290228f3be5b3e072c6150a98de) #23
          to label %unreachable unwind label %cleanup

bb79:                                             ; preds = %bb78, %bb76
  %_128 = load i32, ptr %c, align 4
  %_129 = load i32, ptr %ans, align 4
  %_127 = icmp slt i32 %_128, %_129
  br i1 %_127, label %bb80, label %bb24

bb77:                                             ; preds = %bb76
  %139 = load i32, ptr %c, align 4
  %140 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %139, i32 1)
  %_126.0 = extractvalue { i32, i1 } %140, 0
  %_126.1 = extractvalue { i32, i1 } %140, 1
  br i1 %_126.1, label %panic20, label %bb78

bb78:                                             ; preds = %bb77
  store i32 %_126.0, ptr %c, align 4
  br label %bb79

panic20:                                          ; preds = %bb77
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0894fe02ce9bede9cc867f653bc146b6) #23
          to label %unreachable unwind label %cleanup

bb80:                                             ; preds = %bb79
  %_130 = load i32, ptr %c, align 4
  store i32 %_130, ptr %ans, align 4
  br label %bb24

bb4:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb82
  %141 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb83:                                             ; preds = %bb82
  %142 = load ptr, ptr %0, align 8
  %143 = getelementptr inbounds i8, ptr %0, i64 8
  %144 = load i32, ptr %143, align 8
  %145 = insertvalue { ptr, i32 } poison, ptr %142, 0
  %146 = insertvalue { ptr, i32 } %145, i32 %144, 1
  resume { ptr, i32 } %146
}
