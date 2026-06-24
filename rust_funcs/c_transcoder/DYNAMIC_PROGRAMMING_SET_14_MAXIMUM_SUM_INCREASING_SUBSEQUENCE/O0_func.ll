define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_68 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_29 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_22 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %msis = alloca [24 x i8], align 8
  %max = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  store i32 0, ptr %max, align 4
  %_5 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hc9a0266d8fcc92d0E(ptr sret([24 x i8]) align 8 %msis, i32 0, i64 %_5)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h45a933ad2c2824a6E"(i32 0, i32 %n)
          to label %bb2 unwind label %cleanup

bb40:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8712ff02f0e57fdcE"(ptr align 8 %msis) #22
          to label %bb41 unwind label %terminate

cleanup:                                          ; preds = %bb8, %panic11, %bb29, %panic9, %panic8, %bb26, %panic7, %panic6, %bb22, %bb21, %panic5, %panic, %bb16, %bb13, %bb37, %bb34, %bb32, %bb14, %bb11, %bb7, %bb3, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb40

bb2:                                              ; preds = %start
  %_6.0 = extractvalue { i32, i32 } %3, 0
  %_6.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_6.0, ptr %iter, align 4
  %8 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %8, align 4
  br label %bb3

bb3:                                              ; preds = %bb9, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3eb79db5bcb20dedE"(ptr align 4 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_9, align 4
  %12 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_9, align 4
  %14 = getelementptr inbounds i8, ptr %_9, i64 4
  %15 = load i32, ptr %14, align 4
  %_11 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_11 to i1
  br i1 %16, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %17 = getelementptr inbounds i8, ptr %_9, i64 4
  %i10 = load i32, ptr %17, align 4
  %_14 = sext i32 %i10 to i64
  %_15 = icmp ult i64 %_14, 2
  br i1 %_15, label %bb8, label %panic11

bb7:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h45a933ad2c2824a6E"(i32 1, i32 %n)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb7
  %_19.0 = extractvalue { i32, i32 } %18, 0
  %_19.1 = extractvalue { i32, i32 } %18, 1
  store i32 %_19.0, ptr %iter1, align 4
  %19 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_19.1, ptr %19, align 4
  br label %bb11

bb11:                                             ; preds = %bb17, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3eb79db5bcb20dedE"(ptr align 4 %iter1)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_22, align 4
  %23 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_22, align 4
  %25 = getelementptr inbounds i8, ptr %_22, i64 4
  %26 = load i32, ptr %25, align 4
  %_24 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_24 to i1
  br i1 %27, label %bb13, label %bb14

bb13:                                             ; preds = %bb12
  %28 = getelementptr inbounds i8, ptr %_22, i64 4
  %i4 = load i32, ptr %28, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %29 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h45a933ad2c2824a6E"(i32 0, i32 %i4)
          to label %bb15 unwind label %cleanup

bb14:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %30 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h45a933ad2c2824a6E"(i32 0, i32 %n)
          to label %bb31 unwind label %cleanup

bb31:                                             ; preds = %bb14
  %_65.0 = extractvalue { i32, i32 } %30, 0
  %_65.1 = extractvalue { i32, i32 } %30, 1
  store i32 %_65.0, ptr %iter3, align 4
  %31 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_65.1, ptr %31, align 4
  br label %bb32

bb32:                                             ; preds = %bb38, %bb36, %bb31
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %32 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3eb79db5bcb20dedE"(ptr align 4 %iter3)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb32
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  store i32 %33, ptr %_68, align 4
  %35 = getelementptr inbounds i8, ptr %_68, i64 4
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %_68, align 4
  %37 = getelementptr inbounds i8, ptr %_68, i64 4
  %38 = load i32, ptr %37, align 4
  %_70 = zext i32 %36 to i64
  %39 = trunc nuw i64 %_70 to i1
  br i1 %39, label %bb34, label %bb35

bb34:                                             ; preds = %bb33
  %40 = getelementptr inbounds i8, ptr %_68, i64 4
  %i = load i32, ptr %40, align 4
  %_73 = load i32, ptr %max, align 4
  %_77 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E"(ptr align 8 %msis, i64 %_77, ptr align 8 @alloc_9b93bd6e1b2c91d9c0f49abff45d3d58)
          to label %bb36 unwind label %cleanup

bb35:                                             ; preds = %bb33
  %_0 = load i32, ptr %max, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8712ff02f0e57fdcE"(ptr align 8 %msis)
  ret i32 %_0

bb36:                                             ; preds = %bb34
  %_74 = load i32, ptr %_75, align 4
  %_72 = icmp slt i32 %_73, %_74
  br i1 %_72, label %bb37, label %bb32

bb37:                                             ; preds = %bb36
  %_81 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_79 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E"(ptr align 8 %msis, i64 %_81, ptr align 8 @alloc_0792356104cd4006285a08934ba9199d)
          to label %bb38 unwind label %cleanup

bb38:                                             ; preds = %bb37
  %_78 = load i32, ptr %_79, align 4
  store i32 %_78, ptr %max, align 4
  br label %bb32

bb15:                                             ; preds = %bb13
  %_26.0 = extractvalue { i32, i32 } %29, 0
  %_26.1 = extractvalue { i32, i32 } %29, 1
  store i32 %_26.0, ptr %iter2, align 4
  %41 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_26.1, ptr %41, align 4
  br label %bb16

bb16:                                             ; preds = %bb30, %bb25, %bb20, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %42 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3eb79db5bcb20dedE"(ptr align 4 %iter2)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = extractvalue { i32, i32 } %42, 1
  store i32 %43, ptr %_29, align 4
  %45 = getelementptr inbounds i8, ptr %_29, i64 4
  store i32 %44, ptr %45, align 4
  %46 = load i32, ptr %_29, align 4
  %47 = getelementptr inbounds i8, ptr %_29, i64 4
  %48 = load i32, ptr %47, align 4
  %_31 = zext i32 %46 to i64
  %49 = trunc nuw i64 %_31 to i1
  br i1 %49, label %bb18, label %bb11

bb18:                                             ; preds = %bb17
  %50 = getelementptr inbounds i8, ptr %_29, i64 4
  %j = load i32, ptr %50, align 4
  %_35 = sext i32 %i4 to i64
  %_36 = icmp ult i64 %_35, 2
  br i1 %_36, label %bb19, label %panic

bb19:                                             ; preds = %bb18
  %51 = getelementptr inbounds nuw i32, ptr %arr, i64 %_35
  %_34 = load i32, ptr %51, align 4
  %_38 = sext i32 %j to i64
  %_39 = icmp ult i64 %_38, 2
  br i1 %_39, label %bb20, label %panic5

panic:                                            ; preds = %bb18
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35, i64 2, ptr align 8 @alloc_06ce7c7b69e4bdf0f2d6a4749698371a) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic11, %panic9, %panic8, %panic7, %panic6, %panic5, %panic
  unreachable

bb20:                                             ; preds = %bb19
  %52 = getelementptr inbounds nuw i32, ptr %arr, i64 %_38
  %_37 = load i32, ptr %52, align 4
  %_33 = icmp sgt i32 %_34, %_37
  br i1 %_33, label %bb21, label %bb16

panic5:                                           ; preds = %bb19
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_38, i64 2, ptr align 8 @alloc_f2737838bb034e334c69275dd3988a51) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_44 = sext i32 %i4 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_42 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E"(ptr align 8 %msis, i64 %_44, ptr align 8 @alloc_52e550abfd9f34819c43b68c806c7098)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_41 = load i32, ptr %_42, align 4
  %_49 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E"(ptr align 8 %msis, i64 %_49, ptr align 8 @alloc_c80af1756cf8b5cbb2b8c2532fdadd9f)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_46 = load i32, ptr %_47, align 4
  %_51 = sext i32 %i4 to i64
  %_52 = icmp ult i64 %_51, 2
  br i1 %_52, label %bb24, label %panic6

bb24:                                             ; preds = %bb23
  %53 = getelementptr inbounds nuw i32, ptr %arr, i64 %_51
  %_50 = load i32, ptr %53, align 4
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_46, i32 %_50)
  %_53.0 = extractvalue { i32, i1 } %54, 0
  %_53.1 = extractvalue { i32, i1 } %54, 1
  br i1 %_53.1, label %panic7, label %bb25

panic6:                                           ; preds = %bb23
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_51, i64 2, ptr align 8 @alloc_34f1ff4c7cdfc7b7b649ae22e03b6dd9) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_40 = icmp slt i32 %_41, %_53.0
  br i1 %_40, label %bb26, label %bb16

panic7:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_400bad5bbda0d01846b0f1fbc5ec632f) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_57 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2924f4c9e43558a1E"(ptr align 8 %msis, i64 %_57, ptr align 8 @alloc_d6cb9c3bb07506d1e43266c96305a291)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_54 = load i32, ptr %_55, align 4
  %_59 = sext i32 %i4 to i64
  %_60 = icmp ult i64 %_59, 2
  br i1 %_60, label %bb28, label %panic8

bb28:                                             ; preds = %bb27
  %55 = getelementptr inbounds nuw i32, ptr %arr, i64 %_59
  %_58 = load i32, ptr %55, align 4
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_54, i32 %_58)
  %_61.0 = extractvalue { i32, i1 } %56, 0
  %_61.1 = extractvalue { i32, i1 } %56, 1
  br i1 %_61.1, label %panic9, label %bb29

panic8:                                           ; preds = %bb27
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_59, i64 2, ptr align 8 @alloc_186f7b5d949ebbdc97737b1c907e514b) #24
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_64 = sext i32 %i4 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_62 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E"(ptr align 8 %msis, i64 %_64, ptr align 8 @alloc_9c2dae7bbf3890d314126a9f9d4a9fec)
          to label %bb30 unwind label %cleanup

panic9:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_abcefb135a8edf9ad0b0cd4238ca77ee) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  store i32 %_61.0, ptr %_62, align 4
  br label %bb16

bb8:                                              ; preds = %bb6
  %57 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14
  %_13 = load i32, ptr %57, align 4
  %_18 = sext i32 %i10 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_16 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2194ef7d96e00324E"(ptr align 8 %msis, i64 %_18, ptr align 8 @alloc_d0990c81187724fa97c5413f7ef35b98)
          to label %bb9 unwind label %cleanup

panic11:                                          ; preds = %bb6
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 2, ptr align 8 @alloc_c4e96a951a7f27f6117b69a5f22491b7) #24
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb8
  store i32 %_13, ptr %_16, align 4
  br label %bb3

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb40
  %58 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb41:                                             ; preds = %bb40
  %59 = load ptr, ptr %1, align 8
  %60 = getelementptr inbounds i8, ptr %1, i64 8
  %61 = load i32, ptr %60, align 8
  %62 = insertvalue { ptr, i32 } poison, ptr %59, 0
  %63 = insertvalue { ptr, i32 } %62, i32 %61, 1
  resume { ptr, i32 } %63
}
