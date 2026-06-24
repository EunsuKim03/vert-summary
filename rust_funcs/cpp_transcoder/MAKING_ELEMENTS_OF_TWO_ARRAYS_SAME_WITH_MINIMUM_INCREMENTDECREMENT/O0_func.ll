define i32 @f_gold(ptr align 4 %a.0, i64 %a.1, ptr align 4 %b.0, i64 %b.1, i32 %n) unnamed_addr #3 {
start:
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E"(ptr align 4 %a.0, i64 %a.1) #20
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE"(ptr align 4 %b.0, i64 %b.1) #20
  store i32 0, ptr %result, align 4
  %_9 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he9c10910982a0541E"(i64 0, i64 %_9) #20
  %_7.0 = extractvalue { i64, i64 } %0, 0
  %_7.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_7.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_7.1, ptr %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb12, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h812c8b3c98349c1bE"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_11, align 8
  %5 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %4, ptr %5, align 8
  %_13 = load i64, ptr %_11, align 8
  %6 = getelementptr inbounds i8, ptr %_11, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_13 to i1
  br i1 %8, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %9 = getelementptr inbounds i8, ptr %_11, i64 8
  %i = load i64, ptr %9, align 8
  %_21 = icmp ult i64 %i, %a.1
  br i1 %_21, label %bb9, label %panic

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %10 = getelementptr inbounds nuw float, ptr %a.0, i64 %i
  %_18 = load float, ptr %10, align 4
  %_25 = icmp ult i64 %i, %b.1
  br i1 %_25, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %a.1, ptr align 8 @alloc_bb80c4294bf98485d1cae0b45be62c99) #22
  unreachable

bb10:                                             ; preds = %bb9
  %11 = getelementptr inbounds nuw float, ptr %b.0, i64 %i
  %_22 = load float, ptr %11, align 4
  %_17 = fsub float %_18, %_22
; call core::f32::<impl f32>::abs
  %_16 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3abs17hf42de01bd06e5ef1E"(float %_17) #20
  %_15 = call i32 @llvm.fptosi.sat.i32.f32(float %_16)
  %12 = load i32, ptr %result, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 %_15)
  %_26.0 = extractvalue { i32, i1 } %13, 0
  %_26.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_26.1, label %panic2, label %bb12

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %b.1, ptr align 8 @alloc_f4ef7df7705ab5192cda3ed35c9cf9c8) #22
  unreachable

bb12:                                             ; preds = %bb10
  store i32 %_26.0, ptr %result, align 4
  br label %bb4

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a605b61035896ceb504758ab168562ee) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
