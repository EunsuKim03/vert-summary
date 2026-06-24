define i32 @f_gold(i64 %0, i64 %1, i32 %n, i32 %W) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %j = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %_6 = alloca [24 x i8], align 8
  %mat = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %wt = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %val = alloca [8 x i8], align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %val, ptr align 8 %4, i64 8, i1 false)
  store i64 %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %wt, ptr align 8 %3, i64 8, i1 false)
  %_8 = sext i32 %W to i64
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17he1483c634f5fba15E(ptr sret([24 x i8]) align 8 %_6, i32 0, i64 %_9.0)
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hfe1fab78f6cf01bdE(ptr sret([24 x i8]) align 8 %mat, ptr align 8 %_6, i64 2)
  store i32 0, ptr %i, align 4
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7bb014f4436b55e1b2338faabe8704a1) #23
  unreachable

bb4:                                              ; preds = %bb53, %bb1
  %_12 = load i32, ptr %i, align 4
  %_11 = icmp slt i32 %_12, %n
  br i1 %_11, label %bb5, label %bb54

bb54:                                             ; preds = %bb4
  br label %bb55

bb5:                                              ; preds = %bb4
  store i32 0, ptr %j, align 4
  %_16 = load i32, ptr %i, align 4
  br label %bb6

bb55:                                             ; preds = %bb54
  %_126 = icmp eq i32 %n, -2147483648
  %_127 = and i1 false, %_126
  br i1 %_127, label %panic1, label %bb56

bb56:                                             ; preds = %bb55
  %_123 = srem i32 %n, 2
  %_122 = icmp ne i32 %_123, 0
  br i1 %_122, label %bb57, label %bb60

panic1:                                           ; preds = %bb55
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_d099b3ab128c28a1ca796e267eff7fa4) #24
          to label %unreachable unwind label %cleanup

bb65:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hdd3fdca51066751bE"(ptr align 8 %mat) #22
          to label %bb66 unwind label %terminate

cleanup:                                          ; preds = %panic15, %bb21, %bb20, %bb19, %bb18, %bb17, %panic14, %bb15, %panic13, %panic12, %bb12, %panic11, %bb26, %bb25, %bb24, %bb23, %panic10, %panic9, %panic8, %bb43, %bb42, %bb41, %bb40, %bb39, %panic7, %bb37, %panic6, %panic5, %bb34, %panic4, %bb48, %bb47, %bb46, %bb45, %panic3, %panic2, %bb58, %bb57, %bb61, %bb60, %panic1
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb65

unreachable:                                      ; preds = %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb60:                                             ; preds = %bb56
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_133 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E"(ptr align 8 %mat, i64 1, ptr align 8 @alloc_f177b6b53e704995df484d031eda4775)
          to label %bb61 unwind label %cleanup

bb57:                                             ; preds = %bb56
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_129 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E"(ptr align 8 %mat, i64 0, ptr align 8 @alloc_28a87021517efad776569ef0e5a86b26)
          to label %bb58 unwind label %cleanup

bb61:                                             ; preds = %bb60
  %_135 = sext i32 %W to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_132 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E"(ptr align 8 %_133, i64 %_135, ptr align 8 @alloc_458f95ea0555bf55e2c5794b579753a5)
          to label %bb62 unwind label %cleanup

bb62:                                             ; preds = %bb61
  %9 = load i32, ptr %_132, align 4
  store i32 %9, ptr %_0, align 4
  br label %bb63

bb63:                                             ; preds = %bb59, %bb62
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hdd3fdca51066751bE"(ptr align 8 %mat)
  %10 = load i32, ptr %_0, align 4
  ret i32 %10

bb58:                                             ; preds = %bb57
  %_131 = sext i32 %W to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_128 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E"(ptr align 8 %_129, i64 %_131, ptr align 8 @alloc_dd492c0c583310451f91031f9cc4de43)
          to label %bb59 unwind label %cleanup

bb59:                                             ; preds = %bb58
  %11 = load i32, ptr %_128, align 4
  store i32 %11, ptr %_0, align 4
  br label %bb63

bb6:                                              ; preds = %bb5
  %_19 = icmp eq i32 %_16, -2147483648
  %_20 = and i1 false, %_19
  br i1 %_20, label %panic2, label %bb7

bb7:                                              ; preds = %bb6
  %_15 = srem i32 %_16, 2
  %_14 = icmp ne i32 %_15, 0
  br i1 %_14, label %bb8, label %bb30

panic2:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_0044f36ca354a5b3e3f7f45d7000b675) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb51, %bb7
  %_72 = load i32, ptr %j, align 4
  %_71 = icmp sle i32 %_72, %W
  br i1 %_71, label %bb31, label %bb52

bb8:                                              ; preds = %bb29, %bb7
  %_22 = load i32, ptr %j, align 4
  %_21 = icmp sle i32 %_22, %W
  br i1 %_21, label %bb9, label %bb52

bb52:                                             ; preds = %bb8, %bb30
  %12 = load i32, ptr %i, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 1)
  %_121.0 = extractvalue { i32, i1 } %13, 0
  %_121.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_121.1, label %panic9, label %bb53

bb31:                                             ; preds = %bb30
  %_76 = load i32, ptr %i, align 4
  %_75 = sext i32 %_76 to i64
  %_77 = icmp ult i64 %_75, 2
  br i1 %_77, label %bb32, label %panic3

bb32:                                             ; preds = %bb31
  %14 = getelementptr inbounds nuw i32, ptr %wt, i64 %_75
  %_74 = load i32, ptr %14, align 4
  %_78 = load i32, ptr %j, align 4
  %_73 = icmp sle i32 %_74, %_78
  br i1 %_73, label %bb33, label %bb45

panic3:                                           ; preds = %bb31
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_75, i64 2, ptr align 8 @alloc_e2f9f88076c70f0570791c8dbabfab13) #24
          to label %unreachable unwind label %cleanup

bb45:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_111 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E"(ptr align 8 %mat, i64 1, ptr align 8 @alloc_d25293db3ce0e58027c6f92efcde7181)
          to label %bb46 unwind label %cleanup

bb33:                                             ; preds = %bb32
  %_83 = load i32, ptr %i, align 4
  %_82 = sext i32 %_83 to i64
  %_84 = icmp ult i64 %_82, 2
  br i1 %_84, label %bb34, label %panic4

bb46:                                             ; preds = %bb45
  %_114 = load i32, ptr %j, align 4
  %_113 = sext i32 %_114 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_110 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E"(ptr align 8 %_111, i64 %_113, ptr align 8 @alloc_b2dbdce65451bb4a4951648f5f351890)
          to label %bb47 unwind label %cleanup

bb47:                                             ; preds = %bb46
  %_109 = load i32, ptr %_110, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_116 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE"(ptr align 8 %mat, i64 0, ptr align 8 @alloc_9d4034b6bb887eb1b437de3eac067208)
          to label %bb48 unwind label %cleanup

bb48:                                             ; preds = %bb47
  %_119 = load i32, ptr %j, align 4
  %_118 = sext i32 %_119 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_115 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E"(ptr align 8 %_116, i64 %_118, ptr align 8 @alloc_158079463495463bb6d31b4eb5f7c9c6)
          to label %bb49 unwind label %cleanup

bb49:                                             ; preds = %bb48
  store i32 %_109, ptr %_115, align 4
  br label %bb50

bb50:                                             ; preds = %bb44, %bb49
  %15 = load i32, ptr %j, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_120.0 = extractvalue { i32, i1 } %16, 0
  %_120.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_120.1, label %panic8, label %bb51

bb34:                                             ; preds = %bb33
  %17 = getelementptr inbounds nuw i32, ptr %val, i64 %_82
  %_81 = load i32, ptr %17, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_87 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E"(ptr align 8 %mat, i64 1, ptr align 8 @alloc_a7167b03e3077a570445b44ef6600d41)
          to label %bb35 unwind label %cleanup

panic4:                                           ; preds = %bb33
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_82, i64 2, ptr align 8 @alloc_e5484ef1b7751c9b72d46fbfc8166725) #24
          to label %unreachable unwind label %cleanup

bb35:                                             ; preds = %bb34
  %_91 = load i32, ptr %j, align 4
  %_94 = load i32, ptr %i, align 4
  %_93 = sext i32 %_94 to i64
  %_95 = icmp ult i64 %_93, 2
  br i1 %_95, label %bb36, label %panic5

bb36:                                             ; preds = %bb35
  %18 = getelementptr inbounds nuw i32, ptr %wt, i64 %_93
  %_92 = load i32, ptr %18, align 4
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_91, i32 %_92)
  %_96.0 = extractvalue { i32, i1 } %19, 0
  %_96.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_96.1, label %panic6, label %bb37

panic5:                                           ; preds = %bb35
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_93, i64 2, ptr align 8 @alloc_754510fa6cd6c4170791283c1b355b99) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %bb36
  %_89 = sext i32 %_96.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_86 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E"(ptr align 8 %_87, i64 %_89, ptr align 8 @alloc_b87f3a0c38774ee60afd1f85278711ef)
          to label %bb38 unwind label %cleanup

panic6:                                           ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_244b4fbea45b61325de3854a8d8bc5ac) #24
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb37
  %_85 = load i32, ptr %_86, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_81, i32 %_85)
  %_97.0 = extractvalue { i32, i1 } %20, 0
  %_97.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_97.1, label %panic7, label %bb39

bb39:                                             ; preds = %bb38
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_100 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E"(ptr align 8 %mat, i64 1, ptr align 8 @alloc_f3b77ad6368ff4e9cd1251260b85d3ae)
          to label %bb40 unwind label %cleanup

panic7:                                           ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e5484ef1b7751c9b72d46fbfc8166725) #24
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %bb39
  %_103 = load i32, ptr %j, align 4
  %_102 = sext i32 %_103 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_99 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E"(ptr align 8 %_100, i64 %_102, ptr align 8 @alloc_975c037987d68eb844b5be73f2c96687)
          to label %bb41 unwind label %cleanup

bb41:                                             ; preds = %bb40
  %_98 = load i32, ptr %_99, align 4
  %_79 = invoke i32 @max(i32 %_97.0, i32 %_98)
          to label %bb42 unwind label %cleanup

bb42:                                             ; preds = %bb41
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_105 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE"(ptr align 8 %mat, i64 0, ptr align 8 @alloc_373373dee1673bdc39946bb663b7a6e3)
          to label %bb43 unwind label %cleanup

bb43:                                             ; preds = %bb42
  %_108 = load i32, ptr %j, align 4
  %_107 = sext i32 %_108 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_104 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E"(ptr align 8 %_105, i64 %_107, ptr align 8 @alloc_6fcb38e647b68cb57a7e4dd3d9410ab1)
          to label %bb44 unwind label %cleanup

bb44:                                             ; preds = %bb43
  store i32 %_79, ptr %_104, align 4
  br label %bb50

bb51:                                             ; preds = %bb50
  store i32 %_120.0, ptr %j, align 4
  br label %bb30

panic8:                                           ; preds = %bb50
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cfb4e48d1483779051bf2c86bdeca048) #24
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb8
  %_26 = load i32, ptr %i, align 4
  %_25 = sext i32 %_26 to i64
  %_27 = icmp ult i64 %_25, 2
  br i1 %_27, label %bb10, label %panic10

bb53:                                             ; preds = %bb52
  store i32 %_121.0, ptr %i, align 4
  br label %bb4

panic9:                                           ; preds = %bb52
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8f73d0fba3a745dc618554af477358ef) #24
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %bb9
  %21 = getelementptr inbounds nuw i32, ptr %wt, i64 %_25
  %_24 = load i32, ptr %21, align 4
  %_28 = load i32, ptr %j, align 4
  %_23 = icmp sle i32 %_24, %_28
  br i1 %_23, label %bb11, label %bb23

panic10:                                          ; preds = %bb9
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_ebfdcc29aa8a00c125c0731913522da1) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E"(ptr align 8 %mat, i64 0, ptr align 8 @alloc_36a5e5256b98f266c71bea28a01fda99)
          to label %bb24 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_33 = load i32, ptr %i, align 4
  %_32 = sext i32 %_33 to i64
  %_34 = icmp ult i64 %_32, 2
  br i1 %_34, label %bb12, label %panic11

bb24:                                             ; preds = %bb23
  %_64 = load i32, ptr %j, align 4
  %_63 = sext i32 %_64 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_60 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E"(ptr align 8 %_61, i64 %_63, ptr align 8 @alloc_ee120ad34af6d518c81584323b47aafc)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_59 = load i32, ptr %_60, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_66 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE"(ptr align 8 %mat, i64 1, ptr align 8 @alloc_397e92864fb5bd372e31913b82214063)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_69 = load i32, ptr %j, align 4
  %_68 = sext i32 %_69 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_65 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E"(ptr align 8 %_66, i64 %_68, ptr align 8 @alloc_9ae2725e412696ff2315cd89bc33ce25)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  store i32 %_59, ptr %_65, align 4
  br label %bb28

bb28:                                             ; preds = %bb22, %bb27
  %22 = load i32, ptr %j, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 1)
  %_70.0 = extractvalue { i32, i1 } %23, 0
  %_70.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_70.1, label %panic15, label %bb29

bb12:                                             ; preds = %bb11
  %24 = getelementptr inbounds nuw i32, ptr %val, i64 %_32
  %_31 = load i32, ptr %24, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E"(ptr align 8 %mat, i64 0, ptr align 8 @alloc_81b97605d24c57f978ff583e6a0798d4)
          to label %bb13 unwind label %cleanup

panic11:                                          ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 2, ptr align 8 @alloc_81831ada9499f366e33eb1178b76a762) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_41 = load i32, ptr %j, align 4
  %_44 = load i32, ptr %i, align 4
  %_43 = sext i32 %_44 to i64
  %_45 = icmp ult i64 %_43, 2
  br i1 %_45, label %bb14, label %panic12

bb14:                                             ; preds = %bb13
  %25 = getelementptr inbounds nuw i32, ptr %wt, i64 %_43
  %_42 = load i32, ptr %25, align 4
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_41, i32 %_42)
  %_46.0 = extractvalue { i32, i1 } %26, 0
  %_46.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_46.1, label %panic13, label %bb15

panic12:                                          ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_43, i64 2, ptr align 8 @alloc_f5222625d32e5db87f3c7f4df7984ac5) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_39 = sext i32 %_46.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E"(ptr align 8 %_37, i64 %_39, ptr align 8 @alloc_4b1878f45b112da220d0e8b46a5b7090)
          to label %bb16 unwind label %cleanup

panic13:                                          ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_be6ca6e04a851cee9124bf69e2180b4a) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_35 = load i32, ptr %_36, align 4
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_31, i32 %_35)
  %_47.0 = extractvalue { i32, i1 } %27, 0
  %_47.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_47.1, label %panic14, label %bb17

bb17:                                             ; preds = %bb16
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbf419dad5dd64d36E"(ptr align 8 %mat, i64 0, ptr align 8 @alloc_a80ef28b874b4967e4f26496f20f0545)
          to label %bb18 unwind label %cleanup

panic14:                                          ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_81831ada9499f366e33eb1178b76a762) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_53 = load i32, ptr %j, align 4
  %_52 = sext i32 %_53 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb21d47f813c24835E"(ptr align 8 %_50, i64 %_52, ptr align 8 @alloc_1bc4746562881b31cf3a380cb6335e61)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_48 = load i32, ptr %_49, align 4
  %_29 = invoke i32 @max(i32 %_47.0, i32 %_48)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_55 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb06d937635153c6eE"(ptr align 8 %mat, i64 1, ptr align 8 @alloc_b4639b260060f210db7086a1f467d2bf)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_58 = load i32, ptr %j, align 4
  %_57 = sext i32 %_58 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_54 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5250b2d3ebb6f774E"(ptr align 8 %_55, i64 %_57, ptr align 8 @alloc_2fa1ca1b1f63a0fc50805f51f3414fc2)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_29, ptr %_54, align 4
  br label %bb28

bb29:                                             ; preds = %bb28
  store i32 %_70.0, ptr %j, align 4
  br label %bb8

panic15:                                          ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9cc98685e2ee73f3c16797bf7350301f) #24
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb65
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb66:                                             ; preds = %bb65
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds i8, ptr %2, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}
