define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %_21 = alloca [16 x i8], align 8
  %_19 = alloca [4 x i8], align 4
  %j = alloca [8 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %_6 = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h32176c6cc25275f4E"(ptr align 1 %str.0, i64 %str.1) #19
  store i64 0, ptr %i, align 8
  br label %bb2

bb2:                                              ; preds = %bb7, %start
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h775ff114d28224e8E"(ptr align 1 %str.0, i64 %str.1) #19
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  store ptr %1, ptr %_8, align 8
  %3 = getelementptr inbounds i8, ptr %_8, i64 8
  store ptr %2, ptr %3, align 8
  %_9 = load i64, ptr %i, align 8
; call core::iter::traits::iterator::Iterator::nth
  %4 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr align 8 %_8, i64 %_9) #19
  store i32 %4, ptr %_6, align 4
; call <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_4 = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h371010e16fec101cE"(ptr align 4 %_6, ptr align 4 @alloc_5e1f7e2186c534569e1bce6fa9329954) #19
  br i1 %_4, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %_14 = load i64, ptr %i, align 8
  %5 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_14, i64 2)
  %_15.0 = extractvalue { i64, i1 } %5, 0
  %_15.1 = extractvalue { i64, i1 } %5, 1
  br i1 %_15.1, label %panic, label %bb9

bb6:                                              ; preds = %bb2
  %6 = load i64, ptr %i, align 8
  %_11.0 = add i64 %6, 1
  %_11.1 = icmp ult i64 %_11.0, %6
  br i1 %_11.1, label %panic2, label %bb7

bb9:                                              ; preds = %bb8
  %_12 = icmp ne i64 %_15.0, %n
  br i1 %_12, label %bb10, label %bb11

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_088108439cfda80c73201f59cd718e94) #22
  unreachable

bb11:                                             ; preds = %bb9
  %7 = load i64, ptr %i, align 8
  store i64 %7, ptr %j, align 8
  br label %bb12

bb10:                                             ; preds = %bb9
  store i32 0, ptr %_0, align 4
  br label %bb19

bb12:                                             ; preds = %bb17, %bb11
; call core::str::<impl str>::chars
  %8 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h775ff114d28224e8E"(ptr align 1 %str.0, i64 %str.1) #19
  %9 = extractvalue { ptr, ptr } %8, 0
  %10 = extractvalue { ptr, ptr } %8, 1
  store ptr %9, ptr %_21, align 8
  %11 = getelementptr inbounds i8, ptr %_21, i64 8
  store ptr %10, ptr %11, align 8
  %_22 = load i64, ptr %j, align 8
; call core::iter::traits::iterator::Iterator::nth
  %12 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr align 8 %_21, i64 %_22) #19
  store i32 %12, ptr %_19, align 4
; call <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_17 = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h371010e16fec101cE"(ptr align 4 %_19, ptr align 4 @alloc_4ec106804a8f5cec067459e8804c2e9d) #19
  br i1 %_17, label %bb16, label %bb18

bb18:                                             ; preds = %bb12
  store i32 1, ptr %_0, align 4
  br label %bb19

bb16:                                             ; preds = %bb12
  %13 = load i64, ptr %j, align 8
  %_24.0 = add i64 %13, 1
  %_24.1 = icmp ult i64 %_24.0, %13
  br i1 %_24.1, label %panic1, label %bb17

bb19:                                             ; preds = %bb10, %bb18
  %14 = load i32, ptr %_0, align 4
  ret i32 %14

bb17:                                             ; preds = %bb16
  store i64 %_24.0, ptr %j, align 8
  br label %bb12

panic1:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f280a86616a1795647f9b95d12b006ac) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i64 %_11.0, ptr %i, align 8
  br label %bb2

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bce18b922ffa0e34464508fa6059d613) #22
  unreachable
}
