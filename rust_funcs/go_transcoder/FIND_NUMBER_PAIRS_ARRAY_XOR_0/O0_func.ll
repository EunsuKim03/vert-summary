define i32 @f_gold(ptr align 4 %a.0, i64 %a.1, i32 %n) unnamed_addr #3 {
start:
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %answer = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h62d797bd6149b9e7E"(ptr align 4 %a.0, i64 %a.1) #17
  store i32 1, ptr %count, align 4
  store i32 0, ptr %answer, align 4
  %_8 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1ba6e1a6d3b11d68E"(i64 1, i64 %_8) #17
  %_6.0 = extractvalue { i64, i64 } %0, 0
  %_6.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_6.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb12, %bb18, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he2b9a6ae5d50d861E"(ptr align 8 %iter) #17
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_10, align 8
  %5 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %4, ptr %5, align 8
  %_12 = load i64, ptr %_10, align 8
  %6 = getelementptr inbounds i8, ptr %_10, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_12 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %9, align 8
  %_18 = icmp ult i64 %i, %a.1
  br i1 %_18, label %bb8, label %panic4

bb7:                                              ; preds = %bb3
  %_40 = load i32, ptr %count, align 4
  %_42 = load i32, ptr %count, align 4
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_42, i32 1)
  %_43.0 = extractvalue { i32, i1 } %10, 0
  %_43.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_43.1, label %panic, label %bb19

bb19:                                             ; preds = %bb7
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_40, i32 %_43.0)
  %_44.0 = extractvalue { i32, i1 } %11, 0
  %_44.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_44.1, label %panic1, label %bb20

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e01d74f4be5e58ce8b43241fcbe59119) #22
  unreachable

bb20:                                             ; preds = %bb19
  %_47 = icmp eq i32 %_44.0, -2147483648
  %_48 = and i1 false, %_47
  br i1 %_48, label %panic2, label %bb22

panic1:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6a96f9eeb3287658387798d6a8c50aa9) #22
  unreachable

bb22:                                             ; preds = %bb20
  %_38 = sdiv i32 %_44.0, 2
  %12 = load i32, ptr %answer, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 %_38)
  %_49.0 = extractvalue { i32, i1 } %13, 0
  %_49.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_49.1, label %panic3, label %bb23

panic2:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_6a96f9eeb3287658387798d6a8c50aa9) #22
  unreachable

bb23:                                             ; preds = %bb22
  store i32 %_49.0, ptr %answer, align 4
  %_0 = load i32, ptr %answer, align 4
  ret i32 %_0

panic3:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_529beccf7a8a103f1b925bd9f6df38ee) #22
  unreachable

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds nuw i32, ptr %a.0, i64 %i
  %_15 = load i32, ptr %14, align 4
  %_21.0 = sub i64 %i, 1
  %_21.1 = icmp ult i64 %i, 1
  br i1 %_21.1, label %panic5, label %bb9

panic4:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %a.1, ptr align 8 @alloc_2101f840befaf5089283ecca57a7aa38) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_24 = icmp ult i64 %_21.0, %a.1
  br i1 %_24, label %bb10, label %panic6

panic5:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cd6c2e47327f26e3d81818b89a4821b5) #22
  unreachable

bb10:                                             ; preds = %bb9
  %15 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_21.0
  %_19 = load i32, ptr %15, align 4
  %_14 = icmp eq i32 %_15, %_19
  br i1 %_14, label %bb11, label %bb13

panic6:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21.0, i64 %a.1, ptr align 8 @alloc_b95a9f1ac9bbd9ca90e98b8ada817ba0) #22
  unreachable

bb13:                                             ; preds = %bb10
  %_28 = load i32, ptr %count, align 4
  %_30 = load i32, ptr %count, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_30, i32 1)
  %_31.0 = extractvalue { i32, i1 } %16, 0
  %_31.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_31.1, label %panic7, label %bb14

bb11:                                             ; preds = %bb10
  %17 = load i32, ptr %count, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 1)
  %_25.0 = extractvalue { i32, i1 } %18, 0
  %_25.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_25.1, label %panic11, label %bb12

bb14:                                             ; preds = %bb13
  %19 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_28, i32 %_31.0)
  %_32.0 = extractvalue { i32, i1 } %19, 0
  %_32.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_32.1, label %panic8, label %bb15

panic7:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a0a9976dfb3d13c100020cb420d8e134) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_35 = icmp eq i32 %_32.0, -2147483648
  %_36 = and i1 false, %_35
  br i1 %_36, label %panic9, label %bb17

panic8:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1cbdfd7712adff463345226b52175fd7) #22
  unreachable

bb17:                                             ; preds = %bb15
  %_26 = sdiv i32 %_32.0, 2
  %20 = load i32, ptr %answer, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 %_26)
  %_37.0 = extractvalue { i32, i1 } %21, 0
  %_37.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_37.1, label %panic10, label %bb18

panic9:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_1cbdfd7712adff463345226b52175fd7) #22
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_37.0, ptr %answer, align 4
  store i32 1, ptr %count, align 4
  br label %bb3

panic10:                                          ; preds = %bb17
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d205ed44a2c37c69a7538989ddace4da) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_25.0, ptr %count, align 4
  br label %bb3

panic11:                                          ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_be92dd5ca4605c6d4382312410b53cac) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
