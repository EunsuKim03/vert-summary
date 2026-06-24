define i32 @f_gold(i64 %0, i64 %1, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %j = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %result = alloca [4 x i8], align 4
  %plat_needed = alloca [4 x i8], align 4
  %dep2 = alloca [24 x i8], align 8
  %arr1 = alloca [24 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %dep = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %4, i64 8, i1 false)
  store i64 %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dep, ptr align 8 %3, i64 8, i1 false)
; call alloc::slice::<impl [T]>::to_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E"(ptr sret([24 x i8]) align 8 %arr1, ptr align 4 %arr, i64 2) #19
; invoke alloc::slice::<impl [T]>::to_vec
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E"(ptr sret([24 x i8]) align 8 %dep2, ptr align 4 %dep, i64 2)
          to label %bb2 unwind label %cleanup

bb28:                                             ; preds = %bb27, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE"(ptr align 8 %arr1) #21
          to label %bb29 unwind label %terminate

cleanup:                                          ; preds = %bb24, %start
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb28

bb2:                                              ; preds = %start
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %9 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h21357f5d5f691152E"(ptr align 8 %arr1)
          to label %bb3 unwind label %cleanup3

bb27:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE"(ptr align 8 %dep2) #21
          to label %bb28 unwind label %terminate

cleanup3:                                         ; preds = %panic8, %panic7, %panic6, %panic5, %bb18, %panic4, %panic, %bb11, %bb10, %bb9, %bb5, %bb4, %bb3, %bb2
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  store ptr %11, ptr %2, align 8
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %12, ptr %13, align 8
  br label %bb27

bb3:                                              ; preds = %bb2
  %_11.0 = extractvalue { ptr, i64 } %9, 0
  %_11.1 = extractvalue { ptr, i64 } %9, 1
; invoke alloc::slice::<impl [T]>::sort
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E"(ptr align 4 %_11.0, i64 %_11.1)
          to label %bb4 unwind label %cleanup3

bb4:                                              ; preds = %bb3
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %14 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h21357f5d5f691152E"(ptr align 8 %dep2)
          to label %bb5 unwind label %cleanup3

bb5:                                              ; preds = %bb4
  %_14.0 = extractvalue { ptr, i64 } %14, 0
  %_14.1 = extractvalue { ptr, i64 } %14, 1
; invoke alloc::slice::<impl [T]>::sort
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E"(ptr align 4 %_14.0, i64 %_14.1)
          to label %bb6 unwind label %cleanup3

bb6:                                              ; preds = %bb5
  store i32 1, ptr %plat_needed, align 4
  store i32 1, ptr %result, align 4
  store i64 1, ptr %i, align 8
  store i64 0, ptr %j, align 8
  br label %bb7

bb7:                                              ; preds = %bb21, %bb23, %bb19, %bb6
  %_21 = load i64, ptr %i, align 8
  %_22 = sext i32 %n to i64
  %_20 = icmp ult i64 %_21, %_22
  br i1 %_20, label %bb8, label %bb24

bb24:                                             ; preds = %bb8, %bb7
  %_0 = load i32, ptr %result, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE"(ptr align 8 %dep2)
          to label %bb25 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_24 = load i64, ptr %j, align 8
  %_25 = sext i32 %n to i64
  %_23 = icmp ult i64 %_24, %_25
  br i1 %_23, label %bb9, label %bb24

bb9:                                              ; preds = %bb8
  %_29 = load i64, ptr %i, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E"(ptr align 8 %arr1, i64 %_29, ptr align 8 @alloc_6273f7bd87e9795e787608acb72171c7)
          to label %bb10 unwind label %cleanup3

bb25:                                             ; preds = %bb24
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE"(ptr align 8 %arr1)
  ret i32 %_0

bb10:                                             ; preds = %bb9
  %_32 = load i64, ptr %j, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_30 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E"(ptr align 8 %dep2, i64 %_32, ptr align 8 @alloc_1948009fd775a9fbe566a926c1297413)
          to label %bb11 unwind label %cleanup3

bb11:                                             ; preds = %bb10
; invoke core::cmp::impls::<impl core::cmp::Ord for i32>::cmp
  %_26 = invoke i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17hebfdbb174617a5cdE"(ptr align 4 %_27, ptr align 4 %_30)
          to label %bb12 unwind label %cleanup3

bb12:                                             ; preds = %bb11
  switch i8 %_26, label %bb13 [
    i8 -1, label %bb16
    i8 0, label %bb14
    i8 1, label %bb15
  ]

bb13:                                             ; preds = %bb12
  unreachable

bb16:                                             ; preds = %bb12
  %15 = load i32, ptr %plat_needed, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_34.0 = extractvalue { i32, i1 } %16, 0
  %_34.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_34.1, label %panic, label %bb17

bb14:                                             ; preds = %bb12
  %17 = load i64, ptr %i, align 8
  %_41.0 = add i64 %17, 1
  %_41.1 = icmp ult i64 %_41.0, %17
  br i1 %_41.1, label %panic5, label %bb22

bb15:                                             ; preds = %bb12
  %18 = load i32, ptr %plat_needed, align 4
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %18, i32 1)
  %_39.0 = extractvalue { i32, i1 } %19, 0
  %_39.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_39.1, label %panic7, label %bb20

bb17:                                             ; preds = %bb16
  store i32 %_34.0, ptr %plat_needed, align 4
  %20 = load i64, ptr %i, align 8
  %_35.0 = add i64 %20, 1
  %_35.1 = icmp ult i64 %_35.0, %20
  br i1 %_35.1, label %panic4, label %bb18

panic:                                            ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d6f87b7ace374ffb961477b18b3fe85e) #23
          to label %unreachable unwind label %cleanup3

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb18:                                             ; preds = %bb17
  store i64 %_35.0, ptr %i, align 8
  %_37 = load i32, ptr %result, align 4
  %_38 = load i32, ptr %plat_needed, align 4
; invoke core::cmp::max
  %_36 = invoke i32 @_ZN4core3cmp3max17h669231be9e138557E(i32 %_37, i32 %_38)
          to label %bb19 unwind label %cleanup3

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8cafcd09e93387b289b374baa3afd2e8) #23
          to label %unreachable unwind label %cleanup3

bb19:                                             ; preds = %bb18
  store i32 %_36, ptr %result, align 4
  br label %bb7

bb22:                                             ; preds = %bb14
  store i64 %_41.0, ptr %i, align 8
  %21 = load i64, ptr %j, align 8
  %_42.0 = add i64 %21, 1
  %_42.1 = icmp ult i64 %_42.0, %21
  br i1 %_42.1, label %panic6, label %bb23

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_de4d5703b9da0728f1ae5df23143f9bd) #23
          to label %unreachable unwind label %cleanup3

bb23:                                             ; preds = %bb22
  store i64 %_42.0, ptr %j, align 8
  br label %bb7

panic6:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5b741f9ae83047905a6f639855e46e23) #23
          to label %unreachable unwind label %cleanup3

bb20:                                             ; preds = %bb15
  store i32 %_39.0, ptr %plat_needed, align 4
  %22 = load i64, ptr %j, align 8
  %_40.0 = add i64 %22, 1
  %_40.1 = icmp ult i64 %_40.0, %22
  br i1 %_40.1, label %panic8, label %bb21

panic7:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a7838e3ff626ed58239b4066712acd8a) #23
          to label %unreachable unwind label %cleanup3

bb21:                                             ; preds = %bb20
  store i64 %_40.0, ptr %j, align 8
  br label %bb7

panic8:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0c7570470790a3be738dbe212c2f856f) #23
          to label %unreachable unwind label %cleanup3

terminate:                                        ; preds = %bb28, %bb27
  %23 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb29:                                             ; preds = %bb28
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds i8, ptr %2, i64 8
  %26 = load i32, ptr %25, align 8
  %27 = insertvalue { ptr, i32 } poison, ptr %24, 0
  %28 = insertvalue { ptr, i32 } %27, i32 %26, 1
  resume { ptr, i32 } %28
}
