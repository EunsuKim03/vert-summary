define i32 @f_gold(ptr align 4 %a.0, i64 %a.1, i32 %sum) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_22 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %r = alloca [8 x i8], align 8
  %l = alloca [8 x i8], align 8
  %a = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::to_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8f4bdb5267005f92E"(ptr sret([24 x i8]) align 8 %a, ptr align 4 %a.0, i64 %a.1) #20
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %1 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17he84f598daaa5cc8bE"(ptr align 8 %a)
          to label %bb2 unwind label %cleanup

bb33:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1c096f57125962b4E"(ptr align 8 %a) #21
          to label %bb34 unwind label %terminate

cleanup:                                          ; preds = %panic7, %panic6, %panic5, %bb25, %panic4, %bb23, %bb22, %panic3, %bb18, %panic2, %bb16, %bb15, %bb9, %bb7, %panic1, %bb5, %panic, %bb3, %bb2, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb33

bb2:                                              ; preds = %start
  %_6.0 = extractvalue { ptr, i64 } %1, 0
  %_6.1 = extractvalue { ptr, i64 } %1, 1
; invoke alloc::slice::<impl [T]>::sort
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hc42c1b1bb0caf1bdE"(ptr align 4 %_6.0, i64 %_6.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
; invoke alloc::vec::Vec<T,A>::len
  %_12 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h2b3a519f647885b8E"(ptr align 8 %a)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_14.0 = sub i64 %_12, 1
  %_14.1 = icmp ult i64 %_12, 1
  br i1 %_14.1, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  store i64 0, ptr %l, align 8
  store i64 %_14.0, ptr %r, align 8
; invoke alloc::vec::Vec<T,A>::len
  %_18 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h2b3a519f647885b8E"(ptr align 8 %a)
          to label %bb6 unwind label %cleanup

panic:                                            ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_984c17518f329e7145dd07f966688e8c) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb6:                                              ; preds = %bb5
  %_20.0 = sub i64 %_18, 2
  %_20.1 = icmp ult i64 %_18, 2
  br i1 %_20.1, label %panic1, label %bb7

bb7:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %6 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hefc68fae575bd813E"(i64 0, i64 %_20.0)
          to label %bb8 unwind label %cleanup

panic1:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0a1c7f979785ab1f291c55e0af009e8e) #23
          to label %unreachable unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_15.0 = extractvalue { i64, i64 } %6, 0
  %_15.1 = extractvalue { i64, i64 } %6, 1
  store i64 %_15.0, ptr %iter, align 8
  %7 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_15.1, ptr %7, align 8
  br label %bb9

bb9:                                              ; preds = %bb14, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %8 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h160048a8324a36beE"(ptr align 8 %iter)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  store i64 %9, ptr %_22, align 8
  %11 = getelementptr inbounds i8, ptr %_22, i64 8
  store i64 %10, ptr %11, align 8
  %_24 = load i64, ptr %_22, align 8
  %12 = getelementptr inbounds i8, ptr %_22, i64 8
  %13 = load i64, ptr %12, align 8
  %14 = trunc nuw i64 %_24 to i1
  br i1 %14, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %15 = getelementptr inbounds i8, ptr %_22, i64 8
  %i = load i64, ptr %15, align 8
  br label %bb14

bb13:                                             ; preds = %bb10
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1c096f57125962b4E"(ptr align 8 %a)
  br label %bb32

bb32:                                             ; preds = %bb21, %bb13
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb14:                                             ; preds = %bb29, %bb31, %bb12
  %_27 = load i64, ptr %l, align 8
  %_28 = load i64, ptr %r, align 8
  %_26 = icmp ult i64 %_27, %_28
  br i1 %_26, label %bb15, label %bb9

bb15:                                             ; preds = %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E"(ptr align 8 %a, i64 %i, ptr align 8 @alloc_c9431082309d99eefb593527d435baa1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_32 = load i32, ptr %_33, align 4
  %_38 = load i64, ptr %l, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E"(ptr align 8 %a, i64 %_38, ptr align 8 @alloc_8b177e96656587c18cce724a38378d90)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_35 = load i32, ptr %_36, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 %_35)
  %_39.0 = extractvalue { i32, i1 } %17, 0
  %_39.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_39.1, label %panic2, label %bb18

bb18:                                             ; preds = %bb17
  %_43 = load i64, ptr %r, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_41 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E"(ptr align 8 %a, i64 %_43, ptr align 8 @alloc_6fc237616041e22d6261a134a0b03d73)
          to label %bb19 unwind label %cleanup

panic2:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c3a330a5b01321eec21361220e25a721) #23
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_40 = load i32, ptr %_41, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_39.0, i32 %_40)
  %_44.0 = extractvalue { i32, i1 } %18, 0
  %_44.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_44.1, label %panic3, label %bb20

bb20:                                             ; preds = %bb19
  %_29 = icmp eq i32 %_44.0, %sum
  br i1 %_29, label %bb21, label %bb22

panic3:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c3a330a5b01321eec21361220e25a721) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E"(ptr align 8 %a, i64 %i, ptr align 8 @alloc_0a53d7a63a9e2c5f99989555cc756edb)
          to label %bb23 unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1c096f57125962b4E"(ptr align 8 %a)
  br label %bb32

bb23:                                             ; preds = %bb22
  %_48 = load i32, ptr %_49, align 4
  %_54 = load i64, ptr %l, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_52 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E"(ptr align 8 %a, i64 %_54, ptr align 8 @alloc_b2663808d6f865516a42b39f60e03e08)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_51 = load i32, ptr %_52, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_48, i32 %_51)
  %_55.0 = extractvalue { i32, i1 } %19, 0
  %_55.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_55.1, label %panic4, label %bb25

bb25:                                             ; preds = %bb24
  %_59 = load i64, ptr %r, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E"(ptr align 8 %a, i64 %_59, ptr align 8 @alloc_1c26a278b28b5d5e4943430e6e2649f0)
          to label %bb26 unwind label %cleanup

panic4:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ad4505cff4945c73f9174586499b612b) #23
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_56 = load i32, ptr %_57, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_55.0, i32 %_56)
  %_60.0 = extractvalue { i32, i1 } %20, 0
  %_60.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_60.1, label %panic5, label %bb27

bb27:                                             ; preds = %bb26
  %_45 = icmp slt i32 %_60.0, %sum
  br i1 %_45, label %bb28, label %bb30

panic5:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ad4505cff4945c73f9174586499b612b) #23
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb27
  %21 = load i64, ptr %r, align 8
  %_62.0 = sub i64 %21, 1
  %_62.1 = icmp ult i64 %21, 1
  br i1 %_62.1, label %panic6, label %bb31

bb28:                                             ; preds = %bb27
  %22 = load i64, ptr %l, align 8
  %_61.0 = add i64 %22, 1
  %_61.1 = icmp ult i64 %_61.0, %22
  br i1 %_61.1, label %panic7, label %bb29

bb31:                                             ; preds = %bb30
  store i64 %_62.0, ptr %r, align 8
  br label %bb14

panic6:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_373a7895905eeeeb150ffd7cbb9a3021) #23
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  store i64 %_61.0, ptr %l, align 8
  br label %bb14

panic7:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f52d8007f7308ed742354ff02b0c14c3) #23
          to label %unreachable unwind label %cleanup

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb33
  %23 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb34:                                             ; preds = %bb33
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8
  %27 = insertvalue { ptr, i32 } poison, ptr %24, 0
  %28 = insertvalue { ptr, i32 } %27, i32 %26, 1
  resume { ptr, i32 } %28
}
