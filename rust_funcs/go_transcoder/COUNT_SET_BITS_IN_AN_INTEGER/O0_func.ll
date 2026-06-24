define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %n1 = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
  store i32 %n, ptr %n1, align 4
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %_5 = load i32, ptr %n1, align 4
  %_4 = icmp ugt i32 %_5, 0
  br i1 %_4, label %bb2, label %bb5

bb5:                                              ; preds = %bb1
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_7 = load i32, ptr %n1, align 4
  %_6 = and i32 %_7, 1
  %0 = load i32, ptr %count, align 4
  %_8.0 = add i32 %0, %_6
  %_8.1 = icmp ult i32 %_8.0, %0
  br i1 %_8.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  store i32 %_8.0, ptr %count, align 4
  %1 = load i32, ptr %n1, align 4
  %2 = lshr i32 %1, 1
  store i32 %2, ptr %n1, align 4
  br label %bb1

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0a9b362534ac8d71dea6ac8265372f28) #22
  unreachable
}
