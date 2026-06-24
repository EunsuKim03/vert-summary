define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %self.i = alloca [4 x i8], align 4
  %_20 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %rem = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %len = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17hc2ccc1303bad7f20E"(ptr align 1 %str.0, i64 %str.1) #20
  store i32 0, ptr %rem, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h69cb573557b18782E"(i64 0, i64 %len) #20
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_5.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb15, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2413c0b961c46aa2E"(ptr align 8 %iter) #20
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
  %_13 = load i32, ptr %rem, align 4
  %10 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_13, i32 10)
  %_14.0 = extractvalue { i32, i1 } %10, 0
  %_14.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_14.1, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %rem, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
; call core::str::<impl str>::chars
  %11 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h54e2952e6997ae0bE"(ptr align 1 %str.0, i64 %str.1) #20
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  store ptr %12, ptr %_20, align 8
  %14 = getelementptr inbounds i8, ptr %_20, i64 8
  store ptr %13, ptr %14, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_18 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h90546c2cc15a4d6bE(ptr align 8 %_20, i64 %i) #20
  store i32 %_18, ptr %self.i, align 4
  %15 = load i32, ptr %self.i, align 4
  %16 = icmp eq i32 %15, 1114112
  %_2.i = select i1 %16, i64 0, i64 1
  %17 = trunc nuw i64 %_2.i to i1
  br i1 %17, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h21eb8e9828e86fecE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb8
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_af1e03220ba283c8277739878bf0ed9c) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h21eb8e9828e86fecE.exit": ; preds = %bb8
  %val.i = load i32, ptr %self.i, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_22.0 = extractvalue { i32, i1 } %18, 0
  %_22.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_22.1, label %panic1, label %bb12

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_958d73d2628055fbb41599e32f379392) #22
  unreachable

bb12:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h21eb8e9828e86fecE.exit"
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_14.0, i32 %_22.0)
  %_23.0 = extractvalue { i32, i1 } %19, 0
  %_23.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_23.1, label %panic2, label %bb13

panic1:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h21eb8e9828e86fecE.exit"
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_975695566f74101d8a79ec97d29e463a) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_26 = icmp eq i32 %_23.0, -2147483648
  %_27 = and i1 false, %_26
  br i1 %_27, label %panic3, label %bb15

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_958d73d2628055fbb41599e32f379392) #22
  unreachable

bb15:                                             ; preds = %bb13
  %20 = srem i32 %_23.0, 11
  store i32 %20, ptr %rem, align 4
  br label %bb3

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_71c5a6f52b3f7d8a2dda8689825cd0b5) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
