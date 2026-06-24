define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %_3 = alloca [12 x i8], align 4
  %s = alloca [4 x i8], align 4
  store i32 0, ptr %s, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9e2eb5b0a2cc9127E"(ptr sret([12 x i8]) align 4 %_4, i32 1, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h151c744c6cb7080dE"(ptr sret([12 x i8]) align 4 %_3, ptr align 4 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_3, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb13, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h666fc806c94141c7E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_6, align 4
  %3 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  %6 = load i32, ptr %5, align 4
  %_8 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_8 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %8, align 4
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i, i32 %i)
  %_12.0 = extractvalue { i32, i1 } %9, 0
  %_12.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_12.1, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %s, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_15.0 = extractvalue { i32, i1 } %10, 0
  %_15.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_15.1, label %panic1, label %bb9

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_4f5827b1de8d8735c25749e89cf8380f) #22
  unreachable

bb9:                                              ; preds = %bb8
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_17.0 = extractvalue { i32, i1 } %11, 0
  %_17.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_17.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a92da8dd37bc0955977ea02074c4a8bb) #22
  unreachable

bb10:                                             ; preds = %bb9
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15.0, i32 %_17.0)
  %_18.0 = extractvalue { i32, i1 } %12, 0
  %_18.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_18.1, label %panic3, label %bb11

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8c23e90164e610a9ea82b7b9b8b3c95c) #22
  unreachable

bb11:                                             ; preds = %bb10
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_12.0, i32 %_18.0)
  %_19.0 = extractvalue { i32, i1 } %13, 0
  %_19.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_19.1, label %panic4, label %bb12

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a92da8dd37bc0955977ea02074c4a8bb) #22
  unreachable

bb12:                                             ; preds = %bb11
  %14 = load i32, ptr %s, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 %_19.0)
  %_20.0 = extractvalue { i32, i1 } %15, 0
  %_20.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_20.1, label %panic5, label %bb13

panic4:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4f5827b1de8d8735c25749e89cf8380f) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %_20.0, ptr %s, align 4
  br label %bb3

panic5:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1309dbe25913a46568c3fbac8213ad32) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
