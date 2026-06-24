define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %res = alloca [4 x i8], align 4
  %y_count = alloca [4 x i8], align 4
  %x = alloca [4 x i8], align 4
  store i32 0, ptr %x, align 4
  store i32 0, ptr %res, align 4
  %_6 = sitofp i32 %n to float
; call std::f32::<impl f32>::sqrt
  %_5 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h2c2c30ffadebfc04E"(float %_6) #20
  %0 = call i32 @llvm.fptosi.sat.i32.f32(float %_5)
  store i32 %0, ptr %y_count, align 4
  br label %bb2

bb2:                                              ; preds = %bb12, %bb6, %start
  %_8 = load i32, ptr %y_count, align 4
  %_7 = icmp ne i32 %_8, 0
  br i1 %_7, label %bb3, label %bb15

bb15:                                             ; preds = %bb2
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb3:                                              ; preds = %bb2
  %_9 = load i32, ptr %y_count, align 4
  %1 = load i32, ptr %res, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 %_9)
  %_10.0 = extractvalue { i32, i1 } %2, 0
  %_10.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_10.1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_10.0, ptr %res, align 4
  %3 = load i32, ptr %x, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %_11.0 = extractvalue { i32, i1 } %4, 0
  %_11.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_11.1, label %panic1, label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3e726e5c321b28e41bdb62c98055a726) #22
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %_11.0, ptr %x, align 4
  br label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_19dede5905e8600911881ac0f1f887bb) #22
  unreachable

bb6:                                              ; preds = %bb14, %bb5
  %_13 = load i32, ptr %y_count, align 4
  %_12 = icmp ne i32 %_13, 0
  br i1 %_12, label %bb7, label %bb2

bb7:                                              ; preds = %bb6
  %_17 = load i32, ptr %x, align 4
  %_18 = load i32, ptr %x, align 4
  %5 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_17, i32 %_18)
  %_19.0 = extractvalue { i32, i1 } %5, 0
  %_19.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_19.1, label %panic2, label %bb8

bb8:                                              ; preds = %bb7
  %_22 = load i32, ptr %y_count, align 4
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_22, i32 1)
  %_23.0 = extractvalue { i32, i1 } %6, 0
  %_23.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_23.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_386629f410fb148dbd3fadee81449538) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_25 = load i32, ptr %y_count, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_25, i32 1)
  %_26.0 = extractvalue { i32, i1 } %7, 0
  %_26.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_26.1, label %panic4, label %bb10

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f0f8b9a385d7da148331a36679d8a115) #22
  unreachable

bb10:                                             ; preds = %bb9
  %8 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_23.0, i32 %_26.0)
  %_27.0 = extractvalue { i32, i1 } %8, 0
  %_27.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_27.1, label %panic5, label %bb11

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3deddb20d77ea6def67ec1118b628d1f) #22
  unreachable

bb11:                                             ; preds = %bb10
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_19.0, i32 %_27.0)
  %_28.0 = extractvalue { i32, i1 } %9, 0
  %_28.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_28.1, label %panic6, label %bb12

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_f0f8b9a385d7da148331a36679d8a115) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_14 = icmp sge i32 %_28.0, %n
  br i1 %_14, label %bb13, label %bb2

panic6:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_386629f410fb148dbd3fadee81449538) #22
  unreachable

bb13:                                             ; preds = %bb12
  %10 = load i32, ptr %y_count, align 4
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %10, i32 1)
  %_29.0 = extractvalue { i32, i1 } %11, 0
  %_29.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_29.1, label %panic7, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_29.0, ptr %y_count, align 4
  br label %bb6

panic7:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b86864422877be813d4569fd0e7444e6) #22
  unreachable
}
