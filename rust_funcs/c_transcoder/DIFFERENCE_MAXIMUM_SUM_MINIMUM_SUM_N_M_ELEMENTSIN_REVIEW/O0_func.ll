define i32 @f_gold(i64 %0, i32 %n, i32 %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_29 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %min = alloca [4 x i8], align 4
  %max = alloca [4 x i8], align 4
  %arr1 = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
; call alloc::slice::<impl [T]>::to_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hb41106d6d89d587aE"(ptr sret([24 x i8]) align 8 %arr1, ptr align 4 %arr, i64 2) #20
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %3 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h324a0c47fdbfb403E"(ptr align 8 %arr1)
          to label %bb2 unwind label %cleanup

bb22:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbd4578a55c92c30bE"(ptr align 8 %arr1) #21
          to label %bb23 unwind label %terminate

cleanup:                                          ; preds = %panic5, %bb8, %panic4, %bb16, %panic3, %bb14, %bb12, %panic, %bb5, %bb3, %bb2, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb22

bb2:                                              ; preds = %start
  %_8.0 = extractvalue { ptr, i64 } %3, 0
  %_8.1 = extractvalue { ptr, i64 } %3, 1
; invoke alloc::slice::<impl [T]>::sort
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17he665e7c48b557645E"(ptr align 4 %_8.0, i64 %_8.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i32 0, ptr %max, align 4
  store i32 0, ptr %min, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %8 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hec1d7cd0eb0d3261E"(i32 0, i32 %m)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_12.0 = extractvalue { i32, i32 } %8, 0
  %_12.1 = extractvalue { i32, i32 } %8, 1
  store i32 %_12.0, ptr %iter, align 4
  %9 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_12.1, ptr %9, align 4
  br label %bb5

bb5:                                              ; preds = %bb11, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %10 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd4c3285bf572bad2E"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = extractvalue { i32, i32 } %10, 1
  store i32 %11, ptr %_15, align 4
  %13 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %_15, align 4
  %15 = getelementptr inbounds i8, ptr %_15, i64 4
  %16 = load i32, ptr %15, align 4
  %_17 = zext i32 %14 to i64
  %17 = trunc nuw i64 %_17 to i1
  br i1 %17, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %18 = getelementptr inbounds i8, ptr %_15, i64 4
  %i = load i32, ptr %18, align 4
  %_22 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE"(ptr align 8 %arr1, i64 %_22, ptr align 8 @alloc_197392f4a6764c7482969e19d2339d49)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %m)
  %_27.0 = extractvalue { i32, i1 } %19, 0
  %_27.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_27.1, label %panic, label %bb12

bb12:                                             ; preds = %bb9
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %20 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hec1d7cd0eb0d3261E"(i32 %_27.0, i32 %n)
          to label %bb13 unwind label %cleanup

panic:                                            ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8199d37b4b94bc44c03ba68e5a34a0a9) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %_24.0 = extractvalue { i32, i32 } %20, 0
  %_24.1 = extractvalue { i32, i32 } %20, 1
  store i32 %_24.0, ptr %iter2, align 4
  %21 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_24.1, ptr %21, align 4
  br label %bb14

bb14:                                             ; preds = %bb19, %bb13
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %22 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd4c3285bf572bad2E"(ptr align 4 %iter2)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = extractvalue { i32, i32 } %22, 1
  store i32 %23, ptr %_29, align 4
  %25 = getelementptr inbounds i8, ptr %_29, i64 4
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %_29, align 4
  %27 = getelementptr inbounds i8, ptr %_29, i64 4
  %28 = load i32, ptr %27, align 4
  %_31 = zext i32 %26 to i64
  %29 = trunc nuw i64 %_31 to i1
  br i1 %29, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %30 = getelementptr inbounds i8, ptr %_29, i64 4
  %j = load i32, ptr %30, align 4
  %_36 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE"(ptr align 8 %arr1, i64 %_36, ptr align 8 @alloc_bb37de9869e6d37434222f231ec1b75e)
          to label %bb18 unwind label %cleanup

bb17:                                             ; preds = %bb15
  %_38 = load i32, ptr %max, align 4
  %_39 = load i32, ptr %min, align 4
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_38, i32 %_39)
  %_40.0 = extractvalue { i32, i1 } %31, 0
  %_40.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_40.1, label %panic3, label %bb20

bb20:                                             ; preds = %bb17
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbd4578a55c92c30bE"(ptr align 8 %arr1)
  ret i32 %_40.0

panic3:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6a2c2cff33f2b00e7892a85225c6a84d) #23
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb16
  %_33 = load i32, ptr %_34, align 4
  %32 = load i32, ptr %max, align 4
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 %_33)
  %_37.0 = extractvalue { i32, i1 } %33, 0
  %_37.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_37.1, label %panic4, label %bb19

bb19:                                             ; preds = %bb18
  store i32 %_37.0, ptr %max, align 4
  br label %bb14

panic4:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e8873293a31b74da4a281837b312164b) #23
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %bb8
  %_19 = load i32, ptr %_20, align 4
  %34 = load i32, ptr %min, align 4
  %35 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 %_19)
  %_23.0 = extractvalue { i32, i1 } %35, 0
  %_23.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_23.1, label %panic5, label %bb11

bb11:                                             ; preds = %bb10
  store i32 %_23.0, ptr %min, align 4
  br label %bb5

panic5:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0b85cc55632d60deb76adde74eeef200) #23
          to label %unreachable unwind label %cleanup

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb22
  %36 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb23:                                             ; preds = %bb22
  %37 = load ptr, ptr %1, align 8
  %38 = getelementptr inbounds i8, ptr %1, i64 8
  %39 = load i32, ptr %38, align 8
  %40 = insertvalue { ptr, i32 } poison, ptr %37, 0
  %41 = insertvalue { ptr, i32 } %40, i32 %39, 1
  resume { ptr, i32 } %41
}
