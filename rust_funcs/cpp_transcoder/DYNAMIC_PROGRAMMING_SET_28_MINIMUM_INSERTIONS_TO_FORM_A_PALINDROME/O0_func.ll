define i32 @f_gold(ptr align 8 %str, i32 %l, i32 %h) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_4 = icmp sgt i32 %l, %h
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = icmp eq i32 %l, %h
  br i1 %_5, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 2147483647, ptr %_0, align 4
  br label %bb24

bb4:                                              ; preds = %bb2
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %h, i32 1)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic, label %bb5

bb3:                                              ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb24

bb5:                                              ; preds = %bb4
  %_6 = icmp eq i32 %l, %_8.0
  br i1 %_6, label %bb6, label %bb11

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fadacb4007efe9c7db8421cdf6e9da56) #22
  unreachable

bb11:                                             ; preds = %bb5
  %_19 = sext i32 %l to i64
; call <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_18 = call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E"(ptr align 8 %str, i64 %_19, ptr align 8 @alloc_e8b16e09484438bd1b823d55118aed8e) #20
  %_17 = load i32, ptr %_18, align 4
  %_22 = sext i32 %h to i64
; call <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_21 = call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E"(ptr align 8 %str, i64 %_22, ptr align 8 @alloc_75853844551f76c2b09e1327c677c970) #20
  %_20 = load i32, ptr %_21, align 4
  %_16 = icmp eq i32 %_17, %_20
  br i1 %_16, label %bb14, label %bb17

bb6:                                              ; preds = %bb5
  %_12 = sext i32 %l to i64
; call <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_11 = call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E"(ptr align 8 %str, i64 %_12, ptr align 8 @alloc_c90ae470c4308e16ff141e4b409166ce) #20
  %_10 = load i32, ptr %_11, align 4
  %_15 = sext i32 %h to i64
; call <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_14 = call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he1340978be29d2e9E"(ptr align 8 %str, i64 %_15, ptr align 8 @alloc_1fc359f214ee9a19fb274031e82cd788) #20
  %_13 = load i32, ptr %_14, align 4
  %_9 = icmp eq i32 %_10, %_13
  br i1 %_9, label %bb9, label %bb10

bb17:                                             ; preds = %bb11
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %h, i32 1)
  %_30.0 = extractvalue { i32, i1 } %1, 0
  %_30.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_30.1, label %panic1, label %bb18

bb14:                                             ; preds = %bb11
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l, i32 1)
  %_24.0 = extractvalue { i32, i1 } %2, 0
  %_24.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_24.1, label %panic4, label %bb15

bb18:                                             ; preds = %bb17
  %_28 = call i32 @f_gold(ptr align 8 %str, i32 %l, i32 %_30.0)
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l, i32 1)
  %_33.0 = extractvalue { i32, i1 } %3, 0
  %_33.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_33.1, label %panic2, label %bb20

panic1:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_99227e3168770a7247346dae991a6f4f) #22
  unreachable

bb20:                                             ; preds = %bb18
  %_31 = call i32 @f_gold(ptr align 8 %str, i32 %_33.0, i32 %h)
  %_27 = call i32 @min(i32 %_28, i32 %_31)
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_27, i32 1)
  %_34.0 = extractvalue { i32, i1 } %4, 0
  %_34.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_34.1, label %panic3, label %bb23

panic2:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0450db6ff65ff767495037859b1233f2) #22
  unreachable

bb23:                                             ; preds = %bb20
  store i32 %_34.0, ptr %_0, align 4
  br label %bb24

panic3:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c7d756cf8e8c11c840d258c42d141871) #22
  unreachable

bb24:                                             ; preds = %bb1, %bb3, %bb9, %bb10, %bb16, %bb23
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

bb15:                                             ; preds = %bb14
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %h, i32 1)
  %_26.0 = extractvalue { i32, i1 } %6, 0
  %_26.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_26.1, label %panic5, label %bb16

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_100d161f084348cca84c3794ed63ff5e) #22
  unreachable

bb16:                                             ; preds = %bb15
  %7 = call i32 @f_gold(ptr align 8 %str, i32 %_24.0, i32 %_26.0)
  store i32 %7, ptr %_0, align 4
  br label %bb24

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6677e2a92f4ad6286b292573d2041765) #22
  unreachable

bb10:                                             ; preds = %bb6
  store i32 1, ptr %_0, align 4
  br label %bb24

bb9:                                              ; preds = %bb6
  store i32 0, ptr %_0, align 4
  br label %bb24
}
