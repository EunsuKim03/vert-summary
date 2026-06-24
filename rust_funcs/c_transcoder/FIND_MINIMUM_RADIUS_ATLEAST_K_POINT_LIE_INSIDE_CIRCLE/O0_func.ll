define i32 @f_gold(i32 %k, i64 %0, i64 %1, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %dis = alloca [24 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %y = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 8 %4, i64 8, i1 false)
  store i64 %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y, ptr align 8 %3, i64 8, i1 false)
  %_6 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h0d2ed8af427b27d0E(ptr sret([24 x i8]) align 8 %dis, i32 0, i64 %_6)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a32c9b1cace2e61E"(i32 0, i32 %n)
          to label %bb2 unwind label %cleanup

bb21:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E"(ptr align 8 %dis) #22
          to label %bb22 unwind label %terminate

cleanup:                                          ; preds = %bb14, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %bb18, %panic, %bb16, %bb7, %bb3, %start
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb21

bb2:                                              ; preds = %start
  %_7.0 = extractvalue { i32, i32 } %5, 0
  %_7.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_7.0, ptr %iter, align 4
  %10 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %10, align 4
  br label %bb3

bb3:                                              ; preds = %bb15, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9aad6bc48b926de7E"(ptr align 4 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_10, align 4
  %14 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_10, align 4
  %16 = getelementptr inbounds i8, ptr %_10, i64 4
  %17 = load i32, ptr %16, align 4
  %_12 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_12 to i1
  br i1 %18, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %19 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %19, align 4
  %_16 = sext i32 %i to i64
  %_17 = icmp ult i64 %_16, 2
  br i1 %_17, label %bb8, label %panic1

bb7:                                              ; preds = %bb4
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %20 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hec2a761601615e95E"(ptr align 8 %dis)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb7
  %_35.0 = extractvalue { ptr, i64 } %20, 0
  %_35.1 = extractvalue { ptr, i64 } %20, 1
; invoke alloc::slice::<impl [T]>::sort_by
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hf996926d96bc3749E"(ptr align 4 %_35.0, i64 %_35.1)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 1)
  %_41.0 = extractvalue { i32, i1 } %21, 0
  %_41.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_41.1, label %panic, label %bb18

bb18:                                             ; preds = %bb17
  %_39 = sext i32 %_41.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc0bc76f46118a053E"(ptr align 8 %dis, i64 %_39, ptr align 8 @alloc_6e4a969a3acafd8cb3137179735c0cc4)
          to label %bb19 unwind label %cleanup

panic:                                            ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c1cec79eca47a06036f4ab9efa12de48) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb19:                                             ; preds = %bb18
  %_0 = load i32, ptr %_37, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E"(ptr align 8 %dis)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %22 = getelementptr inbounds nuw i32, ptr %x, i64 %_16
  %_15 = load i32, ptr %22, align 4
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb9, label %panic2

panic1:                                           ; preds = %bb6
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_64f7432fe9076f50d6878448d2044e8d) #24
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb8
  %23 = getelementptr inbounds nuw i32, ptr %x, i64 %_19
  %_18 = load i32, ptr %23, align 4
  %24 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15, i32 %_18)
  %_21.0 = extractvalue { i32, i1 } %24, 0
  %_21.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_21.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb8
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_e7a65bb9ebd643d18e3d52d364112aa7) #24
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %bb9
  %_24 = sext i32 %i to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb11, label %panic4

panic3:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_ee7319938477495e142ac2d8bb462cfb) #24
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb10
  %25 = getelementptr inbounds nuw i32, ptr %y, i64 %_24
  %_23 = load i32, ptr %25, align 4
  %_27 = sext i32 %i to i64
  %_28 = icmp ult i64 %_27, 2
  br i1 %_28, label %bb12, label %panic5

panic4:                                           ; preds = %bb10
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_f69deb1ceb216c4a56c8af8c0ea9b2d6) #24
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb11
  %26 = getelementptr inbounds nuw i32, ptr %y, i64 %_27
  %_26 = load i32, ptr %26, align 4
  %27 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_23, i32 %_26)
  %_29.0 = extractvalue { i32, i1 } %27, 0
  %_29.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_29.1, label %panic6, label %bb13

panic5:                                           ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 2, ptr align 8 @alloc_8dfd6ffa140bb73c37e0f19209810515) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_21.0, i32 %_29.0)
  %_30.0 = extractvalue { i32, i1 } %28, 0
  %_30.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_30.1, label %panic7, label %bb14

panic6:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_0b8d32a907d714c89a123dcfe8140b8c) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_33 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_31 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h230cc588a28cb3c2E"(ptr align 8 %dis, i64 %_33, ptr align 8 @alloc_792cc2168f9fac5caf463f3957e0bfac)
          to label %bb15 unwind label %cleanup

panic7:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ee7319938477495e142ac2d8bb462cfb) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  store i32 %_30.0, ptr %_31, align 4
  br label %bb3

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb21
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb22:                                             ; preds = %bb21
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds i8, ptr %2, i64 8
  %32 = load i32, ptr %31, align 8
  %33 = insertvalue { ptr, i32 } poison, ptr %30, 0
  %34 = insertvalue { ptr, i32 } %33, i32 %32, 1
  resume { ptr, i32 } %34
}
