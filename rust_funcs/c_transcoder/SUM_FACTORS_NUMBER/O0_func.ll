define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %result = alloca [4 x i8], align 4
  store i32 0, ptr %result, align 4
  %_5 = sitofp i32 %n to float
; call std::f32::<impl f32>::sqrt
  %_4 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h07eed6a1c08857f6E"(float %_5) #17
  %sqrt_n = call i32 @llvm.fptosi.sat.i32.f32(float %_4)
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h76f8af746ebc2551E"(ptr sret([12 x i8]) align 4 %_7, i32 2, i32 %sqrt_n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc01da6ff18584574E"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb15, %bb20, %bb10, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h68e690fec27c6a13E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_9, align 4
  %3 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_9, align 4
  %5 = getelementptr inbounds i8, ptr %_9, i64 4
  %6 = load i32, ptr %5, align 4
  %_11 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_11 to i1
  br i1 %7, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %8, align 4
  %_15 = icmp eq i32 %i, 0
  br i1 %_15, label %panic2, label %bb9

bb8:                                              ; preds = %bb4
  %_35 = load i32, ptr %result, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_35, i32 %n)
  %_36.0 = extractvalue { i32, i1 } %9, 0
  %_36.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_36.1, label %panic, label %bb21

bb21:                                             ; preds = %bb8
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_36.0, i32 1)
  %_37.0 = extractvalue { i32, i1 } %10, 0
  %_37.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_37.1, label %panic1, label %bb22

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_590ea62d3dde06b422103fa04cc1a0eb) #22
  unreachable

bb22:                                             ; preds = %bb21
  ret i32 %_37.0

panic1:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_590ea62d3dde06b422103fa04cc1a0eb) #22
  unreachable

bb9:                                              ; preds = %bb7
  %_16 = icmp eq i32 %i, -1
  %_17 = icmp eq i32 %n, -2147483648
  %_18 = and i1 %_16, %_17
  br i1 %_18, label %panic3, label %bb10

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_c22cb9ee6f9e5058dd5b053bf8baf0b4) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_14 = srem i32 %n, %i
  %_13 = icmp eq i32 %_14, 0
  br i1 %_13, label %bb11, label %bb4

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c22cb9ee6f9e5058dd5b053bf8baf0b4) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_21 = icmp eq i32 %i, 0
  br i1 %_21, label %panic4, label %bb12

bb12:                                             ; preds = %bb11
  %_22 = icmp eq i32 %i, -1
  %_23 = icmp eq i32 %n, -2147483648
  %_24 = and i1 %_22, %_23
  br i1 %_24, label %panic5, label %bb13

panic4:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_3273cb1ad6ef5e0893211d10813bb317) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_20 = sdiv i32 %n, %i
  %_19 = icmp eq i32 %i, %_20
  br i1 %_19, label %bb14, label %bb16

panic5:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_3273cb1ad6ef5e0893211d10813bb317) #22
  unreachable

bb16:                                             ; preds = %bb13
  %_28 = icmp eq i32 %i, 0
  br i1 %_28, label %panic6, label %bb17

bb14:                                             ; preds = %bb13
  %11 = load i32, ptr %result, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 %i)
  %_25.0 = extractvalue { i32, i1 } %12, 0
  %_25.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_25.1, label %panic10, label %bb15

bb17:                                             ; preds = %bb16
  %_29 = icmp eq i32 %i, -1
  %_30 = icmp eq i32 %n, -2147483648
  %_31 = and i1 %_29, %_30
  br i1 %_31, label %panic7, label %bb18

panic6:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_dcae6fe6a8e585bcb4e076fbdb2c4c09) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_27 = sdiv i32 %n, %i
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %_27)
  %_32.0 = extractvalue { i32, i1 } %13, 0
  %_32.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_32.1, label %panic8, label %bb19

panic7:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_dcae6fe6a8e585bcb4e076fbdb2c4c09) #22
  unreachable

bb19:                                             ; preds = %bb18
  %14 = load i32, ptr %result, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 %_32.0)
  %_33.0 = extractvalue { i32, i1 } %15, 0
  %_33.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_33.1, label %panic9, label %bb20

panic8:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2fbc546e450d7077caa2950974513289) #22
  unreachable

bb20:                                             ; preds = %bb19
  store i32 %_33.0, ptr %result, align 4
  br label %bb4

panic9:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_15d22ed71ece67ec2e58d6fc347b04fc) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %_25.0, ptr %result, align 4
  br label %bb4

panic10:                                          ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5f72fe26da4e3443f584cacd6339423d) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
