define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
; call alloc::alloc::exchange_malloc
  %_4 = call ptr @_ZN5alloc5alloc15exchange_malloc17hb04e557082102760E(i64 8, i64 4) #19
  %_53 = ptrtoint ptr %_4 to i64
  %_55 = and i64 %_53, 3
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %bb22, label %panic

bb22:                                             ; preds = %start
  %_58 = ptrtoint ptr %_4 to i64
  %_60 = icmp eq i64 %_58, 0
  %_61 = and i1 %_60, true
  %_62 = xor i1 %_61, true
  br i1 %_62, label %bb23, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64 4, i64 %_53, ptr align 8 @alloc_1d7663b95e536aae57e3e70a44775e14) #18
  unreachable

bb23:                                             ; preds = %bb22
  %1 = getelementptr inbounds nuw i32, ptr %_4, i64 0
  store i32 0, ptr %1, align 4
  %2 = getelementptr inbounds nuw i32, ptr %_4, i64 1
  store i32 1, ptr %2, align 4
; call alloc::slice::<impl [T]>::into_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17hffb440e6905e48ceE"(ptr sret([24 x i8]) align 8 %dp, ptr align 4 %_4, i64 2) #19
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h975429fb9dfd8df2E"(ptr sret([12 x i8]) align 4 %_7, i32 2, i32 %n)
          to label %bb3 unwind label %cleanup

panic1:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8 @alloc_1d7663b95e536aae57e3e70a44775e14) #18
  unreachable

bb20:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he4f936260bcd5e4dE"(ptr align 8 %dp) #23
          to label %bb21 unwind label %terminate

cleanup:                                          ; preds = %bb13, %bb12, %bb17, %panic3, %bb15, %bb14, %panic2, %bb9, %bb5, %bb3, %bb23
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb20

bb3:                                              ; preds = %bb23
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbe64fe7dd8c0b0eaE"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb24, %bb25, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h25089599ff36279dE"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_9, align 4
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_9, align 4
  %12 = getelementptr inbounds i8, ptr %_9, i64 4
  %13 = load i32, ptr %12, align 4
  %_11 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_11 to i1
  br i1 %14, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %15 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %15, align 4
  br label %bb10

bb9:                                              ; preds = %bb6
  %_47 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE"(ptr align 8 %dp, i64 %_47, ptr align 8 @alloc_2f41ec99b906a95f9058e1b844b8e870)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb9
  %_0 = load i32, ptr %_45, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he4f936260bcd5e4dE"(ptr align 8 %dp)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_17 = icmp eq i32 %i, -2147483648
  %_18 = and i1 false, %_17
  br i1 %_18, label %panic2, label %bb11

bb11:                                             ; preds = %bb10
  %_14 = srem i32 %i, 2
  %_13 = icmp eq i32 %_14, 0
  br i1 %_13, label %bb12, label %bb14

panic2:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b67bfa6032fa78ee4b4b24282a00dfc6) #25
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2
  unreachable

bb14:                                             ; preds = %bb11
  %_36 = sitofp i32 %i to float
  %_35 = fdiv float %_36, 2.000000e+00
  %_34 = fsub float %_35, 1.000000e+00
  %_33 = call i64 @llvm.fptoui.sat.i64.f32(float %_34)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_31 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE"(ptr align 8 %dp, i64 %_33, ptr align 8 @alloc_c301f9b6f03be3d4ffeb15e607c0fb6e)
          to label %bb15 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_26 = sitofp i32 %i to float
  %_25 = fdiv float %_26, 2.000000e+00
  %_24 = call i64 @llvm.fptoui.sat.i64.f32(float %_25)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_22 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE"(ptr align 8 %dp, i64 %_24, ptr align 8 @alloc_2382a59604f45caf8e93f98b255a9ee0)
          to label %bb13 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_30 = load i32, ptr %_31, align 4
  %_43 = sitofp i32 %i to float
  %_42 = fdiv float %_43, 2.000000e+00
  %_41 = fadd float %_42, 1.000000e+00
  %_40 = call i64 @llvm.fptoui.sat.i64.f32(float %_41)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE"(ptr align 8 %dp, i64 %_40, ptr align 8 @alloc_71493d6e530f88bf9949cac6ee384d8c)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_37 = load i32, ptr %_38, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_30, i32 %_37)
  %_44.0 = extractvalue { i32, i1 } %16, 0
  %_44.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_44.1, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h98cd5dc560f2002bE"(ptr align 8 %dp, i32 %_44.0)
          to label %bb25 unwind label %cleanup

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_db6165343e4a73888c90cc296562d6f2) #25
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb17
  br label %bb5

bb13:                                             ; preds = %bb12
  %_21 = load i32, ptr %_22, align 4
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h98cd5dc560f2002bE"(ptr align 8 %dp, i32 %_21)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb13
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb20
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #22
  unreachable

bb21:                                             ; preds = %bb20
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 8
  %21 = insertvalue { ptr, i32 } poison, ptr %18, 0
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1
  resume { ptr, i32 } %22
}
