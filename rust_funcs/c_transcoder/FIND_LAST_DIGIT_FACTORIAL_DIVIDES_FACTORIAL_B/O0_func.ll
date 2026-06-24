define i32 @f_gold(i32 %A, i32 %B) unnamed_addr #3 {
start:
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_9 = alloca [12 x i8], align 4
  %_8 = alloca [12 x i8], align 4
  %variable = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 1, ptr %variable, align 4
  %_4 = icmp eq i32 %A, %B
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %B, i32 %A)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb19

bb3:                                              ; preds = %bb2
  %_5 = icmp sge i32 %_7.0, 5
  br i1 %_5, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9c066bc8c9080da21b922649f751723e) #22
  unreachable

bb5:                                              ; preds = %bb3
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %A, i32 1)
  %_11.0 = extractvalue { i32, i1 } %1, 0
  %_11.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_11.1, label %panic1, label %bb6

bb4:                                              ; preds = %bb3
  store i32 0, ptr %_0, align 4
  br label %bb19

bb6:                                              ; preds = %bb5
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17ha12c0b5de136dc0cE"(ptr sret([12 x i8]) align 4 %_9, i32 %_11.0, i32 %B) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3b648dc5f1963ce6E"(ptr sret([12 x i8]) align 4 %_8, ptr align 4 %_9) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_8, i64 12, i1 false)
  br label %bb9

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d6caafcc4fad78cb8aee7e1e29947674) #22
  unreachable

bb9:                                              ; preds = %bb16, %bb6
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h2502258db369aa72E"(ptr align 4 %iter) #17
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_13, align 4
  %5 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_13, align 4
  %7 = getelementptr inbounds i8, ptr %_13, i64 4
  %8 = load i32, ptr %7, align 4
  %_15 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_15 to i1
  br i1 %9, label %bb12, label %bb13

bb12:                                             ; preds = %bb9
  %10 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %10, align 4
  %_18 = load i32, ptr %variable, align 4
  %_21 = sitofp i32 %i to float
  %_20 = frem float %_21, 1.000000e+01
  %_19 = call i32 @llvm.fptosi.sat.i32.f32(float %_20)
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_18, i32 %_19)
  %_22.0 = extractvalue { i32, i1 } %11, 0
  %_22.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_22.1, label %panic3, label %bb14

bb13:                                             ; preds = %bb9
  %_27 = load i32, ptr %variable, align 4
  %_30 = icmp eq i32 %_27, -2147483648
  %_31 = and i1 false, %_30
  br i1 %_31, label %panic2, label %bb18

bb18:                                             ; preds = %bb13
  %12 = srem i32 %_27, 10
  store i32 %12, ptr %_0, align 4
  br label %bb19

panic2:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_ac8b29c1b5dba8088d813d13c11743bc) #22
  unreachable

bb19:                                             ; preds = %bb1, %bb4, %bb18
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb14:                                             ; preds = %bb12
  %_25 = icmp eq i32 %_22.0, -2147483648
  %_26 = and i1 false, %_25
  br i1 %_26, label %panic4, label %bb16

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_fb9d50602ec16f584ac2916d3994423e) #22
  unreachable

bb16:                                             ; preds = %bb14
  %14 = srem i32 %_22.0, 10
  store i32 %14, ptr %variable, align 4
  br label %bb9

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_fb9d50602ec16f584ac2916d3994423e) #22
  unreachable

bb11:                                             ; No predecessors!
  unreachable
}
