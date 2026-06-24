define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_24 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %max_end = alloca [4 x i8], align 4
  %max_sum = alloca [4 x i8], align 4
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_4 = icmp sgt i32 %k, %n
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds nuw float, ptr %arr, i64 0
  %3 = load float, ptr %2, align 4
  store float %3, ptr %sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h55db6252e8e4e4b8E"(i32 1, i32 %k) #20
  %_8.0 = extractvalue { i32, i32 } %4, 0
  %_8.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_8.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %5, align 4
  br label %bb5

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb23

bb5:                                              ; preds = %bb10, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h136a352dde763ee8E"(ptr align 4 %iter) #20
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_11, align 4
  %9 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_11, align 4
  %11 = getelementptr inbounds i8, ptr %_11, i64 4
  %12 = load i32, ptr %11, align 4
  %_13 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_13 to i1
  br i1 %13, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %14 = getelementptr inbounds i8, ptr %_11, i64 4
  %i7 = load i32, ptr %14, align 4
  %_16 = sext i32 %i7 to i64
  %_17 = icmp ult i64 %_16, 2
  br i1 %_17, label %bb10, label %panic8

bb9:                                              ; preds = %bb5
  %15 = load float, ptr %sum, align 4
  store float %15, ptr %max_sum, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 1)
  %_20.0 = extractvalue { i32, i1 } %16, 0
  %_20.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_20.1, label %panic, label %bb11

bb11:                                             ; preds = %bb9
  store i32 %_20.0, ptr %max_end, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h55db6252e8e4e4b8E"(i32 %k, i32 %n) #20
  %_21.0 = extractvalue { i32, i32 } %17, 0
  %_21.1 = extractvalue { i32, i32 } %17, 1
  store i32 %_21.0, ptr %iter1, align 4
  %18 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_21.1, ptr %18, align 4
  br label %bb13

panic:                                            ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9617de922601ea5616d08f4833c8d7c8) #22
  unreachable

bb13:                                             ; preds = %bb20, %bb19, %bb11
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %19 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h136a352dde763ee8E"(ptr align 4 %iter1) #20
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  store i32 %20, ptr %_24, align 4
  %22 = getelementptr inbounds i8, ptr %_24, i64 4
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %_24, align 4
  %24 = getelementptr inbounds i8, ptr %_24, i64 4
  %25 = load i32, ptr %24, align 4
  %_26 = zext i32 %23 to i64
  %26 = trunc nuw i64 %_26 to i1
  br i1 %26, label %bb15, label %bb16

bb15:                                             ; preds = %bb13
  %27 = getelementptr inbounds i8, ptr %_24, i64 4
  %i = load i32, ptr %27, align 4
  %_30 = sext i32 %i to i64
  %_31 = icmp ult i64 %_30, 2
  br i1 %_31, label %bb17, label %panic4

bb16:                                             ; preds = %bb13
  %_42 = load i32, ptr %max_end, align 4
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_42, i32 %k)
  %_43.0 = extractvalue { i32, i1 } %28, 0
  %_43.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_43.1, label %panic2, label %bb21

bb21:                                             ; preds = %bb16
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_43.0, i32 1)
  %_44.0 = extractvalue { i32, i1 } %29, 0
  %_44.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_44.1, label %panic3, label %bb22

panic2:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_578c77fd5a75f8d394040f310498a790) #22
  unreachable

bb22:                                             ; preds = %bb21
  store i32 %_44.0, ptr %_0, align 4
  br label %bb23

panic3:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_578c77fd5a75f8d394040f310498a790) #22
  unreachable

bb23:                                             ; preds = %bb1, %bb22
  %30 = load i32, ptr %_0, align 4
  ret i32 %30

bb17:                                             ; preds = %bb15
  %31 = getelementptr inbounds nuw float, ptr %arr, i64 %_30
  %_29 = load float, ptr %31, align 4
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %k)
  %_35.0 = extractvalue { i32, i1 } %32, 0
  %_35.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_35.1, label %panic5, label %bb18

panic4:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_30, i64 2, ptr align 8 @alloc_62a21c41ce995021be5d7ae88eb2b2bc) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_33 = sext i32 %_35.0 to i64
  %_36 = icmp ult i64 %_33, 2
  br i1 %_36, label %bb19, label %panic6

panic5:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cdda9482f8c200f86ef779e6aa0e8aea) #22
  unreachable

bb19:                                             ; preds = %bb18
  %33 = getelementptr inbounds nuw float, ptr %arr, i64 %_33
  %_32 = load float, ptr %33, align 4
  %_28 = fsub float %_29, %_32
  %34 = load float, ptr %sum, align 4
  %35 = fadd float %34, %_28
  store float %35, ptr %sum, align 4
  %_38 = load float, ptr %sum, align 4
  %_39 = load float, ptr %max_sum, align 4
  %_37 = fcmp ogt float %_38, %_39
  br i1 %_37, label %bb20, label %bb13

panic6:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_33, i64 2, ptr align 8 @alloc_9a38b4b52e50d81fdd26e49fef928777) #22
  unreachable

bb20:                                             ; preds = %bb19
  %_40 = load float, ptr %sum, align 4
  store float %_40, ptr %max_sum, align 4
  store i32 %i, ptr %max_end, align 4
  br label %bb13

bb10:                                             ; preds = %bb8
  %36 = getelementptr inbounds nuw float, ptr %arr, i64 %_16
  %_15 = load float, ptr %36, align 4
  %37 = load float, ptr %sum, align 4
  %38 = fadd float %37, %_15
  store float %38, ptr %sum, align 4
  br label %bb5

panic8:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_69bce646457c5e9b70395143f982dca1) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}
