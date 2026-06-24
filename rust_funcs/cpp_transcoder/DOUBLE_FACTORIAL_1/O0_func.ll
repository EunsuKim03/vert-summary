define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %_3 = alloca [12 x i8], align 4
  %res = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 1, ptr %res, align 4
  %_8 = uitofp i32 %n to float
  %_7 = fsub float %_8, 2.000000e+00
; call std::f32::<impl f32>::floor
  %_6 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5floor17h4fab14f1b5ae7c4aE"(float %_7) #17
  %_5 = call i32 @llvm.fptoui.sat.i32.f32(float %_6)
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hb76ba9f57f699dd1E"(ptr sret([12 x i8]) align 4 %_4, i32 %_5, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h02e738f2b463f0c3E"(ptr sret([12 x i8]) align 4 %_3, ptr align 4 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_3, i64 12, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb12, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hed7ea1662c13484dE"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_10, align 4
  %3 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_10, align 4
  %5 = getelementptr inbounds i8, ptr %_10, i64 4
  %6 = load i32, ptr %5, align 4
  %_12 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_12 to i1
  br i1 %7, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %8 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %8, align 4
  %_14 = icmp eq i32 %i, 0
  br i1 %_14, label %bb10, label %bb9

bb8:                                              ; preds = %bb4
  %9 = load i32, ptr %res, align 4
  store i32 %9, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb10, %bb8
  %10 = load i32, ptr %_0, align 4
  ret i32 %10

bb9:                                              ; preds = %bb7
  %_15 = icmp eq i32 %i, 1
  br i1 %_15, label %bb10, label %bb11

bb10:                                             ; preds = %bb9, %bb7
  %11 = load i32, ptr %res, align 4
  store i32 %11, ptr %_0, align 4
  br label %bb13

bb11:                                             ; preds = %bb9
  %12 = load i32, ptr %res, align 4
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 %i)
  %_16.0 = extractvalue { i32, i1 } %13, 0
  %_16.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_16.1, label %panic, label %bb12

bb12:                                             ; preds = %bb11
  store i32 %_16.0, ptr %res, align 4
  br label %bb4

panic:                                            ; preds = %bb11
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6b99d153b77e7622e5da94feb3cb095e) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
