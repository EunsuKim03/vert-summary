define i32 @f_gold(i32 %m, i32 %n) unnamed_addr #3 {
start:
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %path = alloca [4 x i8], align 4
  store i32 1, ptr %path, align 4
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %m, i32 %n)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_8.0, i32 1)
  %_9.0 = extractvalue { i32, i1 } %1, 0
  %_9.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_9.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ef85f2dcd9d2a133a06c92aaca033ec7) #22
  unreachable

bb2:                                              ; preds = %bb1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcdcf81c9502fba4bE"(i32 %n, i32 %_9.0) #20
  %_4.0 = extractvalue { i32, i32 } %2, 0
  %_4.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_4.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %3, align 4
  br label %bb4

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ffb6379b1df0d48843ceeb990023c3fa) #22
  unreachable

bb4:                                              ; preds = %bb13, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haa372361f42ad1a5E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_11, align 4
  %7 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_11, align 4
  %9 = getelementptr inbounds i8, ptr %_11, i64 4
  %10 = load i32, ptr %9, align 4
  %_13 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_13 to i1
  br i1 %11, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %12 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %12, align 4
  %13 = load i32, ptr %path, align 4
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %13, i32 %i)
  %_15.0 = extractvalue { i32, i1 } %14, 0
  %_15.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_15.1, label %panic2, label %bb9

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %path, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  store i32 %_15.0, ptr %path, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %n)
  %_18.0 = extractvalue { i32, i1 } %15, 0
  %_18.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_18.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_f00148b5777d9d671271804e0beab890) #22
  unreachable

bb10:                                             ; preds = %bb9
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_18.0, i32 1)
  %_19.0 = extractvalue { i32, i1 } %16, 0
  %_19.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_19.1, label %panic4, label %bb11

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6195dcd40e07212c0a18a1a1d0733b6d) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_20 = icmp eq i32 %_19.0, 0
  br i1 %_20, label %panic5, label %bb12

panic4:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e9addd86116ae6f7728203ecb234d20c) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_21 = icmp eq i32 %_19.0, -1
  %17 = load i32, ptr %path, align 4
  %_22 = icmp eq i32 %17, -2147483648
  %_23 = and i1 %_21, %_22
  br i1 %_23, label %panic6, label %bb13

panic5:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_14f92c58e74b3b9b4c10b32ed6e689c7) #22
  unreachable

bb13:                                             ; preds = %bb12
  %18 = load i32, ptr %path, align 4
  %19 = sdiv i32 %18, %_19.0
  store i32 %19, ptr %path, align 4
  br label %bb4

panic6:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_14f92c58e74b3b9b4c10b32ed6e689c7) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
