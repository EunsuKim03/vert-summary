define i32 @f_gold(ptr align 1 %str.0, i64 %str.1, i32 %k) unnamed_addr #3 {
start:
  %_16 = alloca [16 x i8], align 8
  %_14 = alloca [4 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %c = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h001712601ba9b7c8E"(ptr align 1 %str.0, i64 %str.1) #20
  store i32 0, ptr %c, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h64c7268d38331c98E"(i32 0, i32 %k) #20
  %_5.0 = extractvalue { i32, i32 } %0, 0
  %_5.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_5.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %1, align 4
  br label %bb3

bb3:                                              ; preds = %bb13, %bb6, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h8234ee391be52b42E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_8, align 4
  %5 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  %8 = load i32, ptr %7, align 4
  %_10 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_10 to i1
  br i1 %9, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %10 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %10, align 4
; call core::str::<impl str>::chars
  %11 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h12fb18d24736ec39E"(ptr align 1 %str.0, i64 %str.1) #20
  %_17.0 = extractvalue { ptr, ptr } %11, 0
  %_17.1 = extractvalue { ptr, ptr } %11, 1
; call core::iter::traits::iterator::Iterator::rev
  %12 = call { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3rev17h2d945e99a3b052e5E(ptr %_17.0, ptr %_17.1) #20
  %13 = extractvalue { ptr, ptr } %12, 0
  %14 = extractvalue { ptr, ptr } %12, 1
  store ptr %13, ptr %_16, align 8
  %15 = getelementptr inbounds i8, ptr %_16, i64 8
  store ptr %14, ptr %15, align 8
  %_18 = sext i32 %i to i64
; call <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::nth
  %16 = call i32 @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E"(ptr align 8 %_16, i64 %_18) #20
  store i32 %16, ptr %_14, align 4
; call <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_12 = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hb09265f9c9485c2fE"(ptr align 4 %_14, ptr align 4 @alloc_17ff8408cb8e527722e7af61db344e75) #20
  br i1 %_12, label %bb12, label %bb3

bb7:                                              ; preds = %bb3
  %_22 = load i32, ptr %c, align 4
  %_21 = icmp eq i32 %_22, %k
  br i1 %_21, label %bb14, label %bb15

bb15:                                             ; preds = %bb7
  store i32 0, ptr %_0, align 4
  br label %bb16

bb14:                                             ; preds = %bb7
  store i32 1, ptr %_0, align 4
  br label %bb16

bb16:                                             ; preds = %bb14, %bb15
  %17 = load i32, ptr %_0, align 4
  ret i32 %17

bb12:                                             ; preds = %bb6
  %18 = load i32, ptr %c, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 1)
  %_20.0 = extractvalue { i32, i1 } %19, 0
  %_20.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_20.1, label %panic, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_20.0, ptr %c, align 4
  br label %bb3

panic:                                            ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_48d58f1a178f6fe41e70c7f2ea4bebf4) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
