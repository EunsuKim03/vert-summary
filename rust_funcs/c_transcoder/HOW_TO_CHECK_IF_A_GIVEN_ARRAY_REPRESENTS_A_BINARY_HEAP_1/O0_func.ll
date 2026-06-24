define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %n1 = sext i32 %n to i64
  %_8.0 = sub i64 %n1, 2
  %_8.1 = icmp ult i64 %n1, 2
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_6 = udiv i64 %_8.0, 2
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h96de9ffe8182eb0aE"(i64 0, i64 %_6) #20
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_4.0, ptr %iter, align 8
  %3 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %3, align 8
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f8dae11060b71f92ac3b5f16b3d21cc7) #22
  unreachable

bb4:                                              ; preds = %bb21, %bb16, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h405884e1f4d20ab7E"(ptr align 8 %iter) #20
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %_11, align 8
  %7 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %6, ptr %7, align 8
  %_13 = load i64, ptr %_11, align 8
  %8 = getelementptr inbounds i8, ptr %_11, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = trunc nuw i64 %_13 to i1
  br i1 %10, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %11 = getelementptr inbounds i8, ptr %_11, i64 8
  %i = load i64, ptr %11, align 8
  %12 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %i)
  %_19.0 = extractvalue { i64, i1 } %12, 0
  %_19.1 = extractvalue { i64, i1 } %12, 1
  br i1 %_19.1, label %panic2, label %bb9

bb8:                                              ; preds = %bb4
  store i32 1, ptr %_0, align 4
  br label %bb23

bb23:                                             ; preds = %bb13, %bb22, %bb8
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb9:                                              ; preds = %bb7
  %_20.0 = add i64 %_19.0, 1
  %_20.1 = icmp ult i64 %_20.0, %_19.0
  br i1 %_20.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_893753350ce4a36940642ca3021060b0) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_21 = icmp ult i64 %_20.0, 2
  br i1 %_21, label %bb11, label %panic4

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_893753350ce4a36940642ca3021060b0) #22
  unreachable

bb11:                                             ; preds = %bb10
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_20.0
  %_16 = load i32, ptr %14, align 4
  %_23 = icmp ult i64 %i, 2
  br i1 %_23, label %bb12, label %panic5

panic4:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20.0, i64 2, ptr align 8 @alloc_803520d081f3a498bb23584d0ae5c4e7) #22
  unreachable

bb12:                                             ; preds = %bb11
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_22 = load i32, ptr %15, align 4
  %_15 = icmp sgt i32 %_16, %_22
  br i1 %_15, label %bb13, label %bb14

panic5:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_ca22d24bb754822f04e574fdd5de64b6) #22
  unreachable

bb14:                                             ; preds = %bb12
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %i)
  %_27.0 = extractvalue { i64, i1 } %16, 0
  %_27.1 = extractvalue { i64, i1 } %16, 1
  br i1 %_27.1, label %panic6, label %bb15

bb13:                                             ; preds = %bb12
  store i32 0, ptr %_0, align 4
  br label %bb23

bb15:                                             ; preds = %bb14
  %_28.0 = add i64 %_27.0, 2
  %_28.1 = icmp ult i64 %_28.0, %_27.0
  br i1 %_28.1, label %panic7, label %bb16

panic6:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_311d0529b8dd75a5e31f2b3569f244d0) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_24 = icmp ult i64 %_28.0, %n1
  br i1 %_24, label %bb17, label %bb4

panic7:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_311d0529b8dd75a5e31f2b3569f244d0) #22
  unreachable

bb17:                                             ; preds = %bb16
  %17 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %i)
  %_33.0 = extractvalue { i64, i1 } %17, 0
  %_33.1 = extractvalue { i64, i1 } %17, 1
  br i1 %_33.1, label %panic8, label %bb18

bb18:                                             ; preds = %bb17
  %_34.0 = add i64 %_33.0, 2
  %_34.1 = icmp ult i64 %_34.0, %_33.0
  br i1 %_34.1, label %panic9, label %bb19

panic8:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_4c1f92ca18f38052ce1dcf478fe70b5d) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_35 = icmp ult i64 %_34.0, 2
  br i1 %_35, label %bb20, label %panic10

panic9:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4c1f92ca18f38052ce1dcf478fe70b5d) #22
  unreachable

bb20:                                             ; preds = %bb19
  %18 = getelementptr inbounds nuw i32, ptr %arr, i64 %_34.0
  %_30 = load i32, ptr %18, align 4
  %_37 = icmp ult i64 %i, 2
  br i1 %_37, label %bb21, label %panic11

panic10:                                          ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_34.0, i64 2, ptr align 8 @alloc_8d98252c80e7a33808f83bbc778b7f7a) #22
  unreachable

bb21:                                             ; preds = %bb20
  %19 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_36 = load i32, ptr %19, align 4
  %_29 = icmp sgt i32 %_30, %_36
  br i1 %_29, label %bb22, label %bb4

panic11:                                          ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_bc30833a4dfa694aaf4c173f2704ae0f) #22
  unreachable

bb22:                                             ; preds = %bb21
  store i32 0, ptr %_0, align 4
  br label %bb23

bb6:                                              ; No predecessors!
  unreachable
}
