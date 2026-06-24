define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %0 = alloca [4 x i8], align 4
  %n1 = alloca [4 x i8], align 4
  %1 = call i32 @llvm.usub.sat.i32(i32 %n, i32 1)
  store i32 %1, ptr %0, align 4
  %_0.i = load i32, ptr %0, align 4
  store i32 %_0.i, ptr %n1, align 4
  %_4 = load i32, ptr %n1, align 4
  %_3 = lshr i32 %_4, 1
  %2 = load i32, ptr %n1, align 4
  %3 = or i32 %2, %_3
  store i32 %3, ptr %n1, align 4
  %_8 = load i32, ptr %n1, align 4
  %_7 = lshr i32 %_8, 2
  %4 = load i32, ptr %n1, align 4
  %5 = or i32 %4, %_7
  store i32 %5, ptr %n1, align 4
  %_12 = load i32, ptr %n1, align 4
  %_11 = lshr i32 %_12, 4
  %6 = load i32, ptr %n1, align 4
  %7 = or i32 %6, %_11
  store i32 %7, ptr %n1, align 4
  %_16 = load i32, ptr %n1, align 4
  %_15 = lshr i32 %_16, 8
  %8 = load i32, ptr %n1, align 4
  %9 = or i32 %8, %_15
  store i32 %9, ptr %n1, align 4
  %_20 = load i32, ptr %n1, align 4
  %_19 = lshr i32 %_20, 16
  %10 = load i32, ptr %n1, align 4
  %11 = or i32 %10, %_19
  store i32 %11, ptr %n1, align 4
  %12 = load i32, ptr %n1, align 4
  %_23.0 = add i32 %12, 1
  %_23.1 = icmp ult i32 %_23.0, %12
  br i1 %_23.1, label %panic, label %bb7

bb7:                                              ; preds = %start
  store i32 %_23.0, ptr %n1, align 4
  %_0 = load i32, ptr %n1, align 4
  ret i32 %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4d2f06deb2d1a6b544928ad6231bded2) #22
  unreachable
}
