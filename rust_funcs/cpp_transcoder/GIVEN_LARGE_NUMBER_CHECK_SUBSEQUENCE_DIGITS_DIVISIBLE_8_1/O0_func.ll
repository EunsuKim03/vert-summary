define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_123 = alloca [1 x i8], align 1
  %_114 = alloca [16 x i8], align 8
  %iter3 = alloca [24 x i8], align 8
  %_112 = alloca [24 x i8], align 8
  %_111 = alloca [24 x i8], align 8
  %_49 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %_34 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_32 = alloca [24 x i8], align 8
  %_31 = alloca [24 x i8], align 8
  %_22 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_12 = alloca [24 x i8], align 8
  %_11 = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i8 0, ptr %_123, align 1
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17hae948e4b0b112039E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb82:                                             ; preds = %bb84, %bb85, %bb81, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc0dea4bc25d3ef38E"(ptr align 8 %str) #22
          to label %bb83 unwind label %terminate

cleanup:                                          ; preds = %bb77, %bb75, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb82

bb1:                                              ; preds = %start
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hdad675b30dc97c29E(ptr sret([24 x i8]) align 8 %_5, i32 0, i64 10)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i8 1, ptr %_123, align 1
  %_7.0 = add i64 %n, 1
  %_7.1 = icmp ult i64 %_7.0, %n
  br i1 %_7.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_123, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hc82b41ae6e8c2a02E(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_5, i64 %_7.0)
          to label %bb4 unwind label %cleanup4

panic:                                            ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f8e4900178a72cf5b45a4c7852e55210) #24
          to label %unreachable unwind label %cleanup4

bb85:                                             ; preds = %cleanup4
  %5 = load i8, ptr %_123, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb84, label %bb82

cleanup4:                                         ; preds = %bb3, %panic
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb85

unreachable:                                      ; preds = %panic19, %panic18, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic5, %panic
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_123, align 1
  %_10.0 = add i64 %n, 1
  %_10.1 = icmp ult i64 %_10.0, %n
  br i1 %_10.1, label %panic5, label %bb5

bb5:                                              ; preds = %bb4
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE(ptr sret([24 x i8]) align 8 %arr, i64 0, i64 %_10.0)
          to label %bb6 unwind label %cleanup6

panic5:                                           ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b0e33572b4d983b9bd797a96319d54c0) #24
          to label %unreachable unwind label %cleanup6

bb81:                                             ; preds = %bb80, %cleanup6
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr align 8 %dp) #22
          to label %bb82 unwind label %terminate

cleanup6:                                         ; preds = %bb74, %bb71, %bb5, %panic5
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  store ptr %12, ptr %0, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb81

bb6:                                              ; preds = %bb5
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hdf8dcff67f3bf70fE"(ptr sret([24 x i8]) align 8 %_12, i64 1, i64 %n)
          to label %bb7 unwind label %cleanup7

bb80:                                             ; preds = %cleanup7
; invoke core::ptr::drop_in_place<alloc::vec::Vec<usize>>
  invoke void @"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E"(ptr align 8 %arr) #22
          to label %bb81 unwind label %terminate

cleanup7:                                         ; preds = %bb2.i, %bb19, %panic19, %bb16, %panic18, %bb14, %bb12, %bb64, %bb63, %bb62, %bb61, %panic16, %bb58, %bb57, %bb56, %bb55, %panic15, %bb52, %panic14, %bb49, %panic13, %bb47, %bb46, %bb45, %panic12, %bb42, %panic11, %bb39, %panic10, %bb37, %bb36, %bb35, %panic9, %bb32, %bb30, %bb29, %bb27, %bb25, %bb72, %bb70, %bb68, %bb66, %bb26, %bb23, %bb21, %bb13, %bb9, %bb7, %bb6
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  store ptr %16, ptr %0, align 8
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %17, ptr %18, align 8
  br label %bb80

bb7:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h836923c9c7cd97d9E"(ptr sret([24 x i8]) align 8 %_11, ptr align 8 %_12)
          to label %bb8 unwind label %cleanup7

bb8:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_11, i64 24, i1 false)
  br label %bb9

bb9:                                              ; preds = %bb20, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %19 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h942bb423049ca53eE"(ptr align 8 %iter)
          to label %bb10 unwind label %cleanup7

bb10:                                             ; preds = %bb9
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  store i64 %20, ptr %_14, align 8
  %22 = getelementptr inbounds i8, ptr %_14, i64 8
  store i64 %21, ptr %22, align 8
  %_16 = load i64, ptr %_14, align 8
  %23 = getelementptr inbounds i8, ptr %_14, i64 8
  %24 = load i64, ptr %23, align 8
  %25 = trunc nuw i64 %_16 to i1
  br i1 %25, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %26 = getelementptr inbounds i8, ptr %_14, i64 8
  %i17 = load i64, ptr %26, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %27 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h92219650080f49adE"(ptr align 8 %str)
          to label %bb14 unwind label %cleanup7

bb13:                                             ; preds = %bb10
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hdf8dcff67f3bf70fE"(ptr sret([24 x i8]) align 8 %_32, i64 1, i64 %n)
          to label %bb21 unwind label %cleanup7

bb21:                                             ; preds = %bb13
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h836923c9c7cd97d9E"(ptr sret([24 x i8]) align 8 %_31, ptr align 8 %_32)
          to label %bb22 unwind label %cleanup7

bb22:                                             ; preds = %bb21
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_31, i64 24, i1 false)
  br label %bb23

bb23:                                             ; preds = %bb33, %bb22
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %28 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h942bb423049ca53eE"(ptr align 8 %iter1)
          to label %bb24 unwind label %cleanup7

bb24:                                             ; preds = %bb23
  %29 = extractvalue { i64, i64 } %28, 0
  %30 = extractvalue { i64, i64 } %28, 1
  store i64 %29, ptr %_34, align 8
  %31 = getelementptr inbounds i8, ptr %_34, i64 8
  store i64 %30, ptr %31, align 8
  %_36 = load i64, ptr %_34, align 8
  %32 = getelementptr inbounds i8, ptr %_34, i64 8
  %33 = load i64, ptr %32, align 8
  %34 = trunc nuw i64 %_36 to i1
  br i1 %34, label %bb25, label %bb26

bb25:                                             ; preds = %bb24
  %35 = getelementptr inbounds i8, ptr %_34, i64 8
  %i8 = load i64, ptr %35, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE"(ptr align 8 %dp, i64 %i8, ptr align 8 @alloc_21fc98e8f7639f67e550184b9b3e3e35)
          to label %bb27 unwind label %cleanup7

bb26:                                             ; preds = %bb24
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hdf8dcff67f3bf70fE"(ptr sret([24 x i8]) align 8 %_112, i64 1, i64 %n)
          to label %bb66 unwind label %cleanup7

bb66:                                             ; preds = %bb26
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h836923c9c7cd97d9E"(ptr sret([24 x i8]) align 8 %_111, ptr align 8 %_112)
          to label %bb67 unwind label %cleanup7

bb67:                                             ; preds = %bb66
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter3, ptr align 8 %_111, i64 24, i1 false)
  br label %bb68

bb68:                                             ; preds = %bb73, %bb67
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %36 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h942bb423049ca53eE"(ptr align 8 %iter3)
          to label %bb69 unwind label %cleanup7

bb69:                                             ; preds = %bb68
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  store i64 %37, ptr %_114, align 8
  %39 = getelementptr inbounds i8, ptr %_114, i64 8
  store i64 %38, ptr %39, align 8
  %_116 = load i64, ptr %_114, align 8
  %40 = getelementptr inbounds i8, ptr %_114, i64 8
  %41 = load i64, ptr %40, align 8
  %42 = trunc nuw i64 %_116 to i1
  br i1 %42, label %bb70, label %bb71

bb70:                                             ; preds = %bb69
  %43 = getelementptr inbounds i8, ptr %_114, i64 8
  %i = load i64, ptr %43, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_121 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_91479a01cc132b8bd99781168301012c)
          to label %bb72 unwind label %cleanup7

bb71:                                             ; preds = %bb69
  store i32 0, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<usize>>
  invoke void @"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E"(ptr align 8 %arr)
          to label %bb75 unwind label %cleanup6

bb75:                                             ; preds = %bb71
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr align 8 %dp)
          to label %bb76 unwind label %cleanup

bb76:                                             ; preds = %bb75
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc0dea4bc25d3ef38E"(ptr align 8 %str)
  br label %bb79

bb79:                                             ; preds = %bb78, %bb76
  %44 = load i32, ptr %_0, align 4
  ret i32 %44

bb72:                                             ; preds = %bb70
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_120 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_121, i64 0, ptr align 8 @alloc_0c361921c4326690b9ce93226779b33f)
          to label %bb73 unwind label %cleanup7

bb73:                                             ; preds = %bb72
  %_119 = load i32, ptr %_120, align 4
  %_118 = icmp eq i32 %_119, 1
  br i1 %_118, label %bb74, label %bb68

bb74:                                             ; preds = %bb73
  store i32 1, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<usize>>
  invoke void @"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E"(ptr align 8 %arr)
          to label %bb77 unwind label %cleanup6

bb77:                                             ; preds = %bb74
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr align 8 %dp)
          to label %bb78 unwind label %cleanup

bb78:                                             ; preds = %bb77
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc0dea4bc25d3ef38E"(ptr align 8 %str)
  br label %bb79

bb27:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE"(ptr align 8 %arr, i64 %i8, ptr align 8 @alloc_e38a6f152e778ed38dd998059f98a411)
          to label %bb28 unwind label %cleanup7

bb28:                                             ; preds = %bb27
  %_42 = load i64, ptr %_43, align 8
  br label %bb29

bb29:                                             ; preds = %bb28
  %_41 = urem i64 %_42, 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_38 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E"(ptr align 8 %_39, i64 %_41, ptr align 8 @alloc_3151f122888d7b272b923b118ae66145)
          to label %bb30 unwind label %cleanup7

bb30:                                             ; preds = %bb29
  store i32 1, ptr %_38, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %45 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3b30c312cd7a579aE"(i64 0, i64 8)
          to label %bb31 unwind label %cleanup7

bb31:                                             ; preds = %bb30
  %_46.0 = extractvalue { i64, i64 } %45, 0
  %_46.1 = extractvalue { i64, i64 } %45, 1
  store i64 %_46.0, ptr %iter2, align 8
  %46 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_46.1, ptr %46, align 8
  br label %bb32

bb32:                                             ; preds = %bb65, %bb59, %bb31
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %47 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h22d361263fc1dadcE"(ptr align 8 %iter2)
          to label %bb33 unwind label %cleanup7

bb33:                                             ; preds = %bb32
  %48 = extractvalue { i64, i64 } %47, 0
  %49 = extractvalue { i64, i64 } %47, 1
  store i64 %48, ptr %_49, align 8
  %50 = getelementptr inbounds i8, ptr %_49, i64 8
  store i64 %49, ptr %50, align 8
  %_51 = load i64, ptr %_49, align 8
  %51 = getelementptr inbounds i8, ptr %_49, i64 8
  %52 = load i64, ptr %51, align 8
  %53 = trunc nuw i64 %_51 to i1
  br i1 %53, label %bb34, label %bb23

bb34:                                             ; preds = %bb33
  %54 = getelementptr inbounds i8, ptr %_49, i64 8
  %j = load i64, ptr %54, align 8
  %_59.0 = sub i64 %i8, 1
  %_59.1 = icmp ult i64 %i8, 1
  br i1 %_59.1, label %panic9, label %bb35

bb35:                                             ; preds = %bb34
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %_59.0, ptr align 8 @alloc_fe0b3e2f5d0159a1579c4a392d739c31)
          to label %bb36 unwind label %cleanup7

panic9:                                           ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bc268de6a0d03cd32736f4eb3cb19f52) #24
          to label %unreachable unwind label %cleanup7

bb36:                                             ; preds = %bb35
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_56, i64 %j, ptr align 8 @alloc_3c6ad4a88b5ba7760ae5440133276ee4)
          to label %bb37 unwind label %cleanup7

bb37:                                             ; preds = %bb36
  %_54 = load i32, ptr %_55, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %i8, ptr align 8 @alloc_22aab7586859a65119dd883c4d7e02bc)
          to label %bb38 unwind label %cleanup7

bb38:                                             ; preds = %bb37
  %55 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %j, i64 10)
  %_67.0 = extractvalue { i64, i1 } %55, 0
  %_67.1 = extractvalue { i64, i1 } %55, 1
  br i1 %_67.1, label %panic10, label %bb39

bb39:                                             ; preds = %bb38
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_69 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE"(ptr align 8 %arr, i64 %i8, ptr align 8 @alloc_379fd8bcd0d7e39858d041fe45a9f8e0)
          to label %bb40 unwind label %cleanup7

panic10:                                          ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_f5c8b8f1e59d36d96acfbe175630bb2b) #24
          to label %unreachable unwind label %cleanup7

bb40:                                             ; preds = %bb39
  %_68 = load i64, ptr %_69, align 8
  %_71.0 = add i64 %_67.0, %_68
  %_71.1 = icmp ult i64 %_71.0, %_67.0
  br i1 %_71.1, label %panic11, label %bb41

bb41:                                             ; preds = %bb40
  br label %bb42

panic11:                                          ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7fbcc64a79d6137a04cf98b1a39c529e) #24
          to label %unreachable unwind label %cleanup7

bb42:                                             ; preds = %bb41
  %_64 = urem i64 %_71.0, 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_62, i64 %_64, ptr align 8 @alloc_b793e588748ec2f321b609fee2f396d6)
          to label %bb43 unwind label %cleanup7

bb43:                                             ; preds = %bb42
  %_60 = load i32, ptr %_61, align 4
  %_53 = icmp sgt i32 %_54, %_60
  br i1 %_53, label %bb44, label %bb54

bb54:                                             ; preds = %bb53, %bb43
  %_97.0 = sub i64 %i8, 1
  %_97.1 = icmp ult i64 %i8, 1
  br i1 %_97.1, label %panic15, label %bb55

bb44:                                             ; preds = %bb43
  %_78.0 = sub i64 %i8, 1
  %_78.1 = icmp ult i64 %i8, 1
  br i1 %_78.1, label %panic12, label %bb45

bb45:                                             ; preds = %bb44
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %_78.0, ptr align 8 @alloc_36110750f1af6382653cb700615ef603)
          to label %bb46 unwind label %cleanup7

panic12:                                          ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2157518fa058fc8df27d89d3ee5dc78b) #24
          to label %unreachable unwind label %cleanup7

bb46:                                             ; preds = %bb45
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_74 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_75, i64 %j, ptr align 8 @alloc_010c68debd15905b152088134fd0ba92)
          to label %bb47 unwind label %cleanup7

bb47:                                             ; preds = %bb46
  %_73 = load i32, ptr %_74, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_80 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE"(ptr align 8 %dp, i64 %i8, ptr align 8 @alloc_c71a40dfdc774b88cd365951fe234fd2)
          to label %bb48 unwind label %cleanup7

bb48:                                             ; preds = %bb47
  %56 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %j, i64 10)
  %_85.0 = extractvalue { i64, i1 } %56, 0
  %_85.1 = extractvalue { i64, i1 } %56, 1
  br i1 %_85.1, label %panic13, label %bb49

bb49:                                             ; preds = %bb48
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_87 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE"(ptr align 8 %arr, i64 %i8, ptr align 8 @alloc_e720dc09ea814fc1452267f48f03cff7)
          to label %bb50 unwind label %cleanup7

panic13:                                          ; preds = %bb48
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2e77ef2b2b7ec0641e25cafd609cdf68) #24
          to label %unreachable unwind label %cleanup7

bb50:                                             ; preds = %bb49
  %_86 = load i64, ptr %_87, align 8
  %_89.0 = add i64 %_85.0, %_86
  %_89.1 = icmp ult i64 %_89.0, %_85.0
  br i1 %_89.1, label %panic14, label %bb51

bb51:                                             ; preds = %bb50
  br label %bb52

panic14:                                          ; preds = %bb50
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5fa158cfdac1997d880de6df54704807) #24
          to label %unreachable unwind label %cleanup7

bb52:                                             ; preds = %bb51
  %_82 = urem i64 %_89.0, 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_79 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E"(ptr align 8 %_80, i64 %_82, ptr align 8 @alloc_c2699d623275000c052b183ac55d8807)
          to label %bb53 unwind label %cleanup7

bb53:                                             ; preds = %bb52
  store i32 %_73, ptr %_79, align 4
  br label %bb54

bb55:                                             ; preds = %bb54
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_94 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %_97.0, ptr align 8 @alloc_3dfd38899e833380a761346a3692af03)
          to label %bb56 unwind label %cleanup7

panic15:                                          ; preds = %bb54
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6ef994674e5bd736e3758477edd0ad10) #24
          to label %unreachable unwind label %cleanup7

bb56:                                             ; preds = %bb55
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_93 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_94, i64 %j, ptr align 8 @alloc_833de4ab19c33bc49b75250c28b0bd80)
          to label %bb57 unwind label %cleanup7

bb57:                                             ; preds = %bb56
  %_92 = load i32, ptr %_93, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_100 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %i8, ptr align 8 @alloc_05772182099ba571316183f28f83cb4e)
          to label %bb58 unwind label %cleanup7

bb58:                                             ; preds = %bb57
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_99 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_100, i64 %j, ptr align 8 @alloc_9eabe4c02e806b4c4a49072500e10a60)
          to label %bb59 unwind label %cleanup7

bb59:                                             ; preds = %bb58
  %_98 = load i32, ptr %_99, align 4
  %_91 = icmp sgt i32 %_92, %_98
  br i1 %_91, label %bb60, label %bb32

bb60:                                             ; preds = %bb59
  %_107.0 = sub i64 %i8, 1
  %_107.1 = icmp ult i64 %i8, 1
  br i1 %_107.1, label %panic16, label %bb61

bb61:                                             ; preds = %bb60
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_104 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %_107.0, ptr align 8 @alloc_7f994b95c24d4e10f036572a25397c83)
          to label %bb62 unwind label %cleanup7

panic16:                                          ; preds = %bb60
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6f223f1de44d6d1cf3e0be9ea3574147) #24
          to label %unreachable unwind label %cleanup7

bb62:                                             ; preds = %bb61
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_103 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_104, i64 %j, ptr align 8 @alloc_c019c79073ccf3037c6094b604f95089)
          to label %bb63 unwind label %cleanup7

bb63:                                             ; preds = %bb62
  %_102 = load i32, ptr %_103, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_109 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE"(ptr align 8 %dp, i64 %i8, ptr align 8 @alloc_deea62b92dcfacbb597feb999f9f215b)
          to label %bb64 unwind label %cleanup7

bb64:                                             ; preds = %bb63
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_108 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E"(ptr align 8 %_109, i64 %j, ptr align 8 @alloc_5b303d6082f1bd830ad28a5f2110e099)
          to label %bb65 unwind label %cleanup7

bb65:                                             ; preds = %bb64
  store i32 %_102, ptr %_108, align 4
  br label %bb32

bb14:                                             ; preds = %bb12
  %_23.0 = extractvalue { ptr, i64 } %27, 0
  %_23.1 = extractvalue { ptr, i64 } %27, 1
; invoke core::str::<impl str>::chars
  %57 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h23193bd07c8fd5d1E"(ptr align 1 %_23.0, i64 %_23.1)
          to label %bb15 unwind label %cleanup7

bb15:                                             ; preds = %bb14
  %58 = extractvalue { ptr, ptr } %57, 0
  %59 = extractvalue { ptr, ptr } %57, 1
  store ptr %58, ptr %_22, align 8
  %60 = getelementptr inbounds i8, ptr %_22, i64 8
  store ptr %59, ptr %60, align 8
  %_26.0 = sub i64 %i17, 1
  %_26.1 = icmp ult i64 %i17, 1
  br i1 %_26.1, label %panic18, label %bb16

bb16:                                             ; preds = %bb15
; invoke core::iter::traits::iterator::Iterator::nth
  %_20 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h2ef9cef665a46a85E(ptr align 8 %_22, i64 %_26.0)
          to label %bb17 unwind label %cleanup7

panic18:                                          ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_aa5de0754f6287547431ce978f3aa783) #24
          to label %unreachable unwind label %cleanup7

bb17:                                             ; preds = %bb16
  store i32 %_20, ptr %self.i, align 4
  %61 = load i32, ptr %self.i, align 4
  %62 = icmp eq i32 %61, 1114112
  %_2.i = select i1 %62, i64 0, i64 1
  %63 = trunc nuw i64 %_2.i to i1
  br i1 %63, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h72e472f1696d8c37E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb17
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_52e9db55f758a9fd0ea560e0e1ed1b0c) #23
          to label %.noexc unwind label %cleanup7

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h72e472f1696d8c37E.exit": ; preds = %bb17
  %val.i = load i32, ptr %self.i, align 4
  br label %bb18

bb18:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h72e472f1696d8c37E.exit"
  %_18 = zext i32 %val.i to i64
  %_28.0 = sub i64 %_18, 48
  %_28.1 = icmp ult i64 %_18, 48
  br i1 %_28.1, label %panic19, label %bb19

bb19:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_29 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E"(ptr align 8 %arr, i64 %i17, ptr align 8 @alloc_9041fc24a6ac4007b2e50188934d5ed2)
          to label %bb20 unwind label %cleanup7

panic19:                                          ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6980a5065256e6c6b3e47ff69a5fb18e) #24
          to label %unreachable unwind label %cleanup7

bb20:                                             ; preds = %bb19
  store i64 %_28.0, ptr %_29, align 8
  br label %bb9

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb82, %bb84, %bb81, %bb80
  %64 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb84:                                             ; preds = %bb85
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE"(ptr align 8 %_5) #22
          to label %bb82 unwind label %terminate

bb83:                                             ; preds = %bb82
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds i8, ptr %0, i64 8
  %67 = load i32, ptr %66, align 8
  %68 = insertvalue { ptr, i32 } poison, ptr %65, 0
  %69 = insertvalue { ptr, i32 } %68, i32 %67, 1
  resume { ptr, i32 } %69
}
