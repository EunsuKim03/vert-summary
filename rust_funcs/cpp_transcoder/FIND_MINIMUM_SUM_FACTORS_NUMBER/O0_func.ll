define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %_3 = alloca [12 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %num = alloca [4 x i8], align 4
  store i32 %0, ptr %num, align 4
  store i32 0, ptr %sum, align 4
  %_8 = load i32, ptr %num, align 4
  %_7 = sitofp i32 %_8 to float
; call std::f32::<impl f32>::sqrt
  %_6 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h28c7ce4f37960f4dE"(float %_7) #17
  %_5 = call i32 @llvm.fptosi.sat.i32.f32(float %_6)
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h855049bafe601620E"(ptr sret([12 x i8]) align 4 %_4, i32 2, i32 %_5) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h53d395f548297642E"(ptr sret([12 x i8]) align 4 %_3, ptr align 4 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_3, i64 12, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %1 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h19bd1d16412371acE"(ptr align 4 %iter) #17
  %2 = extractvalue { i32, i32 } %1, 0
  %3 = extractvalue { i32, i32 } %1, 1
  store i32 %2, ptr %_10, align 4
  %4 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %_10, align 4
  %6 = getelementptr inbounds i8, ptr %_10, i64 4
  %7 = load i32, ptr %6, align 4
  %_12 = zext i32 %5 to i64
  %8 = trunc nuw i64 %_12 to i1
  br i1 %8, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %9 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %9, align 4
  br label %bb9

bb8:                                              ; preds = %bb4
  %_26 = load i32, ptr %num, align 4
  %10 = load i32, ptr %sum, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 %_26)
  %_27.0 = extractvalue { i32, i1 } %11, 0
  %_27.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_27.1, label %panic, label %bb16

bb16:                                             ; preds = %bb8
  store i32 %_27.0, ptr %sum, align 4
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c7400c7e959bde80cd7dde3d377ae2a7) #22
  unreachable

bb9:                                              ; preds = %bb15, %bb7
  %_16 = load i32, ptr %num, align 4
  %_17 = icmp eq i32 %i, 0
  br i1 %_17, label %panic1, label %bb10

bb10:                                             ; preds = %bb9
  %_18 = icmp eq i32 %i, -1
  %_19 = icmp eq i32 %_16, -2147483648
  %_20 = and i1 %_18, %_19
  br i1 %_20, label %panic2, label %bb11

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_a103b26dd307bfc69ba9c6d47a4e6ffb) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_15 = srem i32 %_16, %i
  %_14 = icmp eq i32 %_15, 0
  br i1 %_14, label %bb12, label %bb4

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_a103b26dd307bfc69ba9c6d47a4e6ffb) #22
  unreachable

bb12:                                             ; preds = %bb11
  %12 = load i32, ptr %sum, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 %i)
  %_21.0 = extractvalue { i32, i1 } %13, 0
  %_21.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_21.1, label %panic3, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_21.0, ptr %sum, align 4
  %_22 = icmp eq i32 %i, 0
  br i1 %_22, label %panic4, label %bb14

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f4ef20007a98cb459c3b6583b3771684) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_23 = icmp eq i32 %i, -1
  %14 = load i32, ptr %num, align 4
  %_24 = icmp eq i32 %14, -2147483648
  %_25 = and i1 %_23, %_24
  br i1 %_25, label %panic5, label %bb15

panic4:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_9d489745cbc22a20ae24c2933ab7817c) #22
  unreachable

bb15:                                             ; preds = %bb14
  %15 = load i32, ptr %num, align 4
  %16 = sdiv i32 %15, %i
  store i32 %16, ptr %num, align 4
  br label %bb9

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_9d489745cbc22a20ae24c2933ab7817c) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
