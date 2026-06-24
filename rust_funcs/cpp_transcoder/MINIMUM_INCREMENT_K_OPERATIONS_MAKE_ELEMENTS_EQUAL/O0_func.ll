define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %self.i = alloca [8 x i8], align 8
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call core::slice::<impl [T]>::iter
  %2 = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hf758a6a373e998c4E"(ptr align 4 %arr, i64 2) #20
  %_7.0 = extractvalue { ptr, ptr } %2, 0
  %_7.1 = extractvalue { ptr, ptr } %2, 1
; call core::iter::traits::iterator::Iterator::max
  %_6 = call align 4 ptr @_ZN4core4iter6traits8iterator8Iterator3max17h094493f2990d1dffE(ptr %_7.0, ptr %_7.1) #20
  store ptr %_6, ptr %self.i, align 8
  %3 = load ptr, ptr %self.i, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq i64 %4, 0
  %_2.i = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_2.i to i1
  br i1 %6, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbc308d5337632061E.exit", label %bb2.i

bb2.i:                                            ; preds = %start
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_874197cc71f4ed67f82ad682bdae3a60) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hbc308d5337632061E.exit": ; preds = %start
  %val.i = load ptr, ptr %self.i, align 8
  %max = load i32, ptr %val.i, align 4
  store i32 0, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc8135694cc6e1747E"(i32 0, i32 %n) #20
  %_11.0 = extractvalue { i32, i32 } %7, 0
  %_11.1 = extractvalue { i32, i32 } %7, 1
  store i32 %_11.0, ptr %iter, align 4
  %8 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_11.1, ptr %8, align 4
  br label %bb5

bb5:                                              ; preds = %bb20, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbc308d5337632061E.exit"
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbb0dbc1e0536f20eE"(ptr align 4 %iter) #20
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_14, align 4
  %12 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_14, align 4
  %14 = getelementptr inbounds i8, ptr %_14, i64 4
  %15 = load i32, ptr %14, align 4
  %_16 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_16 to i1
  br i1 %16, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %17 = getelementptr inbounds i8, ptr %_14, i64 4
  %i = load i32, ptr %17, align 4
  %_22 = sext i32 %i to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb10, label %panic

bb9:                                              ; preds = %bb5
  %18 = load i32, ptr %res, align 4
  store i32 %18, ptr %_0, align 4
  br label %bb21

bb21:                                             ; preds = %bb14, %bb9
  %19 = load i32, ptr %_0, align 4
  ret i32 %19

bb10:                                             ; preds = %bb8
  %20 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %_21 = load i32, ptr %20, align 4
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %max, i32 %_21)
  %_24.0 = extractvalue { i32, i1 } %21, 0
  %_24.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_24.1, label %panic1, label %bb11

panic:                                            ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_52c021ca18c95151b1c319f51ebbff73) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_25 = icmp eq i32 %k, 0
  br i1 %_25, label %panic2, label %bb12

panic1:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_586f6197df1178a3a993cec0239467b6) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_26 = icmp eq i32 %k, -1
  %_27 = icmp eq i32 %_24.0, -2147483648
  %_28 = and i1 %_26, %_27
  br i1 %_28, label %panic3, label %bb13

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_586f6197df1178a3a993cec0239467b6) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_19 = srem i32 %_24.0, %k
  %_18 = icmp ne i32 %_19, 0
  br i1 %_18, label %bb14, label %bb15

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_586f6197df1178a3a993cec0239467b6) #22
  unreachable

bb15:                                             ; preds = %bb13
  %_32 = sext i32 %i to i64
  %_33 = icmp ult i64 %_32, 2
  br i1 %_33, label %bb16, label %panic4

bb14:                                             ; preds = %bb13
  store i32 -1, ptr %_0, align 4
  br label %bb21

bb16:                                             ; preds = %bb15
  %22 = getelementptr inbounds nuw i32, ptr %arr, i64 %_32
  %_31 = load i32, ptr %22, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %max, i32 %_31)
  %_34.0 = extractvalue { i32, i1 } %23, 0
  %_34.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_34.1, label %panic5, label %bb17

panic4:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 2, ptr align 8 @alloc_b1cdd2d7712cc513e21aa579bf9f19bb) #22
  unreachable

bb17:                                             ; preds = %bb16
  %_35 = icmp eq i32 %k, 0
  br i1 %_35, label %panic6, label %bb18

panic5:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_40b82c2d8c7fe82e7f07e86bbdfaa68d) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_36 = icmp eq i32 %k, -1
  %_37 = icmp eq i32 %_34.0, -2147483648
  %_38 = and i1 %_36, %_37
  br i1 %_38, label %panic7, label %bb19

panic6:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_40b82c2d8c7fe82e7f07e86bbdfaa68d) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_29 = sdiv i32 %_34.0, %k
  %24 = load i32, ptr %res, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 %_29)
  %_39.0 = extractvalue { i32, i1 } %25, 0
  %_39.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_39.1, label %panic8, label %bb20

panic7:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_40b82c2d8c7fe82e7f07e86bbdfaa68d) #22
  unreachable

bb20:                                             ; preds = %bb19
  store i32 %_39.0, ptr %res, align 4
  br label %bb5

panic8:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_820013bbe2512bc5518fc46da0eb6f52) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}
