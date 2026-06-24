define i32 @f_gold(i32 %W, i32 %n, i64 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_19 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_12 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %_9 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %wt = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %val = alloca [8 x i8], align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %val, ptr align 8 %4, i64 8, i1 false)
  store i64 %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %wt, ptr align 8 %3, i64 8, i1 false)
  %_7 = sext i32 %W to i64
  %_8.0 = add i64 %_7, 1
  %_8.1 = icmp ult i64 %_8.0, %_7
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hf420e5ce25a6cd21E(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_8.0)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hc1e9a15eda207509E"(ptr sret([12 x i8]) align 4 %_10, i32 0, i32 %W)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fccb0b203627a7965fcb327b962e7ed8) #23
  unreachable

bb26:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc400334c9cc24624E"(ptr align 8 %dp) #22
          to label %bb27 unwind label %terminate

cleanup:                                          ; preds = %bb22, %bb21, %panic6, %panic5, %bb18, %panic4, %panic3, %bb15, %panic2, %bb11, %bb8, %bb9, %bb5, %bb3, %bb1
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb26

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd5c14a66c90c13d1E"(ptr sret([12 x i8]) align 4 %_9, ptr align 4 %_10)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_9, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb12, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %9 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h78e4efc5efab667aE"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_12, align 4
  %12 = getelementptr inbounds i8, ptr %_12, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_12, align 4
  %14 = getelementptr inbounds i8, ptr %_12, i64 4
  %15 = load i32, ptr %14, align 4
  %_14 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_14 to i1
  br i1 %16, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %17 = getelementptr inbounds i8, ptr %_12, i64 4
  %i = load i32, ptr %17, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc97d987f72046270E"(i32 0, i32 %n)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
  %_51 = sext i32 %W to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE"(ptr align 8 %dp, i64 %_51, ptr align 8 @alloc_ae2e40f600ba41e76725c33e606c7b42)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb9
  %_0 = load i32, ptr %_49, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc400334c9cc24624E"(ptr align 8 %dp)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_16.0 = extractvalue { i32, i32 } %18, 0
  %_16.1 = extractvalue { i32, i32 } %18, 1
  store i32 %_16.0, ptr %iter1, align 4
  %19 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_16.1, ptr %19, align 4
  br label %bb11

bb11:                                             ; preds = %bb23, %bb14, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha467aa1fae97cf16E"(ptr align 4 %iter1)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_19, align 4
  %23 = getelementptr inbounds i8, ptr %_19, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_19, align 4
  %25 = getelementptr inbounds i8, ptr %_19, i64 4
  %26 = load i32, ptr %25, align 4
  %_21 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_21 to i1
  br i1 %27, label %bb13, label %bb5

bb13:                                             ; preds = %bb12
  %28 = getelementptr inbounds i8, ptr %_19, i64 4
  %j = load i32, ptr %28, align 4
  %_25 = sext i32 %j to i64
  %_26 = icmp ult i64 %_25, 2
  br i1 %_26, label %bb14, label %panic2

bb14:                                             ; preds = %bb13
  %29 = getelementptr inbounds nuw i32, ptr %wt, i64 %_25
  %_24 = load i32, ptr %29, align 4
  %_23 = icmp sle i32 %_24, %i
  br i1 %_23, label %bb15, label %bb11

panic2:                                           ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_07920c76a589c9a658065d174f84d27e) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic6, %panic5, %panic4, %panic3, %panic2
  unreachable

bb15:                                             ; preds = %bb14
  %_31 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE"(ptr align 8 %dp, i64 %_31, ptr align 8 @alloc_a577d4d519c28f33df5a2146cf756167)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_28 = load i32, ptr %_29, align 4
  %_39 = sext i32 %j to i64
  %_40 = icmp ult i64 %_39, 2
  br i1 %_40, label %bb17, label %panic3

bb17:                                             ; preds = %bb16
  %30 = getelementptr inbounds nuw i32, ptr %wt, i64 %_39
  %_38 = load i32, ptr %30, align 4
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %_38)
  %_41.0 = extractvalue { i32, i1 } %31, 0
  %_41.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_41.1, label %panic4, label %bb18

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_39, i64 2, ptr align 8 @alloc_8bbe9acfa9e86b49a1d6eab3fde9dda8) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_36 = sext i32 %_41.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE"(ptr align 8 %dp, i64 %_36, ptr align 8 @alloc_f012d88844128352c32bf4b42595e02d)
          to label %bb19 unwind label %cleanup

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_75cf701a7f1b1924a13b98554ea5bb5e) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_33 = load i32, ptr %_34, align 4
  %_43 = sext i32 %j to i64
  %_44 = icmp ult i64 %_43, 2
  br i1 %_44, label %bb20, label %panic5

bb20:                                             ; preds = %bb19
  %32 = getelementptr inbounds nuw i32, ptr %val, i64 %_43
  %_42 = load i32, ptr %32, align 4
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_33, i32 %_42)
  %_45.0 = extractvalue { i32, i1 } %33, 0
  %_45.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_45.1, label %panic6, label %bb21

panic5:                                           ; preds = %bb19
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_43, i64 2, ptr align 8 @alloc_31a5f851048e2b6603cef60dd3f6c93d) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
; invoke core::cmp::Ord::max
  %_27 = invoke i32 @_ZN4core3cmp3Ord3max17hbb084c1dde25f658E(i32 %_28, i32 %_45.0)
          to label %bb22 unwind label %cleanup

panic6:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b0fbe32e59712b87883b83508e70981e) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_48 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_46 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac2e864faa43e7c5E"(ptr align 8 %dp, i64 %_48, ptr align 8 @alloc_de702afd3a2d2f507e464a7693a914c3)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 %_27, ptr %_46, align 4
  br label %bb11

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb26
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb27:                                             ; preds = %bb26
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds i8, ptr %2, i64 8
  %37 = load i32, ptr %36, align 8
  %38 = insertvalue { ptr, i32 } poison, ptr %35, 0
  %39 = insertvalue { ptr, i32 } %38, i32 %37, 1
  resume { ptr, i32 } %39
}
