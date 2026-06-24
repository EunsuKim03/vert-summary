define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %n1 = alloca [4 x i8], align 4
  %_3.0 = sub i32 %n, 1
  %_3.1 = icmp ult i32 %n, 1
  br i1 %_3.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i32 %_3.0, ptr %n1, align 4
  %_5 = load i32, ptr %n1, align 4
  %_4 = lshr i32 %_5, 1
  %0 = load i32, ptr %n1, align 4
  %1 = or i32 %0, %_4
  store i32 %1, ptr %n1, align 4
  %_9 = load i32, ptr %n1, align 4
  %_8 = lshr i32 %_9, 2
  %2 = load i32, ptr %n1, align 4
  %3 = or i32 %2, %_8
  store i32 %3, ptr %n1, align 4
  %_13 = load i32, ptr %n1, align 4
  %_12 = lshr i32 %_13, 4
  %4 = load i32, ptr %n1, align 4
  %5 = or i32 %4, %_12
  store i32 %5, ptr %n1, align 4
  %_17 = load i32, ptr %n1, align 4
  %_16 = lshr i32 %_17, 8
  %6 = load i32, ptr %n1, align 4
  %7 = or i32 %6, %_16
  store i32 %7, ptr %n1, align 4
  %_21 = load i32, ptr %n1, align 4
  %_20 = lshr i32 %_21, 16
  %8 = load i32, ptr %n1, align 4
  %9 = or i32 %8, %_20
  store i32 %9, ptr %n1, align 4
  %10 = load i32, ptr %n1, align 4
  %_24.0 = add i32 %10, 1
  %_24.1 = icmp ult i32 %_24.0, %10
  br i1 %_24.1, label %panic2, label %bb7

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_57f0e86ebce37e8163d0863769b45115) #22
  unreachable

bb7:                                              ; preds = %bb1
  store i32 %_24.0, ptr %n1, align 4
  %_0 = load i32, ptr %n1, align 4
  ret i32 %_0

panic2:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fe803029abf7a8aa3dba7923a9b59321) #22
  unreachable
}
