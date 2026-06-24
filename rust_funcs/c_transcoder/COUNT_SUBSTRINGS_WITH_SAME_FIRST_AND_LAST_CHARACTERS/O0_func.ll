define i32 @f_gold(ptr align 1 %s.0, i64 %s.1) unnamed_addr #3 {
start:
  %_26 = alloca [16 x i8], align 8
  %_24 = alloca [4 x i8], align 4
  %_22 = alloca [16 x i8], align 8
  %_20 = alloca [4 x i8], align 4
  %_14 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  store i32 0, ptr %result, align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17hd7f3566962ad19dfE"(ptr align 1 %s.0, i64 %s.1) #20
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8cd67896268825f0E"(i64 0, i64 %n) #20
  %_4.0 = extractvalue { i64, i64 } %0, 0
  %_4.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_4.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5182fcda00aa7bfbE"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_7, align 8
  %5 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %4, ptr %5, align 8
  %_9 = load i64, ptr %_7, align 8
  %6 = getelementptr inbounds i8, ptr %_7, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_9 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_7, i64 8
  %i = load i64, ptr %9, align 8
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %10 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8cd67896268825f0E"(i64 %i, i64 %n) #20
  %_11.0 = extractvalue { i64, i64 } %10, 0
  %_11.1 = extractvalue { i64, i64 } %10, 1
  store i64 %_11.0, ptr %iter1, align 8
  %11 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_11.1, ptr %11, align 8
  br label %bb9

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb18, %bb11, %bb6
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %12 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5182fcda00aa7bfbE"(ptr align 8 %iter1) #20
  %13 = extractvalue { i64, i64 } %12, 0
  %14 = extractvalue { i64, i64 } %12, 1
  store i64 %13, ptr %_14, align 8
  %15 = getelementptr inbounds i8, ptr %_14, i64 8
  store i64 %14, ptr %15, align 8
  %_16 = load i64, ptr %_14, align 8
  %16 = getelementptr inbounds i8, ptr %_14, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = trunc nuw i64 %_16 to i1
  br i1 %18, label %bb11, label %bb3

bb11:                                             ; preds = %bb9
  %19 = getelementptr inbounds i8, ptr %_14, i64 8
  %j = load i64, ptr %19, align 8
; call core::str::<impl str>::chars
  %20 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hff0659243ff4fcf9E"(ptr align 1 %s.0, i64 %s.1) #20
  %21 = extractvalue { ptr, ptr } %20, 0
  %22 = extractvalue { ptr, ptr } %20, 1
  store ptr %21, ptr %_22, align 8
  %23 = getelementptr inbounds i8, ptr %_22, i64 8
  store ptr %22, ptr %23, align 8
; call core::iter::traits::iterator::Iterator::nth
  %24 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h9252e5f5fba6e5fbE(ptr align 8 %_22, i64 %i) #20
  store i32 %24, ptr %_20, align 4
; call core::str::<impl str>::chars
  %25 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hff0659243ff4fcf9E"(ptr align 1 %s.0, i64 %s.1) #20
  %26 = extractvalue { ptr, ptr } %25, 0
  %27 = extractvalue { ptr, ptr } %25, 1
  store ptr %26, ptr %_26, align 8
  %28 = getelementptr inbounds i8, ptr %_26, i64 8
  store ptr %27, ptr %28, align 8
; call core::iter::traits::iterator::Iterator::nth
  %29 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h9252e5f5fba6e5fbE(ptr align 8 %_26, i64 %j) #20
  store i32 %29, ptr %_24, align 4
; call <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_18 = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0a7a84d9a5752f3bE"(ptr align 4 %_20, ptr align 4 %_24) #20
  br i1 %_18, label %bb17, label %bb9

bb17:                                             ; preds = %bb11
  %30 = load i32, ptr %result, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 1)
  %_27.0 = extractvalue { i32, i1 } %31, 0
  %_27.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_27.1, label %panic, label %bb18

bb18:                                             ; preds = %bb17
  store i32 %_27.0, ptr %result, align 4
  br label %bb9

panic:                                            ; preds = %bb17
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a8a46123a1ec78070492e659a3250f52) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
