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

bb2:                                              ; preds = %bb9, %bb6, %start
  %_8 = load i32, ptr %y_count, align 4
  %_7 = icmp ne i32 %_8, 0
  br i1 %_7, label %bb3, label %bb12

bb12:                                             ; preds = %bb2
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
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_13f28b72f55c355d8c7a49c6e4ba2799) #22
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %_11.0, ptr %x, align 4
  br label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9a44f666b3f175118f136f20f0b7cf59) #22
  unreachable

bb6:                                              ; preds = %bb11, %bb5
  %_13 = load i32, ptr %y_count, align 4
  %_12 = icmp ne i32 %_13, 0
  br i1 %_12, label %bb7, label %bb2

bb7:                                              ; preds = %bb6
  %_18 = load i32, ptr %x, align 4
  %_17 = sitofp i32 %_18 to float
  %_20 = load i32, ptr %x, align 4
  %_19 = sitofp i32 %_20 to float
  %_16 = fmul float %_17, %_19
  %_24 = load i32, ptr %y_count, align 4
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_24, i32 1)
  %_25.0 = extractvalue { i32, i1 } %5, 0
  %_25.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_25.1, label %panic2, label %bb8

bb8:                                              ; preds = %bb7
  %_22 = sitofp i32 %_25.0 to float
  %_28 = load i32, ptr %y_count, align 4
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_28, i32 1)
  %_29.0 = extractvalue { i32, i1 } %6, 0
  %_29.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_29.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a4c66885c80e47434101aceaaff3e40a) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_26 = sitofp i32 %_29.0 to float
  %_21 = fmul float %_22, %_26
  %_15 = fadd float %_16, %_21
  %_30 = sitofp i32 %n to float
  %_14 = fcmp oge float %_15, %_30
  br i1 %_14, label %bb10, label %bb2

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_09e7037f2379aeed4efabfbd522d2e68) #22
  unreachable

bb10:                                             ; preds = %bb9
  %7 = load i32, ptr %y_count, align 4
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %7, i32 1)
  %_31.0 = extractvalue { i32, i1 } %8, 0
  %_31.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_31.1, label %panic4, label %bb11

bb11:                                             ; preds = %bb10
  store i32 %_31.0, ptr %y_count, align 4
  br label %bb6

panic4:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3b686b58a4e53825f96c75d1f50164a2) #22
  unreachable
}
