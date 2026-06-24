define i32 @f_gold(i64 %0, i64 %1, i32 %m, i32 %n) unnamed_addr #3 {
start:
  %j = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr2 = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr1, ptr align 8 %3, i64 8, i1 false)
  store i64 %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr2, ptr align 8 %2, i64 8, i1 false)
  %_5 = icmp slt i32 %m, %n
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6d402ef7b25803c2E"(ptr align 4 %arr1, i64 2) #20
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6d402ef7b25803c2E"(ptr align 4 %arr2, i64 2) #20
  store i64 0, ptr %i, align 8
  store i64 0, ptr %j, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb21

bb5:                                              ; preds = %bb17, %bb15, %bb2
  %_15 = load i64, ptr %i, align 8
  %_16 = sext i32 %n to i64
  %_14 = icmp ult i64 %_15, %_16
  br i1 %_14, label %bb6, label %bb18

bb18:                                             ; preds = %bb6, %bb5
  %_32 = load i64, ptr %i, align 8
  %_33 = sext i32 %n to i64
  %_31 = icmp ult i64 %_32, %_33
  br i1 %_31, label %bb19, label %bb20

bb6:                                              ; preds = %bb5
  %_18 = load i64, ptr %j, align 8
  %_19 = sext i32 %m to i64
  %_17 = icmp ult i64 %_18, %_19
  br i1 %_17, label %bb7, label %bb18

bb7:                                              ; preds = %bb6
  %_22 = load i64, ptr %j, align 8
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb8, label %panic

bb20:                                             ; preds = %bb18
  store i32 1, ptr %_0, align 4
  br label %bb21

bb19:                                             ; preds = %bb18
  store i32 0, ptr %_0, align 4
  br label %bb21

bb21:                                             ; preds = %bb1, %bb12, %bb19, %bb20
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb8:                                              ; preds = %bb7
  %_21 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_22
  %_25 = load i64, ptr %i, align 8
  %_26 = icmp ult i64 %_25, 2
  br i1 %_26, label %bb9, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_36daa2705048a37e47864c6100e97aba) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_24 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_25
; call core::cmp::impls::<impl core::cmp::Ord for i32>::cmp
  %_20 = call i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17haa6d62c9006cf583E"(ptr align 4 %_21, ptr align 4 %_24) #20
  switch i8 %_20, label %bb11 [
    i8 -1, label %bb14
    i8 0, label %bb13
    i8 1, label %bb12
  ]

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_d85a6c60ff0098e9184511bb0765c929) #22
  unreachable

bb11:                                             ; preds = %bb9
  unreachable

bb14:                                             ; preds = %bb9
  %5 = load i64, ptr %j, align 8
  %_28.0 = add i64 %5, 1
  %_28.1 = icmp ult i64 %_28.0, %5
  br i1 %_28.1, label %panic2, label %bb15

bb13:                                             ; preds = %bb9
  %6 = load i64, ptr %j, align 8
  %_29.0 = add i64 %6, 1
  %_29.1 = icmp ult i64 %_29.0, %6
  br i1 %_29.1, label %panic3, label %bb16

bb12:                                             ; preds = %bb9
  store i32 0, ptr %_0, align 4
  br label %bb21

bb15:                                             ; preds = %bb14
  store i64 %_28.0, ptr %j, align 8
  br label %bb5

panic2:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4962748fdf83bf06903309f0e6e98e00) #22
  unreachable

bb16:                                             ; preds = %bb13
  store i64 %_29.0, ptr %j, align 8
  %7 = load i64, ptr %i, align 8
  %_30.0 = add i64 %7, 1
  %_30.1 = icmp ult i64 %_30.0, %7
  br i1 %_30.1, label %panic4, label %bb17

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1edbfd3c36e55fa50271f4f7495a70c2) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i64 %_30.0, ptr %i, align 8
  br label %bb5

panic4:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4779cb8e86d12d1a4c2889bec6a507e0) #22
  unreachable
}
