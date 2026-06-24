define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %cnt = alloca [4 x i8], align 4
  store i32 0, ptr %cnt, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h903a3cd4724295a0E"(ptr sret([12 x i8]) align 4 %_5, i32 %a, i32 %b) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hef0195cd6f9895e9E"(ptr sret([12 x i8]) align 4 %_4, ptr align 4 %_5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_4, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h70910cda97bca643E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_7, align 4
  %3 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_7, align 4
  %5 = getelementptr inbounds i8, ptr %_7, i64 4
  %6 = load i32, ptr %5, align 4
  %_9 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_9 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %8, align 4
  %_15 = sitofp i32 %i to float
; call std::f32::<impl f32>::sqrt
  %_14 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h7ffc053ebf0cc3edE"(float %_15) #17
  %_13 = call i32 @llvm.fptosi.sat.i32.f32(float %_14)
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h903a3cd4724295a0E"(ptr sret([12 x i8]) align 4 %_12, i32 1, i32 %_13) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hef0195cd6f9895e9E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_11, i64 12, i1 false)
  br label %bb11

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %cnt, align 4
  ret i32 %_0

bb11:                                             ; preds = %bb16, %bb14, %bb6
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %9 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h70910cda97bca643E"(ptr align 4 %iter1) #17
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_17, align 4
  %12 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_17, align 4
  %14 = getelementptr inbounds i8, ptr %_17, i64 4
  %15 = load i32, ptr %14, align 4
  %_19 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_19 to i1
  br i1 %16, label %bb13, label %bb3

bb13:                                             ; preds = %bb11
  %17 = getelementptr inbounds i8, ptr %_17, i64 4
  %j = load i32, ptr %17, align 4
  %18 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %j, i32 %j)
  %_23.0 = extractvalue { i32, i1 } %18, 0
  %_23.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_23.1, label %panic, label %bb14

bb14:                                             ; preds = %bb13
  %_21 = icmp eq i32 %_23.0, %i
  br i1 %_21, label %bb15, label %bb11

panic:                                            ; preds = %bb13
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_0265efdda2d5c37de695e2ccbd3b41bc) #22
  unreachable

bb15:                                             ; preds = %bb14
  %19 = load i32, ptr %cnt, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 1)
  %_24.0 = extractvalue { i32, i1 } %20, 0
  %_24.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_24.1, label %panic2, label %bb16

bb16:                                             ; preds = %bb15
  store i32 %_24.0, ptr %cnt, align 4
  br label %bb11

panic2:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d0d19d7f5e6c90f6824eb2b42fc0167a) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
