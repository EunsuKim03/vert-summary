define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %height = alloca [4 x i8], align 4
  %length = alloca [4 x i8], align 4
  %ans = alloca [4 x i8], align 4
  store i32 0, ptr %ans, align 4
  store i32 1, ptr %length, align 4
  br label %bb1

bb1:                                              ; preds = %bb10, %start
  %_5 = load i32, ptr %length, align 4
  %_8 = sitofp i32 %n to float
; call std::f32::<impl f32>::sqrt
  %_7 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17heacd5ef423d05aa7E"(float %_8) #20
  %_6 = call i32 @llvm.fptosi.sat.i32.f32(float %_7)
  %_4 = icmp sle i32 %_5, %_6
  br i1 %_4, label %bb3, label %bb11

bb11:                                             ; preds = %bb1
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb1
  %0 = load i32, ptr %length, align 4
  store i32 %0, ptr %height, align 4
  br label %bb4

bb4:                                              ; preds = %bb8, %bb3
  %_12 = load i32, ptr %height, align 4
  %_13 = load i32, ptr %length, align 4
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_12, i32 %_13)
  %_14.0 = extractvalue { i32, i1 } %1, 0
  %_14.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_14.1, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  %_10 = icmp sle i32 %_14.0, %n
  br i1 %_10, label %bb6, label %bb9

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b7bdc1595e1056b6d94534dbc45bef81) #22
  unreachable

bb9:                                              ; preds = %bb5
  %2 = load i32, ptr %length, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %_17.0 = extractvalue { i32, i1 } %3, 0
  %_17.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_17.1, label %panic1, label %bb10

bb6:                                              ; preds = %bb5
  %4 = load i32, ptr %ans, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %_15.0 = extractvalue { i32, i1 } %5, 0
  %_15.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_15.1, label %panic2, label %bb7

bb10:                                             ; preds = %bb9
  store i32 %_17.0, ptr %length, align 4
  br label %bb1

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ab807749d0aac4998ba12d50c80bc9c1) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %_15.0, ptr %ans, align 4
  %6 = load i32, ptr %height, align 4
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 1)
  %_16.0 = extractvalue { i32, i1 } %7, 0
  %_16.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_16.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_37e64e300eea97c4292c00d6b5bacac4) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_16.0, ptr %height, align 4
  br label %bb4

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a36c00a9b22bd86780af35dc6a998cff) #22
  unreachable
}
