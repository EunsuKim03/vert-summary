define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %digits = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp slt i32 %n, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_3 = icmp sle i32 %n, 1
  br i1 %_3, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb15

bb4:                                              ; preds = %bb2
  store float 0.000000e+00, ptr %digits, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h95e6cbf721ba4908E"(ptr sret([12 x i8]) align 4 %_6, i32 2, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4e1a72c58f45bd87E"(ptr sret([12 x i8]) align 4 %_5, ptr align 4 %_6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_5, i64 12, i1 false)
  br label %bb7

bb3:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb15

bb7:                                              ; preds = %bb10, %bb4
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha060c5f48e61b770E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_8, align 4
  %3 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_8, align 4
  %5 = getelementptr inbounds i8, ptr %_8, i64 4
  %6 = load i32, ptr %5, align 4
  %_10 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_10 to i1
  br i1 %7, label %bb10, label %bb11

bb10:                                             ; preds = %bb7
  %8 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %8, align 4
  %_13 = sitofp i32 %i to float
; call std::f32::<impl f32>::log10
  %_12 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5log1017h551cc9cfed2c241eE"(float %_13) #17
  %9 = load float, ptr %digits, align 4
  %10 = fadd float %9, %_12
  store float %10, ptr %digits, align 4
  br label %bb7

bb11:                                             ; preds = %bb7
  %_16 = load float, ptr %digits, align 4
; call std::f32::<impl f32>::floor
  %_15 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$5floor17h8a14038a708d49adE"(float %_16) #17
  %_14 = call i32 @llvm.fptosi.sat.i32.f32(float %_15)
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_14, i32 1)
  %_17.0 = extractvalue { i32, i1 } %11, 0
  %_17.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_17.1, label %panic, label %bb14

bb14:                                             ; preds = %bb11
  store i32 %_17.0, ptr %_0, align 4
  br label %bb15

panic:                                            ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0aa0520eeae5ddac4cff509c80ede917) #22
  unreachable

bb15:                                             ; preds = %bb1, %bb3, %bb14
  %12 = load i32, ptr %_0, align 4
  ret i32 %12

bb9:                                              ; No predecessors!
  unreachable
}
