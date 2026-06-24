define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_13 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13ee9880ea3d7e74E"(i32 0, i32 %n) #20
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_3.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5a57efc9278ebbc4E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_6, align 4
  %7 = getelementptr inbounds i8, ptr %_6, i64 4
  %8 = load i32, ptr %7, align 4
  %_8 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_8 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_6, i64 4
  %x = load i32, ptr %10, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13ee9880ea3d7e74E"(i32 0, i32 %n) #20
  %_10.0 = extractvalue { i32, i32 } %11, 0
  %_10.1 = extractvalue { i32, i32 } %11, 1
  store i32 %_10.0, ptr %iter1, align 4
  %12 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_10.1, ptr %12, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb12, %bb10, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %13 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5a57efc9278ebbc4E"(ptr align 4 %iter1) #20
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  store i32 %14, ptr %_13, align 4
  %16 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %_13, align 4
  %18 = getelementptr inbounds i8, ptr %_13, i64 4
  %19 = load i32, ptr %18, align 4
  %_15 = zext i32 %17 to i64
  %20 = trunc nuw i64 %_15 to i1
  br i1 %20, label %bb10, label %bb2

bb10:                                             ; preds = %bb8
  %21 = getelementptr inbounds i8, ptr %_13, i64 4
  %y = load i32, ptr %21, align 4
  %_20 = sitofp i32 %x to float
  %_21 = sitofp i32 %x to float
  %_19 = fmul float %_20, %_21
  %_23 = sitofp i32 %y to float
  %_24 = sitofp i32 %y to float
  %_22 = fmul float %_23, %_24
  %_18 = fadd float %_19, %_22
  %_25 = sitofp i32 %n to float
  %_17 = fcmp olt float %_18, %_25
  br i1 %_17, label %bb11, label %bb8

bb11:                                             ; preds = %bb10
  %22 = load i32, ptr %res, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 1)
  %_26.0 = extractvalue { i32, i1 } %23, 0
  %_26.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_26.1, label %panic, label %bb12

bb12:                                             ; preds = %bb11
  store i32 %_26.0, ptr %res, align 4
  br label %bb8

panic:                                            ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1e848f721ad024932493a6639bb7fc9c) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
