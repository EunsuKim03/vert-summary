define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %e.i = alloca [0 x i8], align 1
  %self.i = alloca [16 x i8], align 8
  %2 = alloca [16 x i8], align 8
  %_64 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %max_len = alloca [4 x i8], align 4
  %lioes = alloca [24 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %3, i64 8, i1 false)
; call <T as core::convert::TryInto<U>>::try_into
  %4 = call { i64, i64 } @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17h31a5f2d1766abec8E"(i32 %n) #21
  %_5.0 = extractvalue { i64, i64 } %4, 0
  %_5.1 = extractvalue { i64, i64 } %4, 1
  store i64 %_5.0, ptr %self.i, align 8
  %5 = getelementptr inbounds i8, ptr %self.i, i64 8
  store i64 %_5.1, ptr %5, align 8
  %_2.i = load i64, ptr %self.i, align 8
  %6 = getelementptr inbounds i8, ptr %self.i, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_2.i to i1
  br i1 %8, label %bb2.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15b0712aba2ca02cE.exit"

bb2.i:                                            ; preds = %start
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr align 1 %e.i, ptr align 8 @vtable.0, ptr align 8 @alloc_587b0cc76b30d160b83f17a85334bffd) #24
          to label %unreachable.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb2.i
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %1, align 8
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %11, ptr %12, align 8
  %13 = load ptr, ptr %1, align 8
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  %15 = load i32, ptr %14, align 8
  %16 = insertvalue { ptr, i32 } poison, ptr %13, 0
  %17 = insertvalue { ptr, i32 } %16, i32 %15, 1
  resume { ptr, i32 } %17

unreachable.i:                                    ; preds = %bb2.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15b0712aba2ca02cE.exit": ; preds = %start
  %18 = getelementptr inbounds i8, ptr %self.i, i64 8
  %t.i = load i64, ptr %18, align 8
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E(ptr sret([24 x i8]) align 8 %lioes, i32 1, i64 %t.i)
  store i32 0, ptr %max_len, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %19 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9b0687da65505e71E"(i32 1, i32 %n)
          to label %bb4 unwind label %cleanup

bb39:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE"(ptr align 8 %lioes) #22
          to label %bb40 unwind label %terminate

cleanup:                                          ; preds = %bb28, %panic10, %bb26, %panic9, %bb23, %bb22, %panic8, %panic7, %panic6, %panic5, %panic4, %panic, %bb11, %bb8, %bb36, %bb33, %bb31, %bb9, %bb5, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15b0712aba2ca02cE.exit"
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  store ptr %21, ptr %2, align 8
  %23 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %22, ptr %23, align 8
  br label %bb39

bb4:                                              ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15b0712aba2ca02cE.exit"
  %_7.0 = extractvalue { i32, i32 } %19, 0
  %_7.1 = extractvalue { i32, i32 } %19, 1
  store i32 %_7.0, ptr %iter, align 4
  %24 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %24, align 4
  br label %bb5

bb5:                                              ; preds = %bb12, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %25 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc53347040ceb1bcaE"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = extractvalue { i32, i32 } %25, 1
  store i32 %26, ptr %_10, align 4
  %28 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %_10, align 4
  %30 = getelementptr inbounds i8, ptr %_10, i64 4
  %31 = load i32, ptr %30, align 4
  %_12 = zext i32 %29 to i64
  %32 = trunc nuw i64 %_12 to i1
  br i1 %32, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %33 = getelementptr inbounds i8, ptr %_10, i64 4
  %i3 = load i32, ptr %33, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %34 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9b0687da65505e71E"(i32 0, i32 %i3)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %35 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9b0687da65505e71E"(i32 0, i32 %n)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb9
  %_61.0 = extractvalue { i32, i32 } %35, 0
  %_61.1 = extractvalue { i32, i32 } %35, 1
  store i32 %_61.0, ptr %iter2, align 4
  %36 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_61.1, ptr %36, align 4
  br label %bb31

bb31:                                             ; preds = %bb37, %bb35, %bb30
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %37 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc53347040ceb1bcaE"(ptr align 4 %iter2)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb31
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = extractvalue { i32, i32 } %37, 1
  store i32 %38, ptr %_64, align 4
  %40 = getelementptr inbounds i8, ptr %_64, i64 4
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %_64, align 4
  %42 = getelementptr inbounds i8, ptr %_64, i64 4
  %43 = load i32, ptr %42, align 4
  %_66 = zext i32 %41 to i64
  %44 = trunc nuw i64 %_66 to i1
  br i1 %44, label %bb33, label %bb34

bb33:                                             ; preds = %bb32
  %45 = getelementptr inbounds i8, ptr %_64, i64 4
  %i = load i32, ptr %45, align 4
  %_69 = load i32, ptr %max_len, align 4
  %_73 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_71 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lioes, i64 %_73, ptr align 8 @alloc_86558c888f51606b928a8e9d506f7647)
          to label %bb35 unwind label %cleanup

bb34:                                             ; preds = %bb32
  %_0 = load i32, ptr %max_len, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE"(ptr align 8 %lioes)
  ret i32 %_0

bb35:                                             ; preds = %bb33
  %_70 = load i32, ptr %_71, align 4
  %_68 = icmp slt i32 %_69, %_70
  br i1 %_68, label %bb36, label %bb31

bb36:                                             ; preds = %bb35
  %_77 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lioes, i64 %_77, ptr align 8 @alloc_932b60ae31fca21ada0f16b9c991b975)
          to label %bb37 unwind label %cleanup

bb37:                                             ; preds = %bb36
  %_74 = load i32, ptr %_75, align 4
  store i32 %_74, ptr %max_len, align 4
  br label %bb31

bb10:                                             ; preds = %bb8
  %_14.0 = extractvalue { i32, i32 } %34, 0
  %_14.1 = extractvalue { i32, i32 } %34, 1
  store i32 %_14.0, ptr %iter1, align 4
  %46 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %46, align 4
  br label %bb11

bb11:                                             ; preds = %bb29, %bb25, %bb21, %bb15, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %47 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc53347040ceb1bcaE"(ptr align 4 %iter1)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = extractvalue { i32, i32 } %47, 1
  store i32 %48, ptr %_17, align 4
  %50 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %49, ptr %50, align 4
  %51 = load i32, ptr %_17, align 4
  %52 = getelementptr inbounds i8, ptr %_17, i64 4
  %53 = load i32, ptr %52, align 4
  %_19 = zext i32 %51 to i64
  %54 = trunc nuw i64 %_19 to i1
  br i1 %54, label %bb13, label %bb5

bb13:                                             ; preds = %bb12
  %55 = getelementptr inbounds i8, ptr %_17, i64 4
  %j = load i32, ptr %55, align 4
  %_23 = sext i32 %i3 to i64
  %_24 = icmp ult i64 %_23, 2
  br i1 %_24, label %bb14, label %panic

bb14:                                             ; preds = %bb13
  %56 = getelementptr inbounds nuw i32, ptr %arr, i64 %_23
  %_22 = load i32, ptr %56, align 4
  %_26 = sext i32 %j to i64
  %_27 = icmp ult i64 %_26, 2
  br i1 %_27, label %bb15, label %panic4

panic:                                            ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 2, ptr align 8 @alloc_05f210d1c1c889d67ef9022de8f1125a) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb15:                                             ; preds = %bb14
  %57 = getelementptr inbounds nuw i32, ptr %arr, i64 %_26
  %_25 = load i32, ptr %57, align 4
  %_21 = icmp sgt i32 %_22, %_25
  br i1 %_21, label %bb16, label %bb11

panic4:                                           ; preds = %bb14
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 2, ptr align 8 @alloc_968964ad87eb9fe83d730c88ffc86772) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_32 = sext i32 %i3 to i64
  %_33 = icmp ult i64 %_32, 2
  br i1 %_33, label %bb17, label %panic5

bb17:                                             ; preds = %bb16
  %58 = getelementptr inbounds nuw i32, ptr %arr, i64 %_32
  %_31 = load i32, ptr %58, align 4
  %_35 = sext i32 %j to i64
  %_36 = icmp ult i64 %_35, 2
  br i1 %_36, label %bb18, label %panic6

panic5:                                           ; preds = %bb16
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 2, ptr align 8 @alloc_d264213743be45a62c52a626b426f328) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %59 = getelementptr inbounds nuw i32, ptr %arr, i64 %_35
  %_34 = load i32, ptr %59, align 4
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_31, i32 %_34)
  %_37.0 = extractvalue { i32, i1 } %60, 0
  %_37.1 = extractvalue { i32, i1 } %60, 1
  br i1 %_37.1, label %panic7, label %bb19

panic6:                                           ; preds = %bb17
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35, i64 2, ptr align 8 @alloc_e80fe9d10deed1af4cd15c6e11bfd4cf) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  br label %bb20

panic7:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_633dfb5cc41b06b3e7e6316539857e6a) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_40 = icmp eq i32 %_37.0, -2147483648
  %_41 = and i1 false, %_40
  br i1 %_41, label %panic8, label %bb21

bb21:                                             ; preds = %bb20
  %_29 = srem i32 %_37.0, 2
  %_28 = icmp ne i32 %_29, 0
  br i1 %_28, label %bb22, label %bb11

panic8:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_633dfb5cc41b06b3e7e6316539857e6a) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_46 = sext i32 %i3 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lioes, i64 %_46, ptr align 8 @alloc_1ca3cdbda71c5d64196db805f66a7b5c)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_43 = load i32, ptr %_44, align 4
  %_51 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lioes, i64 %_51, ptr align 8 @alloc_11f812021f31179aa661a6fb5c1dc9ce)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_48 = load i32, ptr %_49, align 4
  %61 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_48, i32 1)
  %_52.0 = extractvalue { i32, i1 } %61, 0
  %_52.1 = extractvalue { i32, i1 } %61, 1
  br i1 %_52.1, label %panic9, label %bb25

bb25:                                             ; preds = %bb24
  %_42 = icmp slt i32 %_43, %_52.0
  br i1 %_42, label %bb26, label %bb11

panic9:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9ccac7f898b889545b7cb151b38289a5) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_56 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_54 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lioes, i64 %_56, ptr align 8 @alloc_c20a56cb7948b6c52c4b75d64ad433b0)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_53 = load i32, ptr %_54, align 4
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_53, i32 1)
  %_57.0 = extractvalue { i32, i1 } %62, 0
  %_57.1 = extractvalue { i32, i1 } %62, 1
  br i1 %_57.1, label %panic10, label %bb28

bb28:                                             ; preds = %bb27
  %_60 = sext i32 %i3 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_58 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4c5801fa147c10f2E"(ptr align 8 %lioes, i64 %_60, ptr align 8 @alloc_44daa333575a2caa4cf0a94550c7d221)
          to label %bb29 unwind label %cleanup

panic10:                                          ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c16c2402ddd5150dfaed7c01d6fc861e) #24
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  store i32 %_57.0, ptr %_58, align 4
  br label %bb11

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb39
  %63 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb40:                                             ; preds = %bb39
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds i8, ptr %2, i64 8
  %66 = load i32, ptr %65, align 8
  %67 = insertvalue { ptr, i32 } poison, ptr %64, 0
  %68 = insertvalue { ptr, i32 } %67, i32 %66, 1
  resume { ptr, i32 } %68
}
