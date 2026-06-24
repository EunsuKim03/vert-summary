define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %times = alloca [4 x i8], align 4
  %best = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store float 0.000000e+00, ptr %best, align 4
  store i32 0, ptr %times, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3df59a3ee72e8662E"(i32 0, i32 %n) #20
  %_6.0 = extractvalue { i32, i32 } %2, 0
  %_6.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_6.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb13, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h84a9a48fca6cff01E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_9, align 4
  %7 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_9, align 4
  %9 = getelementptr inbounds i8, ptr %_9, i64 4
  %10 = load i32, ptr %9, align 4
  %_11 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_11 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %12, align 4
  %_15 = sext i32 %i to i64
  %_16 = icmp ult i64 %_15, 2
  br i1 %_16, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_26 = load float, ptr %best, align 4
  %13 = call i32 @llvm.fptosi.sat.i32.f32(float %_26)
  store i32 %13, ptr %_0, align 4
  br label %bb15

bb15:                                             ; preds = %bb14, %bb6
  %14 = load i32, ptr %_0, align 4
  ret i32 %14

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds nuw float, ptr %a, i64 %_15
  %_14 = load float, ptr %15, align 4
  %_17 = load float, ptr %best, align 4
  %_13 = fcmp ogt float %_14, %_17
  br i1 %_13, label %bb8, label %bb11

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 2, ptr align 8 @alloc_464df6cbf6850b8b33851421cdde3d88) #22
  unreachable

bb11:                                             ; preds = %bb7
  %16 = load i32, ptr %times, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 1)
  %_22.0 = extractvalue { i32, i1 } %17, 0
  %_22.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_22.1, label %panic1, label %bb12

bb8:                                              ; preds = %bb7
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb9, label %panic2

bb12:                                             ; preds = %bb11
  store i32 %_22.0, ptr %times, align 4
  br label %bb13

panic1:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d5fbcb92e8f36a6feed901233aaedbe8) #22
  unreachable

bb13:                                             ; preds = %bb10, %bb9, %bb12
  %_24 = load i32, ptr %times, align 4
  %_23 = icmp sge i32 %_24, %k
  br i1 %_23, label %bb14, label %bb2

bb9:                                              ; preds = %bb8
  %18 = getelementptr inbounds nuw float, ptr %a, i64 %_19
  %_18 = load float, ptr %18, align 4
  store float %_18, ptr %best, align 4
  %_21 = icmp sgt i32 %i, 0
  br i1 %_21, label %bb10, label %bb13

panic2:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_03a805de4942170a5e3a4acef4ef1d9a) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 1, ptr %times, align 4
  br label %bb13

bb14:                                             ; preds = %bb13
  %_25 = load float, ptr %best, align 4
  %19 = call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  store i32 %19, ptr %_0, align 4
  br label %bb15

bb4:                                              ; No predecessors!
  unreachable
}
