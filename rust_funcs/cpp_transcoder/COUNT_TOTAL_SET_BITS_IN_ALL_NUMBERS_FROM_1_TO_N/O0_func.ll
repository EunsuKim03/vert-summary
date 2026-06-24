define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_17 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_15 = alloca [12 x i8], align 4
  %_14 = alloca [12 x i8], align 4
  %change = alloca [4 x i8], align 4
  %k = alloca [4 x i8], align 4
  %ans = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %ans, align 4
  br label %bb1

bb1:                                              ; preds = %bb17, %start
  %_6 = load i32, ptr %i, align 4
  %_8 = icmp ult i32 %_6, 32
  br i1 %_8, label %bb2, label %panic

bb2:                                              ; preds = %bb1
  %0 = and i32 %_6, 31
  %_5 = shl i32 1, %0
  %_4 = icmp sle i32 %_5, %n
  br i1 %_4, label %bb3, label %bb18

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_bff2dc75620399c3839288ace83ce084) #22
  unreachable

bb18:                                             ; preds = %bb2
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb2
  store i32 0, ptr %k, align 4
  %_11 = load i32, ptr %i, align 4
  %_13 = icmp ult i32 %_11, 32
  br i1 %_13, label %bb4, label %panic1

bb4:                                              ; preds = %bb3
  %1 = and i32 %_11, 31
  %2 = shl i32 1, %1
  store i32 %2, ptr %change, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17he7a0854c87221245E"(ptr sret([12 x i8]) align 4 %_15, i32 0, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8e7fda74707e3d4cE"(ptr sret([12 x i8]) align 4 %_14, ptr align 4 %_15) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_14, i64 12, i1 false)
  br label %bb7

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_1dec3854f298bc2ddd90dcd9d8878b8e) #22
  unreachable

bb7:                                              ; preds = %bb14, %bb16, %bb4
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hf71bceacc4c59a50E"(ptr align 4 %iter) #17
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_17, align 4
  %6 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_17, align 4
  %8 = getelementptr inbounds i8, ptr %_17, i64 4
  %9 = load i32, ptr %8, align 4
  %_19 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_19 to i1
  br i1 %10, label %bb10, label %bb11

bb10:                                             ; preds = %bb7
  %11 = getelementptr inbounds i8, ptr %_17, i64 4
  %j = load i32, ptr %11, align 4
  %_21 = load i32, ptr %k, align 4
  %12 = load i32, ptr %ans, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 %_21)
  %_22.0 = extractvalue { i32, i1 } %13, 0
  %_22.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_22.1, label %panic3, label %bb12

bb11:                                             ; preds = %bb7
  %14 = load i32, ptr %i, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 1)
  %_30.0 = extractvalue { i32, i1 } %15, 0
  %_30.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_30.1, label %panic2, label %bb17

bb17:                                             ; preds = %bb11
  store i32 %_30.0, ptr %i, align 4
  br label %bb1

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f0da96b410c5a9e82feebe28c4cb2931) #22
  unreachable

bb12:                                             ; preds = %bb10
  store i32 %_22.0, ptr %ans, align 4
  %_24 = load i32, ptr %change, align 4
  %_23 = icmp eq i32 %_24, 1
  br i1 %_23, label %bb13, label %bb15

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7587a96cd887d873db00ff43b06b03e2) #22
  unreachable

bb15:                                             ; preds = %bb12
  %16 = load i32, ptr %change, align 4
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %16, i32 1)
  %_29.0 = extractvalue { i32, i1 } %17, 0
  %_29.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_29.1, label %panic4, label %bb16

bb13:                                             ; preds = %bb12
  %_25 = load i32, ptr %k, align 4
  %18 = xor i32 %_25, -1
  store i32 %18, ptr %k, align 4
  %_26 = load i32, ptr %i, align 4
  %_28 = icmp ult i32 %_26, 32
  br i1 %_28, label %bb14, label %panic5

bb16:                                             ; preds = %bb15
  store i32 %_29.0, ptr %change, align 4
  br label %bb7

panic4:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_da399513000c919945acc916ef320d8e) #22
  unreachable

bb14:                                             ; preds = %bb13
  %19 = and i32 %_26, 31
  %20 = shl i32 1, %19
  store i32 %20, ptr %change, align 4
  br label %bb7

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_962a662f864f59a9635f66ad291be7cf) #22
  unreachable

bb9:                                              ; No predecessors!
  unreachable
}
