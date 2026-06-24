define i32 @f_gold(ptr align 4 %str.0, i64 %str.1, i32 %n) unnamed_addr #3 {
start:
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %c_index = alloca [4 x i8], align 4
  %b_index = alloca [4 x i8], align 4
  %a_index = alloca [4 x i8], align 4
  %ans = alloca [4 x i8], align 4
  %_5 = sitofp i32 %n to float
  %_7 = sitofp i32 %n to float
  %_6 = fadd float %_7, 1.000000e+00
  %_4 = fmul float %_5, %_6
  %0 = fdiv float %_4, 2.000000e+00
  store float %0, ptr %ans, align 4
  store i32 0, ptr %a_index, align 4
  store i32 0, ptr %b_index, align 4
  store i32 0, ptr %c_index, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9d066455b78c61aaE"(i32 0, i32 %n) #20
  %_11.0 = extractvalue { i32, i32 } %1, 0
  %_11.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_11.0, ptr %iter, align 4
  %2 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_11.1, ptr %2, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %bb14, %bb17, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0fbfc4b7f7835f51E"(ptr align 4 %iter) #20
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_14, align 4
  %6 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_14, align 4
  %8 = getelementptr inbounds i8, ptr %_14, i64 4
  %9 = load i32, ptr %8, align 4
  %_16 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_16 to i1
  br i1 %10, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %11 = getelementptr inbounds i8, ptr %_14, i64 4
  %i = load i32, ptr %11, align 4
  %_20 = sext i32 %i to i64
  %_23 = icmp ult i64 %_20, %str.1
  br i1 %_23, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_48 = load float, ptr %ans, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_48)
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %12 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_20
  %_19 = load i32, ptr %12, align 4
  %_18 = icmp eq i32 %_19, 97
  br i1 %_18, label %bb8, label %bb11

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 %str.1, ptr align 8 @alloc_a0377b3051ebee8df156892e4e61526e) #22
  unreachable

bb11:                                             ; preds = %bb7
  %_32 = sext i32 %i to i64
  %_35 = icmp ult i64 %_32, %str.1
  br i1 %_35, label %bb12, label %panic1

bb8:                                              ; preds = %bb7
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_24.0 = extractvalue { i32, i1 } %13, 0
  %_24.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_24.1, label %panic4, label %bb9

bb12:                                             ; preds = %bb11
  %14 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_32
  %_31 = load i32, ptr %14, align 4
  %_30 = icmp eq i32 %_31, 98
  br i1 %_30, label %bb13, label %bb16

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 %str.1, ptr align 8 @alloc_ab8792ed3437a46ef4c5dac15af69215) #22
  unreachable

bb16:                                             ; preds = %bb12
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_42.0 = extractvalue { i32, i1 } %15, 0
  %_42.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_42.1, label %panic2, label %bb17

bb13:                                             ; preds = %bb12
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_36.0 = extractvalue { i32, i1 } %16, 0
  %_36.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_36.1, label %panic3, label %bb14

bb17:                                             ; preds = %bb16
  store i32 %_42.0, ptr %c_index, align 4
  %_45 = load i32, ptr %a_index, align 4
  %_44 = sitofp i32 %_45 to float
  %_47 = load i32, ptr %b_index, align 4
  %_46 = sitofp i32 %_47 to float
; call core::f32::<impl f32>::min
  %_43 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3min17hab6efa4f2f554a61E"(float %_44, float %_46) #20
  %17 = load float, ptr %ans, align 4
  %18 = fsub float %17, %_43
  store float %18, ptr %ans, align 4
  br label %bb2

panic2:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7b284c034abfc52c474f123f49028bfc) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_36.0, ptr %b_index, align 4
  %_39 = load i32, ptr %a_index, align 4
  %_38 = sitofp i32 %_39 to float
  %_41 = load i32, ptr %c_index, align 4
  %_40 = sitofp i32 %_41 to float
; call core::f32::<impl f32>::min
  %_37 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3min17hab6efa4f2f554a61E"(float %_38, float %_40) #20
  %19 = load float, ptr %ans, align 4
  %20 = fsub float %19, %_37
  store float %20, ptr %ans, align 4
  br label %bb2

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1b276de4c04785f952214812e8dfce54) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_24.0, ptr %a_index, align 4
  %_27 = load i32, ptr %b_index, align 4
  %_26 = sitofp i32 %_27 to float
  %_29 = load i32, ptr %c_index, align 4
  %_28 = sitofp i32 %_29 to float
; call core::f32::<impl f32>::min
  %_25 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3min17hab6efa4f2f554a61E"(float %_26, float %_28) #20
  %21 = load float, ptr %ans, align 4
  %22 = fsub float %21, %_25
  store float %22, ptr %ans, align 4
  br label %bb2

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a7666e6b1b57f965c0ca8a03b6f5e102) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
