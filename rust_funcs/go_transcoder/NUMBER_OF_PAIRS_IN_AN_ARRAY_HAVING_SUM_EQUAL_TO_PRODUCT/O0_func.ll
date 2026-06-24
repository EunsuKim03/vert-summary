define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %two = alloca [4 x i8], align 4
  %zero = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %zero, align 4
  store i32 0, ptr %two, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf3c89e15eceedcccE"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb13, %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h26cac7e827d52338E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_8, align 4
  %9 = getelementptr inbounds i8, ptr %_8, i64 4
  %10 = load i32, ptr %9, align 4
  %_10 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_10 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %12, align 4
  %_14 = sext i32 %i to i64
  %_15 = icmp ult i64 %_14, 2
  br i1 %_15, label %bb7, label %panic7

bb6:                                              ; preds = %bb2
  %_24 = load i32, ptr %zero, align 4
  %_26 = load i32, ptr %zero, align 4
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_26, i32 1)
  %_27.0 = extractvalue { i32, i1 } %13, 0
  %_27.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_27.1, label %panic, label %bb14

bb14:                                             ; preds = %bb6
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_24, i32 %_27.0)
  %_28.0 = extractvalue { i32, i1 } %14, 0
  %_28.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_28.1, label %panic1, label %bb15

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e0cf185e89967b4cf10456a8ca983fb3) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_31 = icmp eq i32 %_28.0, -2147483648
  %_32 = and i1 false, %_31
  br i1 %_32, label %panic2, label %bb17

panic1:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_dd19bc21e5b361767ea9e7c2f18aa196) #22
  unreachable

bb17:                                             ; preds = %bb15
  %_22 = sdiv i32 %_28.0, 2
  %_35 = load i32, ptr %two, align 4
  %_37 = load i32, ptr %two, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_37, i32 1)
  %_38.0 = extractvalue { i32, i1 } %15, 0
  %_38.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_38.1, label %panic3, label %bb18

panic2:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_dd19bc21e5b361767ea9e7c2f18aa196) #22
  unreachable

bb18:                                             ; preds = %bb17
  %16 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_35, i32 %_38.0)
  %_39.0 = extractvalue { i32, i1 } %16, 0
  %_39.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_39.1, label %panic4, label %bb19

panic3:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0dc9cb2044cf91143db2001dc671cf8a) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_42 = icmp eq i32 %_39.0, -2147483648
  %_43 = and i1 false, %_42
  br i1 %_43, label %panic5, label %bb21

panic4:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_172ae9a86e0fa52ba68fc6cae091f03b) #22
  unreachable

bb21:                                             ; preds = %bb19
  %_33 = sdiv i32 %_39.0, 2
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_22, i32 %_33)
  %_44.0 = extractvalue { i32, i1 } %17, 0
  %_44.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_44.1, label %panic6, label %bb22

panic5:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_172ae9a86e0fa52ba68fc6cae091f03b) #22
  unreachable

bb22:                                             ; preds = %bb21
  ret i32 %_44.0

panic6:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dd19bc21e5b361767ea9e7c2f18aa196) #22
  unreachable

bb7:                                              ; preds = %bb5
  %18 = getelementptr inbounds nuw i32, ptr %a, i64 %_14
  %_13 = load i32, ptr %18, align 4
  %_12 = icmp eq i32 %_13, 0
  br i1 %_12, label %bb8, label %bb10

panic7:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 2, ptr align 8 @alloc_6879d46556c4f058aff0cb6f75389186) #22
  unreachable

bb10:                                             ; preds = %bb9, %bb7
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb11, label %panic9

bb8:                                              ; preds = %bb7
  %19 = load i32, ptr %zero, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 1)
  %_16.0 = extractvalue { i32, i1 } %20, 0
  %_16.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_16.1, label %panic8, label %bb9

bb9:                                              ; preds = %bb8
  store i32 %_16.0, ptr %zero, align 4
  br label %bb10

panic8:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b7a0ae1616add6948f0c83b018f1ff23) #22
  unreachable

bb11:                                             ; preds = %bb10
  %21 = getelementptr inbounds nuw i32, ptr %a, i64 %_19
  %_18 = load i32, ptr %21, align 4
  %_17 = icmp eq i32 %_18, 2
  br i1 %_17, label %bb12, label %bb2

panic9:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_d568c0fa5e6bc27ec5827331dd9981fa) #22
  unreachable

bb12:                                             ; preds = %bb11
  %22 = load i32, ptr %two, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 1)
  %_21.0 = extractvalue { i32, i1 } %23, 0
  %_21.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_21.1, label %panic10, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_21.0, ptr %two, align 4
  br label %bb2

panic10:                                          ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9964794ad5f35f4dee5177309e54a623) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
