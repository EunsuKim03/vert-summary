define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %n1 = alloca [4 x i8], align 4
  store i32 %n, ptr %n1, align 4
  %0 = load i32, ptr %n1, align 4
  %_3.0 = sub i32 %0, 1
  %_3.1 = icmp ult i32 %0, 1
  br i1 %_3.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i32 %_3.0, ptr %n1, align 4
  %_5 = load i32, ptr %n1, align 4
  %_4 = lshr i32 %_5, 1
  %1 = load i32, ptr %n1, align 4
  %2 = or i32 %1, %_4
  store i32 %2, ptr %n1, align 4
  %_9 = load i32, ptr %n1, align 4
  %_8 = lshr i32 %_9, 2
  %3 = load i32, ptr %n1, align 4
  %4 = or i32 %3, %_8
  store i32 %4, ptr %n1, align 4
  %_13 = load i32, ptr %n1, align 4
  %_12 = lshr i32 %_13, 4
  %5 = load i32, ptr %n1, align 4
  %6 = or i32 %5, %_12
  store i32 %6, ptr %n1, align 4
  %_17 = load i32, ptr %n1, align 4
  %_16 = lshr i32 %_17, 8
  %7 = load i32, ptr %n1, align 4
  %8 = or i32 %7, %_16
  store i32 %8, ptr %n1, align 4
  %_21 = load i32, ptr %n1, align 4
  %_20 = lshr i32 %_21, 16
  %9 = load i32, ptr %n1, align 4
  %10 = or i32 %9, %_20
  store i32 %10, ptr %n1, align 4
  %11 = load i32, ptr %n1, align 4
  %_24.0 = add i32 %11, 1
  %_24.1 = icmp ult i32 %_24.0, %11
  br i1 %_24.1, label %panic2, label %bb7

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_960f3fbd3b94f3870ea8ef8db9ca831d) #22
  unreachable

bb7:                                              ; preds = %bb1
  store i32 %_24.0, ptr %n1, align 4
  %_0 = load i32, ptr %n1, align 4
  ret i32 %_0

panic2:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bc1dbdd8e97d733f3f2ceceaa01444a3) #22
  unreachable
}
