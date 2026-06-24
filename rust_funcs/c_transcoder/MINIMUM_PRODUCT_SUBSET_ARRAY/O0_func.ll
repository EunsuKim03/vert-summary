define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %prod = alloca [4 x i8], align 4
  %count_zero = alloca [4 x i8], align 4
  %count_neg = alloca [4 x i8], align 4
  %min_pos = alloca [4 x i8], align 4
  %max_neg = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb1, label %bb3

bb3:                                              ; preds = %start
  store i32 -2147483648, ptr %max_neg, align 4
  store i32 2147483647, ptr %min_pos, align 4
  store i32 0, ptr %count_neg, align 4
  store i32 0, ptr %count_zero, align 4
  store i32 1, ptr %prod, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6f1d33f6b39f9c54E"(i32 0, i32 %n) #20
  %_11.0 = extractvalue { i32, i32 } %2, 0
  %_11.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_11.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_11.1, ptr %3, align 4
  br label %bb5

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds nuw i32, ptr %a, i64 0
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %_0, align 4
  br label %bb40

bb5:                                              ; preds = %bb12, %bb26, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h18e4a0b461bffea1E"(ptr align 4 %iter) #20
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_14, align 4
  %9 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_14, align 4
  %11 = getelementptr inbounds i8, ptr %_14, i64 4
  %12 = load i32, ptr %11, align 4
  %_16 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_16 to i1
  br i1 %13, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %14 = getelementptr inbounds i8, ptr %_14, i64 4
  %i = load i32, ptr %14, align 4
  %_20 = sext i32 %i to i64
  %_21 = icmp ult i64 %_20, 2
  br i1 %_21, label %bb10, label %panic3

bb9:                                              ; preds = %bb5
  %_47 = load i32, ptr %count_zero, align 4
  %_46 = icmp eq i32 %_47, %n
  br i1 %_46, label %bb29, label %bb27

bb27:                                             ; preds = %bb9
  %_49 = load i32, ptr %count_neg, align 4
  %_48 = icmp eq i32 %_49, 0
  br i1 %_48, label %bb28, label %bb30

bb29:                                             ; preds = %bb28, %bb9
  store i32 0, ptr %_0, align 4
  br label %bb40

bb30:                                             ; preds = %bb28, %bb27
  %_53 = load i32, ptr %count_neg, align 4
  %_52 = icmp eq i32 %_53, 0
  br i1 %_52, label %bb31, label %bb32

bb28:                                             ; preds = %bb27
  %_51 = load i32, ptr %count_zero, align 4
  %_50 = icmp sgt i32 %_51, 0
  br i1 %_50, label %bb29, label %bb30

bb32:                                             ; preds = %bb30
  %_56 = load i32, ptr %count_neg, align 4
  %_59 = icmp eq i32 %_56, -2147483648
  %_60 = and i1 false, %_59
  br i1 %_60, label %panic, label %bb34

bb31:                                             ; preds = %bb30
  %15 = load i32, ptr %min_pos, align 4
  store i32 %15, ptr %_0, align 4
  br label %bb40

bb34:                                             ; preds = %bb32
  %_55 = srem i32 %_56, 2
  %_54 = icmp eq i32 %_55, 0
  br i1 %_54, label %bb35, label %bb39

panic:                                            ; preds = %bb32
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_d2f35ec5513a123c04bdd259997b281c) #22
  unreachable

bb39:                                             ; preds = %bb38, %bb35, %bb34
  %16 = load i32, ptr %prod, align 4
  store i32 %16, ptr %_0, align 4
  br label %bb40

bb35:                                             ; preds = %bb34
  %_62 = load i32, ptr %count_neg, align 4
  %_61 = icmp ne i32 %_62, 0
  br i1 %_61, label %bb36, label %bb39

bb36:                                             ; preds = %bb35
  %_63 = load i32, ptr %max_neg, align 4
  %_64 = icmp eq i32 %_63, 0
  br i1 %_64, label %panic1, label %bb37

bb37:                                             ; preds = %bb36
  %_65 = icmp eq i32 %_63, -1
  %17 = load i32, ptr %prod, align 4
  %_66 = icmp eq i32 %17, -2147483648
  %_67 = and i1 %_65, %_66
  br i1 %_67, label %panic2, label %bb38

panic1:                                           ; preds = %bb36
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_eace049ace22d8e0459a4736380199f8) #22
  unreachable

bb38:                                             ; preds = %bb37
  %18 = load i32, ptr %prod, align 4
  %19 = sdiv i32 %18, %_63
  store i32 %19, ptr %prod, align 4
  br label %bb39

panic2:                                           ; preds = %bb37
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_eace049ace22d8e0459a4736380199f8) #22
  unreachable

bb40:                                             ; preds = %bb1, %bb29, %bb31, %bb39
  %20 = load i32, ptr %_0, align 4
  ret i32 %20

bb10:                                             ; preds = %bb8
  %21 = getelementptr inbounds nuw i32, ptr %a, i64 %_20
  %_19 = load i32, ptr %21, align 4
  %_18 = icmp eq i32 %_19, 0
  br i1 %_18, label %bb11, label %bb13

panic3:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 2, ptr align 8 @alloc_59f3e412e4133ac17d04cec109866048) #22
  unreachable

bb13:                                             ; preds = %bb10
  %_25 = sext i32 %i to i64
  %_26 = icmp ult i64 %_25, 2
  br i1 %_26, label %bb14, label %panic4

bb11:                                             ; preds = %bb10
  %22 = load i32, ptr %count_zero, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 1)
  %_22.0 = extractvalue { i32, i1 } %23, 0
  %_22.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_22.1, label %panic11, label %bb12

bb14:                                             ; preds = %bb13
  %24 = getelementptr inbounds nuw i32, ptr %a, i64 %_25
  %_24 = load i32, ptr %24, align 4
  %_23 = icmp slt i32 %_24, 0
  br i1 %_23, label %bb15, label %bb19

panic4:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_525f1c536de3db8aa640497919c043a7) #22
  unreachable

bb19:                                             ; preds = %bb17, %bb14
  %_35 = sext i32 %i to i64
  %_36 = icmp ult i64 %_35, 2
  br i1 %_36, label %bb20, label %panic7

bb15:                                             ; preds = %bb14
  %25 = load i32, ptr %count_neg, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 1)
  %_27.0 = extractvalue { i32, i1 } %26, 0
  %_27.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_27.1, label %panic5, label %bb16

bb16:                                             ; preds = %bb15
  store i32 %_27.0, ptr %count_neg, align 4
  %_29 = load i32, ptr %max_neg, align 4
  %_31 = sext i32 %i to i64
  %_32 = icmp ult i64 %_31, 2
  br i1 %_32, label %bb17, label %panic6

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_aa24097528967ca9e062131895d8832e) #22
  unreachable

bb17:                                             ; preds = %bb16
  %27 = getelementptr inbounds nuw i32, ptr %a, i64 %_31
  %_30 = load i32, ptr %27, align 4
; call core::cmp::Ord::max
  %_28 = call i32 @_ZN4core3cmp3Ord3max17hd00ff283247a808aE(i32 %_29, i32 %_30) #20
  store i32 %_28, ptr %max_neg, align 4
  br label %bb19

panic6:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 2, ptr align 8 @alloc_1f03773e5511740a67dcc12e20e24580) #22
  unreachable

bb20:                                             ; preds = %bb19
  %28 = getelementptr inbounds nuw i32, ptr %a, i64 %_35
  %_34 = load i32, ptr %28, align 4
  %_33 = icmp sgt i32 %_34, 0
  br i1 %_33, label %bb21, label %bb24

panic7:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35, i64 2, ptr align 8 @alloc_9a09f72cb1ef57b53c8ddf2026471aea) #22
  unreachable

bb24:                                             ; preds = %bb22, %bb20
  %_43 = sext i32 %i to i64
  %_44 = icmp ult i64 %_43, 2
  br i1 %_44, label %bb25, label %panic9

bb21:                                             ; preds = %bb20
  %_38 = load i32, ptr %min_pos, align 4
  %_40 = sext i32 %i to i64
  %_41 = icmp ult i64 %_40, 2
  br i1 %_41, label %bb22, label %panic8

bb22:                                             ; preds = %bb21
  %29 = getelementptr inbounds nuw i32, ptr %a, i64 %_40
  %_39 = load i32, ptr %29, align 4
; call core::cmp::Ord::min
  %_37 = call i32 @_ZN4core3cmp3Ord3min17hb273d63691afb69cE(i32 %_38, i32 %_39) #20
  store i32 %_37, ptr %min_pos, align 4
  br label %bb24

panic8:                                           ; preds = %bb21
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_40, i64 2, ptr align 8 @alloc_b8fd05ec93037ee97efa7f94bfd7042f) #22
  unreachable

bb25:                                             ; preds = %bb24
  %30 = getelementptr inbounds nuw i32, ptr %a, i64 %_43
  %_42 = load i32, ptr %30, align 4
  %31 = load i32, ptr %prod, align 4
  %32 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %31, i32 %_42)
  %_45.0 = extractvalue { i32, i1 } %32, 0
  %_45.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_45.1, label %panic10, label %bb26

panic9:                                           ; preds = %bb24
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_43, i64 2, ptr align 8 @alloc_71095b01a403e78061247d6b17188174) #22
  unreachable

bb26:                                             ; preds = %bb25
  store i32 %_45.0, ptr %prod, align 4
  br label %bb5

panic10:                                          ; preds = %bb25
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_ff4fc5665aa842ef38addf34ddf51206) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_22.0, ptr %count_zero, align 4
  br label %bb5

panic11:                                          ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b60b7347fc58ab7904b3443f505d9e53) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}
