define i32 @f_gold(ptr %arr1, ptr %arr2, i32 %m, i32 %n) unnamed_addr #3 {
start:
  %j = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %bb1

bb1:                                              ; preds = %bb11, %start
  %_8 = load i32, ptr %i, align 4
  %_7 = icmp slt i32 %_8, %n
  br i1 %_7, label %bb2, label %bb12

bb12:                                             ; preds = %bb1
  store i32 1, ptr %_0, align 4
  br label %bb13

bb2:                                              ; preds = %bb7, %bb1
  %_10 = load i32, ptr %j, align 4
  %_9 = icmp slt i32 %_10, %m
  br i1 %_9, label %bb3, label %bb8

bb13:                                             ; preds = %bb9, %bb12
  %0 = load i32, ptr %_0, align 4
  ret i32 %0

bb8:                                              ; preds = %bb17, %bb2
  %_22 = load i32, ptr %j, align 4
  %_21 = icmp eq i32 %_22, %m
  br i1 %_21, label %bb9, label %bb10

bb3:                                              ; preds = %bb2
  %_15 = load i32, ptr %i, align 4
  %_14 = sext i32 %_15 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17he0d282ceb95d607fE"(ptr %arr2, i64 %_14, i64 4, ptr align 8 @alloc_16bebd639acb226e6f39e966ea66afc3) #19
  %_0.i6 = getelementptr inbounds i32, ptr %arr2, i64 %_14
  %_30 = ptrtoint ptr %_0.i6 to i64
  %_32 = and i64 %_30, 3
  %_33 = icmp eq i64 %_32, 0
  br i1 %_33, label %bb15, label %panic

bb15:                                             ; preds = %bb3
  %_35 = ptrtoint ptr %_0.i6 to i64
  %_37 = icmp eq i64 %_35, 0
  %_38 = and i1 %_37, true
  %_39 = xor i1 %_38, true
  br i1 %_39, label %bb16, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64 4, i64 %_30, ptr align 8 @alloc_805bf1f4352c1970e152c53700ab2374) #16
  unreachable

bb16:                                             ; preds = %bb15
  %_12 = load i32, ptr %_0.i6, align 4
  %_19 = load i32, ptr %j, align 4
  %_18 = sext i32 %_19 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17he0d282ceb95d607fE"(ptr %arr1, i64 %_18, i64 4, ptr align 8 @alloc_84cf6cf961a50835812d864e91442ec7) #19
  %_0.i = getelementptr inbounds i32, ptr %arr1, i64 %_18
  %_25 = ptrtoint ptr %_0.i to i64
  %_27 = and i64 %_25, 3
  %_28 = icmp eq i64 %_27, 0
  br i1 %_28, label %bb14, label %panic2

panic1:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8 @alloc_805bf1f4352c1970e152c53700ab2374) #16
  unreachable

bb14:                                             ; preds = %bb16
  %_41 = ptrtoint ptr %_0.i to i64
  %_43 = icmp eq i64 %_41, 0
  %_44 = and i1 %_43, true
  %_45 = xor i1 %_44, true
  br i1 %_45, label %bb17, label %panic3

panic2:                                           ; preds = %bb16
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h9d98dbac7d744dceE(i64 4, i64 %_25, ptr align 8 @alloc_70c6f169ef6643d235974bd5a8425257) #16
  unreachable

bb17:                                             ; preds = %bb14
  %_16 = load i32, ptr %_0.i, align 4
  %_11 = icmp eq i32 %_12, %_16
  br i1 %_11, label %bb8, label %bb6

panic3:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hefb1ca6b42ef1bcfE(ptr align 8 @alloc_70c6f169ef6643d235974bd5a8425257) #16
  unreachable

bb6:                                              ; preds = %bb17
  %1 = load i32, ptr %j, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %_20.0 = extractvalue { i32, i1 } %2, 0
  %_20.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_20.1, label %panic4, label %bb7

bb7:                                              ; preds = %bb6
  store i32 %_20.0, ptr %j, align 4
  br label %bb2

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5c9281fc2a5fdd0743c6238320521dce) #22
  unreachable

bb10:                                             ; preds = %bb8
  %3 = load i32, ptr %i, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %_23.0 = extractvalue { i32, i1 } %4, 0
  %_23.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_23.1, label %panic5, label %bb11

bb9:                                              ; preds = %bb8
  store i32 0, ptr %_0, align 4
  br label %bb13

bb11:                                             ; preds = %bb10
  store i32 %_23.0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %bb1

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a1fdeb66abb8e2828404b4ecfd935772) #22
  unreachable
}
