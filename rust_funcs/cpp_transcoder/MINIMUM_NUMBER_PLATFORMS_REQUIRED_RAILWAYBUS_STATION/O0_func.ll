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

bb23:                                             ; preds = %bb22, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE"(ptr align 8 %arr1) #21
          to label %bb24 unwind label %terminate

cleanup:                                          ; preds = %bb19, %start
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb23

bb2:                                              ; preds = %start
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %9 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h21357f5d5f691152E"(ptr align 8 %arr1)
          to label %bb3 unwind label %cleanup3

bb22:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE"(ptr align 8 %dep2) #21
          to label %bb23 unwind label %terminate

cleanup3:                                         ; preds = %bb14, %panic6, %panic5, %panic4, %panic, %bb10, %bb9, %bb5, %bb4, %bb3, %bb2
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  store ptr %11, ptr %2, align 8
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %12, ptr %13, align 8
  br label %bb22

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

bb7:                                              ; preds = %bb15, %bb18, %bb6
  %_21 = load i64, ptr %i, align 8
  %_22 = sext i32 %n to i64
  %_20 = icmp ult i64 %_21, %_22
  br i1 %_20, label %bb8, label %bb19

bb19:                                             ; preds = %bb8, %bb7
  %_0 = load i32, ptr %result, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE"(ptr align 8 %dep2)
          to label %bb20 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_24 = load i64, ptr %j, align 8
  %_25 = sext i32 %n to i64
  %_23 = icmp ult i64 %_24, %_25
  br i1 %_23, label %bb9, label %bb19

bb9:                                              ; preds = %bb8
  %_30 = load i64, ptr %i, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E"(ptr align 8 %arr1, i64 %_30, ptr align 8 @alloc_c9cdb9f9d0503e049398aa6d3bf73999)
          to label %bb10 unwind label %cleanup3

bb20:                                             ; preds = %bb19
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h414bc1a9d5acd1bfE"(ptr align 8 %arr1)
  ret i32 %_0

bb10:                                             ; preds = %bb9
  %_27 = load i32, ptr %_28, align 4
  %_34 = load i64, ptr %j, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_32 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E"(ptr align 8 %dep2, i64 %_34, ptr align 8 @alloc_a5c4585621a4e58303b4158919bee345)
          to label %bb11 unwind label %cleanup3

bb11:                                             ; preds = %bb10
  %_31 = load i32, ptr %_32, align 4
  %_26 = icmp sle i32 %_27, %_31
  br i1 %_26, label %bb12, label %bb16

bb16:                                             ; preds = %bb11
  %15 = load i32, ptr %plat_needed, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %15, i32 1)
  %_40.0 = extractvalue { i32, i1 } %16, 0
  %_40.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_40.1, label %panic, label %bb17

bb12:                                             ; preds = %bb11
  %17 = load i32, ptr %plat_needed, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 1)
  %_35.0 = extractvalue { i32, i1 } %18, 0
  %_35.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_35.1, label %panic5, label %bb13

bb17:                                             ; preds = %bb16
  store i32 %_40.0, ptr %plat_needed, align 4
  %19 = load i64, ptr %j, align 8
  %_41.0 = add i64 %19, 1
  %_41.1 = icmp ult i64 %_41.0, %19
  br i1 %_41.1, label %panic4, label %bb18

panic:                                            ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dfaae3a3e944c2ce36303004dc628fd9) #23
          to label %unreachable unwind label %cleanup3

unreachable:                                      ; preds = %panic6, %panic5, %panic4, %panic
  unreachable

bb18:                                             ; preds = %bb17
  store i64 %_41.0, ptr %j, align 8
  br label %bb7

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ce3183ac2084e0e5516545fe55fd466b) #23
          to label %unreachable unwind label %cleanup3

bb13:                                             ; preds = %bb12
  store i32 %_35.0, ptr %plat_needed, align 4
  %20 = load i64, ptr %i, align 8
  %_36.0 = add i64 %20, 1
  %_36.1 = icmp ult i64 %_36.0, %20
  br i1 %_36.1, label %panic6, label %bb14

panic5:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6e4e7b99f6a1b7477f588de49ee4d97c) #23
          to label %unreachable unwind label %cleanup3

bb14:                                             ; preds = %bb13
  store i64 %_36.0, ptr %i, align 8
  %_38 = load i32, ptr %result, align 4
  %_39 = load i32, ptr %plat_needed, align 4
; invoke core::cmp::max
  %_37 = invoke i32 @_ZN4core3cmp3max17h669231be9e138557E(i32 %_38, i32 %_39)
          to label %bb15 unwind label %cleanup3

panic6:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_63b7b29534e9ac5e19639a4bd51f4586) #23
          to label %unreachable unwind label %cleanup3

bb15:                                             ; preds = %bb14
  store i32 %_37, ptr %result, align 4
  br label %bb7

terminate:                                        ; preds = %bb23, %bb22
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb24:                                             ; preds = %bb23
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds i8, ptr %2, i64 8
  %24 = load i32, ptr %23, align 8
  %25 = insertvalue { ptr, i32 } poison, ptr %22, 0
  %26 = insertvalue { ptr, i32 } %25, i32 %24, 1
  resume { ptr, i32 } %26
}
