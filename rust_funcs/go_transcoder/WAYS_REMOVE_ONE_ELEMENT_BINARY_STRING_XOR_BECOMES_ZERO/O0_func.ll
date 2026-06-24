define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %self.i = alloca [4 x i8], align 4
  %_16 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %zero_count = alloca [4 x i8], align 4
  %one_count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %one_count, align 4
  store i32 0, ptr %zero_count, align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h4cff370963522926E"(ptr align 1 %str.0, i64 %str.1) #20
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h998242a161a052caE"(i64 0, i64 %n) #20
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_5.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb12, %bb14, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h880805d33191ebf9E"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_8, align 8
  %5 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %4, ptr %5, align 8
  %_10 = load i64, ptr %_8, align 8
  %6 = getelementptr inbounds i8, ptr %_8, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_10 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_8, i64 8
  %i = load i64, ptr %9, align 8
; call core::str::<impl str>::chars
  %10 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17he5f5df8711c5e97bE"(ptr align 1 %str.0, i64 %str.1) #20
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  store ptr %11, ptr %_16, align 8
  %13 = getelementptr inbounds i8, ptr %_16, i64 8
  store ptr %12, ptr %13, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_14 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E(ptr align 8 %_16, i64 %i) #20
  store i32 %_14, ptr %self.i, align 4
  %14 = load i32, ptr %self.i, align 4
  %15 = icmp eq i32 %14, 1114112
  %_2.i = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_2.i to i1
  br i1 %16, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc70ae73588f5d8aE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb6
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_958c7180da633ff641c787e69726e48e) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc70ae73588f5d8aE.exit": ; preds = %bb6
  %val.i = load i32, ptr %self.i, align 4
  %_12 = icmp eq i32 %val.i, 49
  br i1 %_12, label %bb11, label %bb13

bb7:                                              ; preds = %bb3
  %_21 = load i32, ptr %one_count, align 4
  %_24 = icmp eq i32 %_21, -2147483648
  %_25 = and i1 false, %_24
  br i1 %_25, label %panic, label %bb16

bb16:                                             ; preds = %bb7
  %_20 = srem i32 %_21, 2
  %_19 = icmp eq i32 %_20, 0
  br i1 %_19, label %bb17, label %bb18

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_2ff1a82c3277da93d056137b17d83e0c) #22
  unreachable

bb18:                                             ; preds = %bb16
  %17 = load i32, ptr %one_count, align 4
  store i32 %17, ptr %_0, align 4
  br label %bb19

bb17:                                             ; preds = %bb16
  %18 = load i32, ptr %zero_count, align 4
  store i32 %18, ptr %_0, align 4
  br label %bb19

bb19:                                             ; preds = %bb17, %bb18
  %19 = load i32, ptr %_0, align 4
  ret i32 %19

bb13:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc70ae73588f5d8aE.exit"
  %20 = load i32, ptr %zero_count, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 1)
  %_18.0 = extractvalue { i32, i1 } %21, 0
  %_18.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_18.1, label %panic1, label %bb14

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc70ae73588f5d8aE.exit"
  %22 = load i32, ptr %one_count, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 1)
  %_17.0 = extractvalue { i32, i1 } %23, 0
  %_17.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_17.1, label %panic2, label %bb12

bb14:                                             ; preds = %bb13
  store i32 %_18.0, ptr %zero_count, align 4
  br label %bb3

panic1:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f2b7cd1895d588dd589b6f433d72478c) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_17.0, ptr %one_count, align 4
  br label %bb3

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b773759a013844a42e1fe0521264efaa) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
