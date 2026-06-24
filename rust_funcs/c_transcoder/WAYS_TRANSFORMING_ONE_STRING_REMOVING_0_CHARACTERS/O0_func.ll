define i32 @f_gold(ptr align 8 %a, ptr align 8 %b) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_108 = alloca [1 x i8], align 1
  %_30 = alloca [4 x i8], align 4
  %_24 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i8 0, ptr %_108, align 1
; invoke alloc::vec::Vec<T,A>::len
  %n = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h35de9534e2e9bc6dE"(ptr align 8 %a)
          to label %bb1 unwind label %cleanup

bb73:                                             ; preds = %bb76, %bb77, %bb72, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<char>>
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h31d7fdce1b09d88fE"(ptr align 8 %b) #22
          to label %bb74 unwind label %terminate

cleanup:                                          ; preds = %bb67, %bb5, %panic, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb73

bb1:                                              ; preds = %start
; invoke alloc::vec::Vec<T,A>::len
  %m = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h35de9534e2e9bc6dE"(ptr align 8 %b)
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
; invoke core::ptr::drop_in_place<alloc::vec::Vec<char>>
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h31d7fdce1b09d88fE"(ptr align 8 %b)
          to label %bb70 unwind label %cleanup7

bb5:                                              ; preds = %bb4
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17ha38b4caf1bb65d2dE(ptr sret([24 x i8]) align 8 %_9, i32 0, i64 %_11.0)
          to label %bb6 unwind label %cleanup

panic:                                            ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f866c70a3201e9d2657fb239d141fab2) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic6, %panic5, %panic2, %panic
  unreachable

bb6:                                              ; preds = %bb5
  store i8 1, ptr %_108, align 1
  %_13.0 = add i64 %m, 1
  %_13.1 = icmp ult i64 %_13.0, %m
  br i1 %_13.1, label %panic2, label %bb7

bb7:                                              ; preds = %bb6
  store i8 0, ptr %_108, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hbce639d23f1a0c1dE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_9, i64 %_13.0)
          to label %bb8 unwind label %cleanup3

panic2:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_50347d7c619c9edc961bfb3d864c07cd) #24
          to label %unreachable unwind label %cleanup3

bb77:                                             ; preds = %cleanup3
  %5 = load i8, ptr %_108, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb76, label %bb73

cleanup3:                                         ; preds = %bb7, %panic2
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb77

bb8:                                              ; preds = %bb7
  store i8 0, ptr %_108, align 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1cd1d9b6ecca6344E"(i64 0, i64 %m)
          to label %bb9 unwind label %cleanup4

bb72:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr align 8 %dp) #22
          to label %bb73 unwind label %terminate

cleanup4:                                         ; preds = %bb26, %bb25, %bb21, %bb20, %bb36, %bb35, %panic15, %bb33, %panic14, %bb31, %bb42, %bb41, %bb40, %panic13, %bb38, %bb29, %bb28, %bb56, %bb55, %panic12, %bb53, %panic11, %bb51, %panic10, %bb49, %panic9, %bb47, %bb62, %bb61, %bb60, %panic8, %bb58, %bb45, %bb44, %bb16, %bb13, %bb66, %panic6, %bb64, %panic5, %bb10, %bb8
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  store ptr %13, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %14, ptr %15, align 8
  br label %bb72

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
  %_105.0 = sub i64 %m, 1
  %_105.1 = icmp ult i64 %m, 1
  br i1 %_105.1, label %panic5, label %bb64

bb64:                                             ; preds = %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_102 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %_105.0, ptr align 8 @alloc_0a16c3125cc6bab935142c91cea93e80)
          to label %bb65 unwind label %cleanup4

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f0e7a3c6231cdfdb62c39ceaca33426e) #24
          to label %unreachable unwind label %cleanup4

bb65:                                             ; preds = %bb64
  %_107.0 = sub i64 %n, 1
  %_107.1 = icmp ult i64 %n, 1
  br i1 %_107.1, label %panic6, label %bb66

bb66:                                             ; preds = %bb65
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_101 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_102, i64 %_107.0, ptr align 8 @alloc_dd67ea89b5644bb05725e50b4df6688b)
          to label %bb67 unwind label %cleanup4

panic6:                                           ; preds = %bb65
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a7341534d68e55a82d8dfd247dadc9c1) #24
          to label %unreachable unwind label %cleanup4

bb67:                                             ; preds = %bb66
  %26 = load i32, ptr %_101, align 4
  store i32 %26, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr align 8 %dp)
          to label %bb68 unwind label %cleanup

bb68:                                             ; preds = %bb67
; invoke core::ptr::drop_in_place<alloc::vec::Vec<char>>
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h31d7fdce1b09d88fE"(ptr align 8 %b)
          to label %bb69 unwind label %cleanup7

bb74:                                             ; preds = %bb73, %cleanup7
; invoke core::ptr::drop_in_place<alloc::vec::Vec<char>>
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h31d7fdce1b09d88fE"(ptr align 8 %a) #22
          to label %bb75 unwind label %terminate

cleanup7:                                         ; preds = %bb3, %bb68
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  store ptr %28, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %29, ptr %30, align 8
  br label %bb74

bb69:                                             ; preds = %bb68
; call core::ptr::drop_in_place<alloc::vec::Vec<char>>
  call void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h31d7fdce1b09d88fE"(ptr align 8 %a)
  br label %bb71

bb71:                                             ; preds = %bb70, %bb69
  %31 = load i32, ptr %_0, align 4
  ret i32 %31

bb15:                                             ; preds = %bb13
  %_21.0 = extractvalue { i64, i64 } %25, 0
  %_21.1 = extractvalue { i64, i64 } %25, 1
  store i64 %_21.0, ptr %iter1, align 8
  %32 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_21.1, ptr %32, align 8
  br label %bb16

bb16:                                             ; preds = %bb27, %bb37, %bb43, %bb57, %bb63, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %33 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6cd2d85dc0204263E"(ptr align 8 %iter1)
          to label %bb17 unwind label %cleanup4

bb17:                                             ; preds = %bb16
  %34 = extractvalue { i64, i64 } %33, 0
  %35 = extractvalue { i64, i64 } %33, 1
  store i64 %34, ptr %_24, align 8
  %36 = getelementptr inbounds i8, ptr %_24, i64 8
  store i64 %35, ptr %36, align 8
  %_26 = load i64, ptr %_24, align 8
  %37 = getelementptr inbounds i8, ptr %_24, i64 8
  %38 = load i64, ptr %37, align 8
  %39 = trunc nuw i64 %_26 to i1
  br i1 %39, label %bb18, label %bb10

bb18:                                             ; preds = %bb17
  %40 = getelementptr inbounds i8, ptr %_24, i64 8
  %j = load i64, ptr %40, align 8
  %_28 = icmp eq i64 %i, 0
  br i1 %_28, label %bb19, label %bb44

bb44:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_69 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E"(ptr align 8 %a, i64 %j, ptr align 8 @alloc_e2c25de43ad76fbeffb4a359d9df634f)
          to label %bb45 unwind label %cleanup4

bb19:                                             ; preds = %bb18
  %_29 = icmp eq i64 %j, 0
  br i1 %_29, label %bb20, label %bb28

bb45:                                             ; preds = %bb44
  %_68 = load i32, ptr %_69, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_72 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E"(ptr align 8 %b, i64 %i, ptr align 8 @alloc_4165738a2498148db73988ae2d8cadbc)
          to label %bb46 unwind label %cleanup4

bb46:                                             ; preds = %bb45
  %_71 = load i32, ptr %_72, align 4
  %_67 = icmp eq i32 %_68, %_71
  br i1 %_67, label %bb47, label %bb58

bb58:                                             ; preds = %bb46
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_94 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_071548ff8d4fec0d7784fbb777fc5790)
          to label %bb59 unwind label %cleanup4

bb47:                                             ; preds = %bb46
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_76 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_e4c31eaea05db6f83371620805c4a253)
          to label %bb48 unwind label %cleanup4

bb59:                                             ; preds = %bb58
  %_97.0 = sub i64 %j, 1
  %_97.1 = icmp ult i64 %j, 1
  br i1 %_97.1, label %panic8, label %bb60

bb60:                                             ; preds = %bb59
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_93 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_94, i64 %_97.0, ptr align 8 @alloc_c655c6356d30e8de6bd36a6ed9a9fa33)
          to label %bb61 unwind label %cleanup4

panic8:                                           ; preds = %bb59
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_578d185dd820e5c6768b07c3d77f08c7) #24
          to label %unreachable unwind label %cleanup4

bb61:                                             ; preds = %bb60
  %_92 = load i32, ptr %_93, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_99 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_e9913f9c0e33e76c7169b1a9f3c50438)
          to label %bb62 unwind label %cleanup4

bb62:                                             ; preds = %bb61
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_98 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_99, i64 %j, ptr align 8 @alloc_9fce28314282ad78b81c2c988896b426)
          to label %bb63 unwind label %cleanup4

bb63:                                             ; preds = %bb62
  store i32 %_92, ptr %_98, align 4
  br label %bb16

bb48:                                             ; preds = %bb47
  %_79.0 = sub i64 %j, 1
  %_79.1 = icmp ult i64 %j, 1
  br i1 %_79.1, label %panic9, label %bb49

bb49:                                             ; preds = %bb48
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_76, i64 %_79.0, ptr align 8 @alloc_1b48e366bc3a9f420850e7d5d1babf90)
          to label %bb50 unwind label %cleanup4

panic9:                                           ; preds = %bb48
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0ede02b575b355cfa441ac9c9d216348) #24
          to label %unreachable unwind label %cleanup4

bb50:                                             ; preds = %bb49
  %_74 = load i32, ptr %_75, align 4
  %_85.0 = sub i64 %i, 1
  %_85.1 = icmp ult i64 %i, 1
  br i1 %_85.1, label %panic10, label %bb51

bb51:                                             ; preds = %bb50
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_82 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %_85.0, ptr align 8 @alloc_8279e950242aa569aff7a93911db9c8e)
          to label %bb52 unwind label %cleanup4

panic10:                                          ; preds = %bb50
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_11c5811d440f56af6036382bb3ceeb7b) #24
          to label %unreachable unwind label %cleanup4

bb52:                                             ; preds = %bb51
  %_87.0 = sub i64 %j, 1
  %_87.1 = icmp ult i64 %j, 1
  br i1 %_87.1, label %panic11, label %bb53

bb53:                                             ; preds = %bb52
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_81 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_82, i64 %_87.0, ptr align 8 @alloc_0672ea045b4da33727945e5e13cffe53)
          to label %bb54 unwind label %cleanup4

panic11:                                          ; preds = %bb52
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e7098eb3a42cf5e961bf3800e8b9ba78) #24
          to label %unreachable unwind label %cleanup4

bb54:                                             ; preds = %bb53
  %_80 = load i32, ptr %_81, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_74, i32 %_80)
  %_88.0 = extractvalue { i32, i1 } %41, 0
  %_88.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_88.1, label %panic12, label %bb55

bb55:                                             ; preds = %bb54
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_90 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_6adfe5d1312e94cc0a6b9a740322a453)
          to label %bb56 unwind label %cleanup4

panic12:                                          ; preds = %bb54
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c45f66539a5054a8165ee0f408d611ff) #24
          to label %unreachable unwind label %cleanup4

bb56:                                             ; preds = %bb55
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_89 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_90, i64 %j, ptr align 8 @alloc_92c9b73a7ed86c6283c9f63cf655c7a2)
          to label %bb57 unwind label %cleanup4

bb57:                                             ; preds = %bb56
  store i32 %_88.0, ptr %_89, align 4
  br label %bb16

bb28:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E"(ptr align 8 %a, i64 %j, ptr align 8 @alloc_6c4d6176fcff5f01f8d5160623672307)
          to label %bb29 unwind label %cleanup4

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E"(ptr align 8 %a, i64 %j, ptr align 8 @alloc_52da8339862be3aca76782067f628214)
          to label %bb21 unwind label %cleanup4

bb29:                                             ; preds = %bb28
  %_42 = load i32, ptr %_43, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E"(ptr align 8 %b, i64 %i, ptr align 8 @alloc_feee86c2e45536296ad46361c6a49bea)
          to label %bb30 unwind label %cleanup4

bb30:                                             ; preds = %bb29
  %_45 = load i32, ptr %_46, align 4
  %_41 = icmp eq i32 %_42, %_45
  br i1 %_41, label %bb31, label %bb38

bb38:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_60 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_dbdc8ef9ca32770a7b4e69e792ad1d31)
          to label %bb39 unwind label %cleanup4

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3fb755cb0240be98E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_8673982a8796fe66743bf99b6aac8bb1)
          to label %bb32 unwind label %cleanup4

bb39:                                             ; preds = %bb38
  %_63.0 = sub i64 %j, 1
  %_63.1 = icmp ult i64 %j, 1
  br i1 %_63.1, label %panic13, label %bb40

bb40:                                             ; preds = %bb39
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_59 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_60, i64 %_63.0, ptr align 8 @alloc_385247ccc61107d393044313eb115c52)
          to label %bb41 unwind label %cleanup4

panic13:                                          ; preds = %bb39
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f30e574da0221666a9b0bddc191226f1) #24
          to label %unreachable unwind label %cleanup4

bb41:                                             ; preds = %bb40
  %_58 = load i32, ptr %_59, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_65 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_4104740e9dbfe9c9e997e27e12f2964b)
          to label %bb42 unwind label %cleanup4

bb42:                                             ; preds = %bb41
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_64 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_65, i64 %j, ptr align 8 @alloc_c9a3d92d01657868b6dab2e71a680de4)
          to label %bb43 unwind label %cleanup4

bb43:                                             ; preds = %bb42
  store i32 %_58, ptr %_64, align 4
  br label %bb16

bb32:                                             ; preds = %bb31
  %_53.0 = sub i64 %j, 1
  %_53.1 = icmp ult i64 %j, 1
  br i1 %_53.1, label %panic14, label %bb33

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34c68e3a83dde969E"(ptr align 8 %_50, i64 %_53.0, ptr align 8 @alloc_bdb8c5fb7c5ef3cafe4826a03b716226)
          to label %bb34 unwind label %cleanup4

panic14:                                          ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8d5316085751ac9a45482eb2826ac928) #24
          to label %unreachable unwind label %cleanup4

bb34:                                             ; preds = %bb33
  %_48 = load i32, ptr %_49, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_48, i32 1)
  %_54.0 = extractvalue { i32, i1 } %42, 0
  %_54.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_54.1, label %panic15, label %bb35

bb35:                                             ; preds = %bb34
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_56 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_8383e63f1d0c224bb9abb11b19e58fcf)
          to label %bb36 unwind label %cleanup4

panic15:                                          ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c476188b05e376c918a73a22cb0a42f7) #24
          to label %unreachable unwind label %cleanup4

bb36:                                             ; preds = %bb35
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_55 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_56, i64 %j, ptr align 8 @alloc_8694ea0f3961cc7bf551d46849a0c483)
          to label %bb37 unwind label %cleanup4

bb37:                                             ; preds = %bb36
  store i32 %_54.0, ptr %_55, align 4
  br label %bb16

bb21:                                             ; preds = %bb20
  %_32 = load i32, ptr %_33, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4a5627eab9e39865E"(ptr align 8 %b, i64 %i, ptr align 8 @alloc_f98e6e646c05a6c5e37cccb30b8b88bb)
          to label %bb22 unwind label %cleanup4

bb22:                                             ; preds = %bb21
  %_35 = load i32, ptr %_36, align 4
  %_31 = icmp eq i32 %_32, %_35
  br i1 %_31, label %bb23, label %bb24

bb24:                                             ; preds = %bb22
  store i32 0, ptr %_30, align 4
  br label %bb25

bb23:                                             ; preds = %bb22
  store i32 1, ptr %_30, align 4
  br label %bb25

bb25:                                             ; preds = %bb23, %bb24
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfb96682c48386377E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_df949329c11abe3c58bdc361191879eb)
          to label %bb26 unwind label %cleanup4

bb26:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_38 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08da2984883fdc0cE"(ptr align 8 %_39, i64 %j, ptr align 8 @alloc_61bb65203435de9b41df5c621b38036f)
          to label %bb27 unwind label %cleanup4

bb27:                                             ; preds = %bb26
  %43 = load i32, ptr %_30, align 4
  store i32 %43, ptr %_38, align 4
  br label %bb16

bb12:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb74, %bb73, %bb76, %bb72
  %44 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb76:                                             ; preds = %bb77
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E"(ptr align 8 %_9) #22
          to label %bb73 unwind label %terminate

bb70:                                             ; preds = %bb3
; call core::ptr::drop_in_place<alloc::vec::Vec<char>>
  call void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h31d7fdce1b09d88fE"(ptr align 8 %a)
  br label %bb71

bb75:                                             ; preds = %bb74
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds i8, ptr %0, i64 8
  %47 = load i32, ptr %46, align 8
  %48 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %49 = insertvalue { ptr, i32 } %48, i32 %47, 1
  resume { ptr, i32 } %49
}
