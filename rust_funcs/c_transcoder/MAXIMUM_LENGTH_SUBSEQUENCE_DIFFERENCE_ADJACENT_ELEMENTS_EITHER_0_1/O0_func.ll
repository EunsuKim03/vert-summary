define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_48 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %max = alloca [4 x i8], align 4
  %mls = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h9a8c8eb5ed6a29d4E(ptr sret([24 x i8]) align 8 %mls, i32 1, i64 %_4)
  store i32 0, ptr %max, align 4
  %_8 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5d6197297ad34e8E"(i64 1, i64 %_8)
          to label %bb2 unwind label %cleanup

bb33:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ced7fc63f398367E"(ptr align 8 %mls) #23
          to label %bb34 unwind label %terminate

cleanup:                                          ; preds = %bb22, %panic7, %bb20, %panic6, %bb17, %bb16, %bb14, %panic5, %panic4, %panic, %bb9, %bb6, %bb30, %bb27, %bb25, %bb7, %bb3, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb33

bb2:                                              ; preds = %start
  %_6.0 = extractvalue { i64, i64 } %3, 0
  %_6.1 = extractvalue { i64, i64 } %3, 1
  store i64 %_6.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %8, align 8
  br label %bb3

bb3:                                              ; preds = %bb10, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h7a297debdb830611E"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_10, align 8
  %12 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %11, ptr %12, align 8
  %_12 = load i64, ptr %_10, align 8
  %13 = getelementptr inbounds i8, ptr %_10, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_12 to i1
  br i1 %15, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %16 = getelementptr inbounds i8, ptr %_10, i64 8
  %i3 = load i64, ptr %16, align 8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5d6197297ad34e8E"(i64 0, i64 %i3)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  %_46 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5d6197297ad34e8E"(i64 0, i64 %_46)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb7
  %_44.0 = extractvalue { i64, i64 } %18, 0
  %_44.1 = extractvalue { i64, i64 } %18, 1
  store i64 %_44.0, ptr %iter2, align 8
  %19 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_44.1, ptr %19, align 8
  br label %bb25

bb25:                                             ; preds = %bb31, %bb29, %bb24
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h7a297debdb830611E"(ptr align 8 %iter2)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  store i64 %21, ptr %_48, align 8
  %23 = getelementptr inbounds i8, ptr %_48, i64 8
  store i64 %22, ptr %23, align 8
  %_50 = load i64, ptr %_48, align 8
  %24 = getelementptr inbounds i8, ptr %_48, i64 8
  %25 = load i64, ptr %24, align 8
  %26 = trunc nuw i64 %_50 to i1
  br i1 %26, label %bb27, label %bb28

bb27:                                             ; preds = %bb26
  %27 = getelementptr inbounds i8, ptr %_48, i64 8
  %i = load i64, ptr %27, align 8
  %_53 = load i32, ptr %max, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %i, ptr align 8 @alloc_7a1173fdebd8d29ec19aaec1d492c615)
          to label %bb29 unwind label %cleanup

bb28:                                             ; preds = %bb26
  %_0 = load i32, ptr %max, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ced7fc63f398367E"(ptr align 8 %mls)
  ret i32 %_0

bb29:                                             ; preds = %bb27
  %_54 = load i32, ptr %_55, align 4
  %_52 = icmp slt i32 %_53, %_54
  br i1 %_52, label %bb30, label %bb25

bb30:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_58 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %i, ptr align 8 @alloc_2993d4f926e1f6995739d83805594750)
          to label %bb31 unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_57 = load i32, ptr %_58, align 4
  store i32 %_57, ptr %max, align 4
  br label %bb25

bb8:                                              ; preds = %bb6
  %_14.0 = extractvalue { i64, i64 } %17, 0
  %_14.1 = extractvalue { i64, i64 } %17, 1
  store i64 %_14.0, ptr %iter1, align 8
  %28 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_14.1, ptr %28, align 8
  br label %bb9

bb9:                                              ; preds = %bb23, %bb19, %bb15, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %29 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h7a297debdb830611E"(ptr align 8 %iter1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %30 = extractvalue { i64, i64 } %29, 0
  %31 = extractvalue { i64, i64 } %29, 1
  store i64 %30, ptr %_17, align 8
  %32 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %31, ptr %32, align 8
  %_19 = load i64, ptr %_17, align 8
  %33 = getelementptr inbounds i8, ptr %_17, i64 8
  %34 = load i64, ptr %33, align 8
  %35 = trunc nuw i64 %_19 to i1
  br i1 %35, label %bb11, label %bb3

bb11:                                             ; preds = %bb10
  %36 = getelementptr inbounds i8, ptr %_17, i64 8
  %j = load i64, ptr %36, align 8
  %_25 = icmp ult i64 %i3, 2
  br i1 %_25, label %bb12, label %panic

bb12:                                             ; preds = %bb11
  %37 = getelementptr inbounds nuw i32, ptr %arr, i64 %i3
  %_24 = load i32, ptr %37, align 4
  %_27 = icmp ult i64 %j, 2
  br i1 %_27, label %bb13, label %panic4

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_de098357015bed8deb42306ea9cb6a66) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %38 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_26 = load i32, ptr %38, align 4
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_24, i32 %_26)
  %_28.0 = extractvalue { i32, i1 } %39, 0
  %_28.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_28.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_fbc67160c2abbfdbabd1e43ec13c42b8) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
; invoke core::num::<impl i32>::abs
  %_22 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h40c10910f54e02fcE"(i32 %_28.0)
          to label %bb15 unwind label %cleanup

panic5:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c32c3ca593c78599cb659be47210f6b9) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_21 = icmp sle i32 %_22, 1
  br i1 %_21, label %bb16, label %bb9

bb16:                                             ; preds = %bb15
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_31 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %i3, ptr align 8 @alloc_8b925615c444c0b69201d3a132e76f74)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_30 = load i32, ptr %_31, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %j, ptr align 8 @alloc_d3a0bb69f25223b9c48bb6b60328cc24)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_34 = load i32, ptr %_35, align 4
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_34, i32 1)
  %_37.0 = extractvalue { i32, i1 } %40, 0
  %_37.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_37.1, label %panic6, label %bb19

bb19:                                             ; preds = %bb18
  %_29 = icmp slt i32 %_30, %_37.0
  br i1 %_29, label %bb20, label %bb9

panic6:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_42db9490a41997cd7c20dd9bb45527d8) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_39 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %j, ptr align 8 @alloc_cf980ebef829b3c51be5871065beccbd)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_38 = load i32, ptr %_39, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_38, i32 1)
  %_41.0 = extractvalue { i32, i1 } %41, 0
  %_41.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_41.1, label %panic7, label %bb22

bb22:                                             ; preds = %bb21
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h69844daa03e04922E"(ptr align 8 %mls, i64 %i3, ptr align 8 @alloc_68b4a7ce25f00d2080d237d245d05b83)
          to label %bb23 unwind label %cleanup

panic7:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c47cb75c9bf7b52058a2d780d2b10d7a) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 %_41.0, ptr %_42, align 4
  br label %bb9

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb33
  %42 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb34:                                             ; preds = %bb33
  %43 = load ptr, ptr %1, align 8
  %44 = getelementptr inbounds i8, ptr %1, i64 8
  %45 = load i32, ptr %44, align 8
  %46 = insertvalue { ptr, i32 } poison, ptr %43, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1
  resume { ptr, i32 } %47
}
