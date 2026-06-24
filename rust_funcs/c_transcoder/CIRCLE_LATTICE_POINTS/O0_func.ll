define i32 @f_gold(i32 %r) unnamed_addr #3 {
start:
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %result = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp sle i32 %r, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 4, ptr %result, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdfdcb57ac844b749E"(i32 1, i32 %r) #20
  %_4.0 = extractvalue { i32, i32 } %0, 0
  %_4.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_4.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %1, align 4
  br label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb13

bb4:                                              ; preds = %bb12, %bb10, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haec0636445caba7cE"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_7, align 4
  %5 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_7, align 4
  %7 = getelementptr inbounds i8, ptr %_7, i64 4
  %8 = load i32, ptr %7, align 4
  %_9 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_9 to i1
  br i1 %9, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %10 = getelementptr inbounds i8, ptr %_7, i64 4
  %x = load i32, ptr %10, align 4
  %_13 = sitofp i32 %r to float
  %_14 = sitofp i32 %r to float
  %_12 = fmul float %_13, %_14
  %_16 = sitofp i32 %x to float
  %_17 = sitofp i32 %x to float
  %_15 = fmul float %_16, %_17
  %y_square = fsub float %_12, %_15
; call std::f32::<impl f32>::sqrt
  %y = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17he5aebfcec49d92c6E"(float %y_square) #20
  %_21 = call i32 @llvm.fptosi.sat.i32.f32(float %y)
  %_22 = call i32 @llvm.fptosi.sat.i32.f32(float %y)
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_21, i32 %_22)
  %_23.0 = extractvalue { i32, i1 } %11, 0
  %_23.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_23.1, label %panic, label %bb10

bb8:                                              ; preds = %bb4
  %12 = load i32, ptr %result, align 4
  store i32 %12, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb1, %bb8
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb10:                                             ; preds = %bb7
  %_24 = call i32 @llvm.fptosi.sat.i32.f32(float %y_square)
  %_19 = icmp eq i32 %_23.0, %_24
  br i1 %_19, label %bb11, label %bb4

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_dd47e784faae6dd53fc9034314cdac95) #22
  unreachable

bb11:                                             ; preds = %bb10
  %14 = load i32, ptr %result, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 4)
  %_25.0 = extractvalue { i32, i1 } %15, 0
  %_25.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_25.1, label %panic1, label %bb12

bb12:                                             ; preds = %bb11
  store i32 %_25.0, ptr %result, align 4
  br label %bb4

panic1:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_536facb63a75370673180ed8c062350f) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
