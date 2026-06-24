define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_79 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  %_32 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %flag = alloca [4 x i8], align 4
  %inc = alloca [24 x i8], align 8
  %dec = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %_7 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE(ptr sret([24 x i8]) align 8 %dec, i32 0, i64 %_7)
  %_9 = sext i32 %n to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE(ptr sret([24 x i8]) align 8 %inc, i32 0, i64 %_9)
          to label %bb5 unwind label %cleanup

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %_0, align 4
  br label %bb50

bb52:                                             ; preds = %bb51, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h116f96fc6cd76c33E"(ptr align 8 %dec) #22
          to label %bb53 unwind label %terminate

cleanup:                                          ; preds = %bb44, %bb3
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %1, align 8
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb52

bb5:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_10 = load i32, ptr %9, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_13 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE"(ptr align 8 %dec, i64 0, ptr align 8 @alloc_f927c41fe8f8b3dab4b1762542c56bc2)
          to label %bb7 unwind label %cleanup3

bb51:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h116f96fc6cd76c33E"(ptr align 8 %inc) #22
          to label %bb52 unwind label %terminate

cleanup3:                                         ; preds = %bb27, %bb26, %panic11, %panic10, %bb23, %bb22, %bb38, %bb37, %panic9, %panic8, %bb34, %bb33, %panic7, %panic6, %panic5, %panic, %bb17, %bb14, %bb47, %bb46, %bb45, %bb43, %bb41, %bb15, %bb11, %bb9, %bb8, %bb6
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  store ptr %11, ptr %1, align 8
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %12, ptr %13, align 8
  br label %bb51

bb7:                                              ; preds = %bb6
  store i32 %_10, ptr %_13, align 4
  br label %bb8

bb8:                                              ; preds = %bb7
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_15 = load i32, ptr %14, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_18 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE"(ptr align 8 %inc, i64 0, ptr align 8 @alloc_0dee6530704d9b1eb982d0db393875ef)
          to label %bb9 unwind label %cleanup3

bb9:                                              ; preds = %bb8
  store i32 %_15, ptr %_18, align 4
  store i32 0, ptr %flag, align 4
  %_23 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %15 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h29bb3e268c841cfbE"(i64 1, i64 %_23)
          to label %bb10 unwind label %cleanup3

bb10:                                             ; preds = %bb9
  %_21.0 = extractvalue { i64, i64 } %15, 0
  %_21.1 = extractvalue { i64, i64 } %15, 1
  store i64 %_21.0, ptr %iter, align 8
  %16 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_21.1, ptr %16, align 8
  br label %bb11

bb11:                                             ; preds = %bb18, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %17 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc093cc556397443fE"(ptr align 8 %iter)
          to label %bb12 unwind label %cleanup3

bb12:                                             ; preds = %bb11
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  store i64 %18, ptr %_25, align 8
  %20 = getelementptr inbounds i8, ptr %_25, i64 8
  store i64 %19, ptr %20, align 8
  %_27 = load i64, ptr %_25, align 8
  %21 = getelementptr inbounds i8, ptr %_25, i64 8
  %22 = load i64, ptr %21, align 8
  %23 = trunc nuw i64 %_27 to i1
  br i1 %23, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %24 = getelementptr inbounds i8, ptr %_25, i64 8
  %i4 = load i64, ptr %24, align 8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %25 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h29bb3e268c841cfbE"(i64 0, i64 %i4)
          to label %bb16 unwind label %cleanup3

bb15:                                             ; preds = %bb12
  store i32 -2147483648, ptr %result, align 4
  %_77 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %26 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h29bb3e268c841cfbE"(i64 0, i64 %_77)
          to label %bb40 unwind label %cleanup3

bb40:                                             ; preds = %bb15
  %_75.0 = extractvalue { i64, i64 } %26, 0
  %_75.1 = extractvalue { i64, i64 } %26, 1
  store i64 %_75.0, ptr %iter2, align 8
  %27 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_75.1, ptr %27, align 8
  br label %bb41

bb41:                                             ; preds = %bb48, %bb40
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %28 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc093cc556397443fE"(ptr align 8 %iter2)
          to label %bb42 unwind label %cleanup3

bb42:                                             ; preds = %bb41
  %29 = extractvalue { i64, i64 } %28, 0
  %30 = extractvalue { i64, i64 } %28, 1
  store i64 %29, ptr %_79, align 8
  %31 = getelementptr inbounds i8, ptr %_79, i64 8
  store i64 %30, ptr %31, align 8
  %_81 = load i64, ptr %_79, align 8
  %32 = getelementptr inbounds i8, ptr %_79, i64 8
  %33 = load i64, ptr %32, align 8
  %34 = trunc nuw i64 %_81 to i1
  br i1 %34, label %bb43, label %bb44

bb43:                                             ; preds = %bb42
  %35 = getelementptr inbounds i8, ptr %_79, i64 8
  %i = load i64, ptr %35, align 8
  %_84 = load i32, ptr %result, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_86 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E"(ptr align 8 %inc, i64 %i, ptr align 8 @alloc_9f45ea392b80732264ae8d129a5a2bb5)
          to label %bb45 unwind label %cleanup3

bb44:                                             ; preds = %bb42
  %36 = load i32, ptr %result, align 4
  store i32 %36, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h116f96fc6cd76c33E"(ptr align 8 %inc)
          to label %bb49 unwind label %cleanup

bb49:                                             ; preds = %bb44
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h116f96fc6cd76c33E"(ptr align 8 %dec)
  br label %bb50

bb50:                                             ; preds = %bb1, %bb49
  %37 = load i32, ptr %_0, align 4
  ret i32 %37

bb45:                                             ; preds = %bb43
  %_85 = load i32, ptr %_86, align 4
; invoke core::cmp::Ord::max
  %_83 = invoke i32 @_ZN4core3cmp3Ord3max17h6c29e16b52c0334eE(i32 %_84, i32 %_85)
          to label %bb46 unwind label %cleanup3

bb46:                                             ; preds = %bb45
  store i32 %_83, ptr %result, align 4
  %_89 = load i32, ptr %result, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_91 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E"(ptr align 8 %dec, i64 %i, ptr align 8 @alloc_54ad0db3f1e2695f9368c3e3f77196fb)
          to label %bb47 unwind label %cleanup3

bb47:                                             ; preds = %bb46
  %_90 = load i32, ptr %_91, align 4
; invoke core::cmp::Ord::max
  %_88 = invoke i32 @_ZN4core3cmp3Ord3max17h6c29e16b52c0334eE(i32 %_89, i32 %_90)
          to label %bb48 unwind label %cleanup3

bb48:                                             ; preds = %bb47
  store i32 %_88, ptr %result, align 4
  br label %bb41

bb16:                                             ; preds = %bb14
  %_29.0 = extractvalue { i64, i64 } %25, 0
  %_29.1 = extractvalue { i64, i64 } %25, 1
  store i64 %_29.0, ptr %iter1, align 8
  %38 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_29.1, ptr %38, align 8
  br label %bb17

bb17:                                             ; preds = %bb28, %bb39, %bb32, %bb31, %bb16
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %39 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc093cc556397443fE"(ptr align 8 %iter1)
          to label %bb18 unwind label %cleanup3

bb18:                                             ; preds = %bb17
  %40 = extractvalue { i64, i64 } %39, 0
  %41 = extractvalue { i64, i64 } %39, 1
  store i64 %40, ptr %_32, align 8
  %42 = getelementptr inbounds i8, ptr %_32, i64 8
  store i64 %41, ptr %42, align 8
  %_34 = load i64, ptr %_32, align 8
  %43 = getelementptr inbounds i8, ptr %_32, i64 8
  %44 = load i64, ptr %43, align 8
  %45 = trunc nuw i64 %_34 to i1
  br i1 %45, label %bb19, label %bb11

bb19:                                             ; preds = %bb18
  %46 = getelementptr inbounds i8, ptr %_32, i64 8
  %j = load i64, ptr %46, align 8
  %_38 = icmp ult i64 %j, 2
  br i1 %_38, label %bb20, label %panic

bb20:                                             ; preds = %bb19
  %47 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_37 = load i32, ptr %47, align 4
  %_40 = icmp ult i64 %i4, 2
  br i1 %_40, label %bb21, label %panic5

panic:                                            ; preds = %bb19
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_0dc49f7297522c7f8c16c911d1c94871) #24
          to label %unreachable unwind label %cleanup3

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic
  unreachable

bb21:                                             ; preds = %bb20
  %48 = getelementptr inbounds nuw i32, ptr %arr, i64 %i4
  %_39 = load i32, ptr %48, align 4
  %_36 = icmp sgt i32 %_37, %_39
  br i1 %_36, label %bb22, label %bb29

panic5:                                           ; preds = %bb20
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i4, i64 2, ptr align 8 @alloc_c609a9a9181cb83dbe241140f04b8756) #24
          to label %unreachable unwind label %cleanup3

bb29:                                             ; preds = %bb21
  %_56 = icmp ult i64 %j, 2
  br i1 %_56, label %bb30, label %panic6

bb22:                                             ; preds = %bb21
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E"(ptr align 8 %dec, i64 %i4, ptr align 8 @alloc_6f9ffa4066e8c29eb59f0889f7b4e414)
          to label %bb23 unwind label %cleanup3

bb30:                                             ; preds = %bb29
  %49 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_55 = load i32, ptr %49, align 4
  %_58 = icmp ult i64 %i4, 2
  br i1 %_58, label %bb31, label %panic7

panic6:                                           ; preds = %bb29
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_dc4766d8f957ecf07733c0f2a46fe2a4) #24
          to label %unreachable unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %50 = getelementptr inbounds nuw i32, ptr %arr, i64 %i4
  %_57 = load i32, ptr %50, align 4
  %_54 = icmp slt i32 %_55, %_57
  br i1 %_54, label %bb32, label %bb17

panic7:                                           ; preds = %bb30
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i4, i64 2, ptr align 8 @alloc_043c7c5c422e1aee0bd1b6da61ea5bab) #24
          to label %unreachable unwind label %cleanup3

bb32:                                             ; preds = %bb31
  %_60 = load i32, ptr %flag, align 4
  %_59 = icmp eq i32 %_60, 1
  br i1 %_59, label %bb33, label %bb17

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E"(ptr align 8 %inc, i64 %i4, ptr align 8 @alloc_706a2890b244729bb628492b9ced14cf)
          to label %bb34 unwind label %cleanup3

bb34:                                             ; preds = %bb33
  %_62 = load i32, ptr %_63, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E"(ptr align 8 %dec, i64 %j, ptr align 8 @alloc_a6b1d210ec9b392d73e7d1291144efd8)
          to label %bb35 unwind label %cleanup3

bb35:                                             ; preds = %bb34
  %_66 = load i32, ptr %_67, align 4
  %_70 = icmp ult i64 %i4, 2
  br i1 %_70, label %bb36, label %panic8

bb36:                                             ; preds = %bb35
  %51 = getelementptr inbounds nuw i32, ptr %arr, i64 %i4
  %_69 = load i32, ptr %51, align 4
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_66, i32 %_69)
  %_71.0 = extractvalue { i32, i1 } %52, 0
  %_71.1 = extractvalue { i32, i1 } %52, 1
  br i1 %_71.1, label %panic9, label %bb37

panic8:                                           ; preds = %bb35
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i4, i64 2, ptr align 8 @alloc_44d43209ed5712b91ce7a3449c4d9d21) #24
          to label %unreachable unwind label %cleanup3

bb37:                                             ; preds = %bb36
; invoke core::cmp::Ord::max
  %_61 = invoke i32 @_ZN4core3cmp3Ord3max17h6c29e16b52c0334eE(i32 %_62, i32 %_71.0)
          to label %bb38 unwind label %cleanup3

panic9:                                           ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_483ea2d6a20d09e35d32fc3946e9d218) #24
          to label %unreachable unwind label %cleanup3

bb38:                                             ; preds = %bb37
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_72 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE"(ptr align 8 %inc, i64 %i4, ptr align 8 @alloc_5d09acade2ea490e1465736635edddb4)
          to label %bb39 unwind label %cleanup3

bb39:                                             ; preds = %bb38
  store i32 %_61, ptr %_72, align 4
  br label %bb17

bb23:                                             ; preds = %bb22
  %_42 = load i32, ptr %_43, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E"(ptr align 8 %inc, i64 %j, ptr align 8 @alloc_ea293eebf3043b17fffe9d6d48a077e7)
          to label %bb24 unwind label %cleanup3

bb24:                                             ; preds = %bb23
  %_46 = load i32, ptr %_47, align 4
  %_50 = icmp ult i64 %i4, 2
  br i1 %_50, label %bb25, label %panic10

bb25:                                             ; preds = %bb24
  %53 = getelementptr inbounds nuw i32, ptr %arr, i64 %i4
  %_49 = load i32, ptr %53, align 4
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_46, i32 %_49)
  %_51.0 = extractvalue { i32, i1 } %54, 0
  %_51.1 = extractvalue { i32, i1 } %54, 1
  br i1 %_51.1, label %panic11, label %bb26

panic10:                                          ; preds = %bb24
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i4, i64 2, ptr align 8 @alloc_ce1f0248d722948ea0789a760a31a163) #24
          to label %unreachable unwind label %cleanup3

bb26:                                             ; preds = %bb25
; invoke core::cmp::Ord::max
  %_41 = invoke i32 @_ZN4core3cmp3Ord3max17h6c29e16b52c0334eE(i32 %_42, i32 %_51.0)
          to label %bb27 unwind label %cleanup3

panic11:                                          ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7a5d91753d4f404639129f2d885eb023) #24
          to label %unreachable unwind label %cleanup3

bb27:                                             ; preds = %bb26
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_52 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE"(ptr align 8 %dec, i64 %i4, ptr align 8 @alloc_586fa28d78ddd4eaa717ec0af49cf7d1)
          to label %bb28 unwind label %cleanup3

bb28:                                             ; preds = %bb27
  store i32 %_41, ptr %_52, align 4
  store i32 1, ptr %flag, align 4
  br label %bb17

bb13:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb52, %bb51
  %55 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb53:                                             ; preds = %bb52
  %56 = load ptr, ptr %1, align 8
  %57 = getelementptr inbounds i8, ptr %1, i64 8
  %58 = load i32, ptr %57, align 8
  %59 = insertvalue { ptr, i32 } poison, ptr %56, 0
  %60 = insertvalue { ptr, i32 } %59, i32 %58, 1
  resume { ptr, i32 } %60
}
