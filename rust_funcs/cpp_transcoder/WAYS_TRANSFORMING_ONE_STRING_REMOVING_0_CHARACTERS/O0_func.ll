define i32 @f_gold(ptr align 8 %a, ptr align 8 %b) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_126 = alloca [1 x i8], align 1
  %_89 = alloca [16 x i8], align 8
  %_87 = alloca [4 x i8], align 4
  %_83 = alloca [16 x i8], align 8
  %_81 = alloca [4 x i8], align 4
  %_57 = alloca [16 x i8], align 8
  %_55 = alloca [4 x i8], align 4
  %_51 = alloca [16 x i8], align 8
  %_49 = alloca [4 x i8], align 4
  %_41 = alloca [16 x i8], align 8
  %_39 = alloca [4 x i8], align 4
  %_35 = alloca [16 x i8], align 8
  %_33 = alloca [4 x i8], align 4
  %_30 = alloca [4 x i8], align 4
  %_24 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i8 0, ptr %_126, align 1
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17hedfda0299cca92ecE(ptr align 8 %a)
          to label %bb1 unwind label %cleanup

bb87:                                             ; preds = %bb90, %bb91, %bb86, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E"(ptr align 8 %b) #22
          to label %bb88 unwind label %terminate

cleanup:                                          ; preds = %bb82, %bb5, %panic, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb87

bb1:                                              ; preds = %start
; invoke alloc::string::String::len
  %m = invoke i64 @_ZN5alloc6string6String3len17hedfda0299cca92ecE(ptr align 8 %b)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7 = icmp eq i64 %m, 0
  br i1 %_7, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %_11.0 = add i64 %n, 1
  %_11.1 = icmp ult i64 %_11.0, %n
  br i1 %_11.1, label %panic, label %bb5

bb3:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb83

bb5:                                              ; preds = %bb4
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE(ptr sret([24 x i8]) align 8 %_9, i32 0, i64 %_11.0)
          to label %bb6 unwind label %cleanup

panic:                                            ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2685cf32eca74f4dd534074740284319) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic2, %panic
  unreachable

bb6:                                              ; preds = %bb5
  store i8 1, ptr %_126, align 1
  %_13.0 = add i64 %m, 1
  %_13.1 = icmp ult i64 %_13.0, %m
  br i1 %_13.1, label %panic2, label %bb7

bb7:                                              ; preds = %bb6
  store i8 0, ptr %_126, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hbce639d23f1a0c1dE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_9, i64 %_13.0)
          to label %bb8 unwind label %cleanup3

panic2:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4921060bbb78c6886f01fb7904c9470e) #24
          to label %unreachable unwind label %cleanup3

bb91:                                             ; preds = %cleanup3
  %5 = load i8, ptr %_126, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb90, label %bb87

cleanup3:                                         ; preds = %bb7, %panic2
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb91

bb8:                                              ; preds = %bb7
  store i8 0, ptr %_126, align 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1cd1d9b6ecca6344E"(i64 0, i64 %m)
          to label %bb9 unwind label %cleanup4

bb86:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr align 8 %dp) #22
          to label %bb87 unwind label %terminate

cleanup4:                                         ; preds = %bb31, %bb30, %bb26, %bb25, %bb24, %bb23, %bb22, %bb21, %bb20, %bb46, %bb45, %panic14, %bb43, %panic13, %bb41, %bb52, %bb51, %bb50, %panic12, %bb48, %bb39, %bb38, %bb37, %bb36, %bb35, %bb34, %bb33, %bb71, %bb70, %panic11, %bb68, %panic10, %bb66, %panic9, %bb64, %panic8, %bb62, %bb77, %bb76, %bb75, %panic7, %bb73, %bb60, %bb59, %bb58, %bb57, %bb56, %bb55, %bb54, %bb16, %bb13, %bb81, %panic6, %bb79, %panic5, %bb10, %bb8
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  store ptr %13, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %14, ptr %15, align 8
  br label %bb86

bb9:                                              ; preds = %bb8
  %_14.0 = extractvalue { i64, i64 } %11, 0
  %_14.1 = extractvalue { i64, i64 } %11, 1
  store i64 %_14.0, ptr %iter, align 8
  %16 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_14.1, ptr %16, align 8
  br label %bb10

bb10:                                             ; preds = %bb17, %bb9
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %17 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6cd2d85dc0204263E"(ptr align 8 %iter)
          to label %bb11 unwind label %cleanup4

bb11:                                             ; preds = %bb10
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  store i64 %18, ptr %_17, align 8
  %20 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %19, ptr %20, align 8
  %_19 = load i64, ptr %_17, align 8
  %21 = getelementptr inbounds i8, ptr %_17, i64 8
  %22 = load i64, ptr %21, align 8
  %23 = trunc nuw i64 %_19 to i1
  br i1 %23, label %bb13, label %bb14

bb13:                                             ; preds = %bb11
  %24 = getelementptr inbounds i8, ptr %_17, i64 8
  %i = load i64, ptr %24, align 8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %25 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1cd1d9b6ecca6344E"(i64 %i, i64 %n)
          to label %bb15 unwind label %cleanup4

bb14:                                             ; preds = %bb11
  %_123.0 = sub i64 %m, 1
  %_123.1 = icmp ult i64 %m, 1
  br i1 %_123.1, label %panic5, label %bb79

bb79:                                             ; preds = %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_120 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %_123.0, ptr align 8 @alloc_99467a59faf92f31a8982732e7fb49b0)
          to label %bb80 unwind label %cleanup4

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_562f3194d562ebe8d32dc562858b56e5) #24
          to label %unreachable unwind label %cleanup4

bb80:                                             ; preds = %bb79
  %_125.0 = sub i64 %n, 1
  %_125.1 = icmp ult i64 %n, 1
  br i1 %_125.1, label %panic6, label %bb81

bb81:                                             ; preds = %bb80
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_119 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_120, i64 %_125.0, ptr align 8 @alloc_1da6aa557ce0707293e833e02c8c2da9)
          to label %bb82 unwind label %cleanup4

panic6:                                           ; preds = %bb80
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b26edb94f4dc725422f4f756e34d4e41) #24
          to label %unreachable unwind label %cleanup4

bb82:                                             ; preds = %bb81
  %26 = load i32, ptr %_119, align 4
  store i32 %26, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr align 8 %dp)
          to label %bb83 unwind label %cleanup

bb83:                                             ; preds = %bb3, %bb82
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E"(ptr align 8 %b)
          to label %bb84 unwind label %cleanup15

bb15:                                             ; preds = %bb13
  %_21.0 = extractvalue { i64, i64 } %25, 0
  %_21.1 = extractvalue { i64, i64 } %25, 1
  store i64 %_21.0, ptr %iter1, align 8
  %27 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_21.1, ptr %27, align 8
  br label %bb16

bb16:                                             ; preds = %bb32, %bb47, %bb53, %bb72, %bb78, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %28 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6cd2d85dc0204263E"(ptr align 8 %iter1)
          to label %bb17 unwind label %cleanup4

bb17:                                             ; preds = %bb16
  %29 = extractvalue { i64, i64 } %28, 0
  %30 = extractvalue { i64, i64 } %28, 1
  store i64 %29, ptr %_24, align 8
  %31 = getelementptr inbounds i8, ptr %_24, i64 8
  store i64 %30, ptr %31, align 8
  %_26 = load i64, ptr %_24, align 8
  %32 = getelementptr inbounds i8, ptr %_24, i64 8
  %33 = load i64, ptr %32, align 8
  %34 = trunc nuw i64 %_26 to i1
  br i1 %34, label %bb18, label %bb10

bb18:                                             ; preds = %bb17
  %35 = getelementptr inbounds i8, ptr %_24, i64 8
  %j = load i64, ptr %35, align 8
  %_28 = icmp eq i64 %i, 0
  br i1 %_28, label %bb19, label %bb54

bb54:                                             ; preds = %bb18
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %36 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99446e8d04c0c32bE"(ptr align 8 %a)
          to label %bb55 unwind label %cleanup4

bb19:                                             ; preds = %bb18
  %_29 = icmp eq i64 %j, 0
  br i1 %_29, label %bb20, label %bb33

bb55:                                             ; preds = %bb54
  %_84.0 = extractvalue { ptr, i64 } %36, 0
  %_84.1 = extractvalue { ptr, i64 } %36, 1
; invoke core::str::<impl str>::chars
  %37 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h505ef81f7f7ded76E"(ptr align 1 %_84.0, i64 %_84.1)
          to label %bb56 unwind label %cleanup4

bb56:                                             ; preds = %bb55
  %38 = extractvalue { ptr, ptr } %37, 0
  %39 = extractvalue { ptr, ptr } %37, 1
  store ptr %38, ptr %_83, align 8
  %40 = getelementptr inbounds i8, ptr %_83, i64 8
  store ptr %39, ptr %40, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %41 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbcb6472adf23e547E(ptr align 8 %_83, i64 %j)
          to label %bb57 unwind label %cleanup4

bb57:                                             ; preds = %bb56
  store i32 %41, ptr %_81, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %42 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99446e8d04c0c32bE"(ptr align 8 %b)
          to label %bb58 unwind label %cleanup4

bb58:                                             ; preds = %bb57
  %_90.0 = extractvalue { ptr, i64 } %42, 0
  %_90.1 = extractvalue { ptr, i64 } %42, 1
; invoke core::str::<impl str>::chars
  %43 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h505ef81f7f7ded76E"(ptr align 1 %_90.0, i64 %_90.1)
          to label %bb59 unwind label %cleanup4

bb59:                                             ; preds = %bb58
  %44 = extractvalue { ptr, ptr } %43, 0
  %45 = extractvalue { ptr, ptr } %43, 1
  store ptr %44, ptr %_89, align 8
  %46 = getelementptr inbounds i8, ptr %_89, i64 8
  store ptr %45, ptr %46, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %47 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbcb6472adf23e547E(ptr align 8 %_89, i64 %i)
          to label %bb60 unwind label %cleanup4

bb60:                                             ; preds = %bb59
  store i32 %47, ptr %_87, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_79 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha974e46e84b48eb8E"(ptr align 4 %_81, ptr align 4 %_87)
          to label %bb61 unwind label %cleanup4

bb61:                                             ; preds = %bb60
  br i1 %_79, label %bb62, label %bb73

bb73:                                             ; preds = %bb61
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_112 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_eb5451513a65077e433bc51259a8b1fa)
          to label %bb74 unwind label %cleanup4

bb62:                                             ; preds = %bb61
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_94 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_9969ea6e63b83f816ceb42d807ba3bd7)
          to label %bb63 unwind label %cleanup4

bb74:                                             ; preds = %bb73
  %_115.0 = sub i64 %j, 1
  %_115.1 = icmp ult i64 %j, 1
  br i1 %_115.1, label %panic7, label %bb75

bb75:                                             ; preds = %bb74
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_111 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_112, i64 %_115.0, ptr align 8 @alloc_ab88827fcde2a19da873088a06ab1397)
          to label %bb76 unwind label %cleanup4

panic7:                                           ; preds = %bb74
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a8288617db1b866a1f817afec7d608cc) #24
          to label %unreachable unwind label %cleanup4

bb76:                                             ; preds = %bb75
  %_110 = load i32, ptr %_111, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_117 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_aa9292e05893e9c3760ac5ce74042965)
          to label %bb77 unwind label %cleanup4

bb77:                                             ; preds = %bb76
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_116 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_117, i64 %j, ptr align 8 @alloc_869e166494aaecdb6cdcc119cf8d124e)
          to label %bb78 unwind label %cleanup4

bb78:                                             ; preds = %bb77
  store i32 %_110, ptr %_116, align 4
  br label %bb16

bb63:                                             ; preds = %bb62
  %_97.0 = sub i64 %j, 1
  %_97.1 = icmp ult i64 %j, 1
  br i1 %_97.1, label %panic8, label %bb64

bb64:                                             ; preds = %bb63
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_93 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_94, i64 %_97.0, ptr align 8 @alloc_c7004dbbf85d9d6d0b4961f2c2b71e10)
          to label %bb65 unwind label %cleanup4

panic8:                                           ; preds = %bb63
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d60789ed0907a98a2fb1a792c3b93aa2) #24
          to label %unreachable unwind label %cleanup4

bb65:                                             ; preds = %bb64
  %_92 = load i32, ptr %_93, align 4
  %_103.0 = sub i64 %i, 1
  %_103.1 = icmp ult i64 %i, 1
  br i1 %_103.1, label %panic9, label %bb66

bb66:                                             ; preds = %bb65
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_100 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %_103.0, ptr align 8 @alloc_347238214f65429bfb9b8fc7c7359da9)
          to label %bb67 unwind label %cleanup4

panic9:                                           ; preds = %bb65
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5220804e775d169651b66213b585fc63) #24
          to label %unreachable unwind label %cleanup4

bb67:                                             ; preds = %bb66
  %_105.0 = sub i64 %j, 1
  %_105.1 = icmp ult i64 %j, 1
  br i1 %_105.1, label %panic10, label %bb68

bb68:                                             ; preds = %bb67
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_99 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_100, i64 %_105.0, ptr align 8 @alloc_f642433dfda333e16e846e7f51a590d6)
          to label %bb69 unwind label %cleanup4

panic10:                                          ; preds = %bb67
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9832706c0fc39ae9bfbc8100470e5f3a) #24
          to label %unreachable unwind label %cleanup4

bb69:                                             ; preds = %bb68
  %_98 = load i32, ptr %_99, align 4
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_92, i32 %_98)
  %_106.0 = extractvalue { i32, i1 } %48, 0
  %_106.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_106.1, label %panic11, label %bb70

bb70:                                             ; preds = %bb69
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_108 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_5c7c15609a8788b287d320f12b37c089)
          to label %bb71 unwind label %cleanup4

panic11:                                          ; preds = %bb69
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e01a720c9292421dc3b8d0a26c029302) #24
          to label %unreachable unwind label %cleanup4

bb71:                                             ; preds = %bb70
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_107 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_108, i64 %j, ptr align 8 @alloc_651212460c2af58baba06db3baf4b897)
          to label %bb72 unwind label %cleanup4

bb72:                                             ; preds = %bb71
  store i32 %_106.0, ptr %_107, align 4
  br label %bb16

bb33:                                             ; preds = %bb19
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %49 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99446e8d04c0c32bE"(ptr align 8 %a)
          to label %bb34 unwind label %cleanup4

bb20:                                             ; preds = %bb19
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %50 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99446e8d04c0c32bE"(ptr align 8 %a)
          to label %bb21 unwind label %cleanup4

bb34:                                             ; preds = %bb33
  %_52.0 = extractvalue { ptr, i64 } %49, 0
  %_52.1 = extractvalue { ptr, i64 } %49, 1
; invoke core::str::<impl str>::chars
  %51 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h505ef81f7f7ded76E"(ptr align 1 %_52.0, i64 %_52.1)
          to label %bb35 unwind label %cleanup4

bb35:                                             ; preds = %bb34
  %52 = extractvalue { ptr, ptr } %51, 0
  %53 = extractvalue { ptr, ptr } %51, 1
  store ptr %52, ptr %_51, align 8
  %54 = getelementptr inbounds i8, ptr %_51, i64 8
  store ptr %53, ptr %54, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %55 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbcb6472adf23e547E(ptr align 8 %_51, i64 %j)
          to label %bb36 unwind label %cleanup4

bb36:                                             ; preds = %bb35
  store i32 %55, ptr %_49, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %56 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99446e8d04c0c32bE"(ptr align 8 %b)
          to label %bb37 unwind label %cleanup4

bb37:                                             ; preds = %bb36
  %_58.0 = extractvalue { ptr, i64 } %56, 0
  %_58.1 = extractvalue { ptr, i64 } %56, 1
; invoke core::str::<impl str>::chars
  %57 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h505ef81f7f7ded76E"(ptr align 1 %_58.0, i64 %_58.1)
          to label %bb38 unwind label %cleanup4

bb38:                                             ; preds = %bb37
  %58 = extractvalue { ptr, ptr } %57, 0
  %59 = extractvalue { ptr, ptr } %57, 1
  store ptr %58, ptr %_57, align 8
  %60 = getelementptr inbounds i8, ptr %_57, i64 8
  store ptr %59, ptr %60, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %61 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbcb6472adf23e547E(ptr align 8 %_57, i64 %i)
          to label %bb39 unwind label %cleanup4

bb39:                                             ; preds = %bb38
  store i32 %61, ptr %_55, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_47 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha974e46e84b48eb8E"(ptr align 4 %_49, ptr align 4 %_55)
          to label %bb40 unwind label %cleanup4

bb40:                                             ; preds = %bb39
  br i1 %_47, label %bb41, label %bb48

bb48:                                             ; preds = %bb40
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_72 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_b0c55838a1807dade4ed6ffa37eb7616)
          to label %bb49 unwind label %cleanup4

bb41:                                             ; preds = %bb40
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_dce8333e95b5cbb7cb2d85dad28a73c4)
          to label %bb42 unwind label %cleanup4

bb49:                                             ; preds = %bb48
  %_75.0 = sub i64 %j, 1
  %_75.1 = icmp ult i64 %j, 1
  br i1 %_75.1, label %panic12, label %bb50

bb50:                                             ; preds = %bb49
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_71 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_72, i64 %_75.0, ptr align 8 @alloc_9a2bae5b451e09582d8754e098126a9f)
          to label %bb51 unwind label %cleanup4

panic12:                                          ; preds = %bb49
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c6a87723c70ed0bfa2fcbcefdd638684) #24
          to label %unreachable unwind label %cleanup4

bb51:                                             ; preds = %bb50
  %_70 = load i32, ptr %_71, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_77 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_2fdc5b947e94f663a71e212a2f302cf6)
          to label %bb52 unwind label %cleanup4

bb52:                                             ; preds = %bb51
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_76 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_77, i64 %j, ptr align 8 @alloc_f0d80ef845d392f51f92bbfa45557fc8)
          to label %bb53 unwind label %cleanup4

bb53:                                             ; preds = %bb52
  store i32 %_70, ptr %_76, align 4
  br label %bb16

bb42:                                             ; preds = %bb41
  %_65.0 = sub i64 %j, 1
  %_65.1 = icmp ult i64 %j, 1
  br i1 %_65.1, label %panic13, label %bb43

bb43:                                             ; preds = %bb42
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_62, i64 %_65.0, ptr align 8 @alloc_f798e728ce611e26120c04995e730d49)
          to label %bb44 unwind label %cleanup4

panic13:                                          ; preds = %bb42
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_529d10dabca8fb56188d04e4668273b6) #24
          to label %unreachable unwind label %cleanup4

bb44:                                             ; preds = %bb43
  %_60 = load i32, ptr %_61, align 4
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_60, i32 1)
  %_66.0 = extractvalue { i32, i1 } %62, 0
  %_66.1 = extractvalue { i32, i1 } %62, 1
  br i1 %_66.1, label %panic14, label %bb45

bb45:                                             ; preds = %bb44
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_68 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_0c5e6e8b74d3493e790ccbd0ddc6c1f1)
          to label %bb46 unwind label %cleanup4

panic14:                                          ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3f4f6da46a84bf7954802eb17fc3a3b9) #24
          to label %unreachable unwind label %cleanup4

bb46:                                             ; preds = %bb45
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_67 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_68, i64 %j, ptr align 8 @alloc_cf85ed6d618ffad79d0e1f37d9fda9d4)
          to label %bb47 unwind label %cleanup4

bb47:                                             ; preds = %bb46
  store i32 %_66.0, ptr %_67, align 4
  br label %bb16

bb21:                                             ; preds = %bb20
  %_36.0 = extractvalue { ptr, i64 } %50, 0
  %_36.1 = extractvalue { ptr, i64 } %50, 1
; invoke core::str::<impl str>::chars
  %63 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h505ef81f7f7ded76E"(ptr align 1 %_36.0, i64 %_36.1)
          to label %bb22 unwind label %cleanup4

bb22:                                             ; preds = %bb21
  %64 = extractvalue { ptr, ptr } %63, 0
  %65 = extractvalue { ptr, ptr } %63, 1
  store ptr %64, ptr %_35, align 8
  %66 = getelementptr inbounds i8, ptr %_35, i64 8
  store ptr %65, ptr %66, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %67 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbcb6472adf23e547E(ptr align 8 %_35, i64 %j)
          to label %bb23 unwind label %cleanup4

bb23:                                             ; preds = %bb22
  store i32 %67, ptr %_33, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %68 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99446e8d04c0c32bE"(ptr align 8 %b)
          to label %bb24 unwind label %cleanup4

bb24:                                             ; preds = %bb23
  %_42.0 = extractvalue { ptr, i64 } %68, 0
  %_42.1 = extractvalue { ptr, i64 } %68, 1
; invoke core::str::<impl str>::chars
  %69 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h505ef81f7f7ded76E"(ptr align 1 %_42.0, i64 %_42.1)
          to label %bb25 unwind label %cleanup4

bb25:                                             ; preds = %bb24
  %70 = extractvalue { ptr, ptr } %69, 0
  %71 = extractvalue { ptr, ptr } %69, 1
  store ptr %70, ptr %_41, align 8
  %72 = getelementptr inbounds i8, ptr %_41, i64 8
  store ptr %71, ptr %72, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %73 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbcb6472adf23e547E(ptr align 8 %_41, i64 %i)
          to label %bb26 unwind label %cleanup4

bb26:                                             ; preds = %bb25
  store i32 %73, ptr %_39, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_31 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha974e46e84b48eb8E"(ptr align 4 %_33, ptr align 4 %_39)
          to label %bb27 unwind label %cleanup4

bb27:                                             ; preds = %bb26
  br i1 %_31, label %bb28, label %bb29

bb29:                                             ; preds = %bb27
  store i32 0, ptr %_30, align 4
  br label %bb30

bb28:                                             ; preds = %bb27
  store i32 1, ptr %_30, align 4
  br label %bb30

bb30:                                             ; preds = %bb28, %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_45 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_cde4bbf51292371fbfb6375d71c47d6f)
          to label %bb31 unwind label %cleanup4

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_44 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_45, i64 %j, ptr align 8 @alloc_caa839e9b836481f4a1ae7bb01f6879a)
          to label %bb32 unwind label %cleanup4

bb32:                                             ; preds = %bb31
  %74 = load i32, ptr %_30, align 4
  store i32 %74, ptr %_44, align 4
  br label %bb16

bb12:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb88, %bb87, %bb90, %bb86
  %75 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb90:                                             ; preds = %bb91
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E"(ptr align 8 %_9) #22
          to label %bb87 unwind label %terminate

bb88:                                             ; preds = %bb87, %cleanup15
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E"(ptr align 8 %a) #22
          to label %bb89 unwind label %terminate

cleanup15:                                        ; preds = %bb83
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = extractvalue { ptr, i32 } %76, 1
  store ptr %77, ptr %0, align 8
  %79 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %78, ptr %79, align 8
  br label %bb88

bb84:                                             ; preds = %bb83
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E"(ptr align 8 %a)
  %80 = load i32, ptr %_0, align 4
  ret i32 %80

bb89:                                             ; preds = %bb88
  %81 = load ptr, ptr %0, align 8
  %82 = getelementptr inbounds i8, ptr %0, i64 8
  %83 = load i32, ptr %82, align 8
  %84 = insertvalue { ptr, i32 } poison, ptr %81, 0
  %85 = insertvalue { ptr, i32 } %84, i32 %83, 1
  resume { ptr, i32 } %85
}
