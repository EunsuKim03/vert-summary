define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %sum = alloca [4 x i8], align 4
  store i32 1, ptr %sum, align 4
  %_3 = load i32, ptr %sum, align 4
  %_5 = icmp ult i32 %n, 32
  br i1 %_5, label %bb1, label %panic

bb1:                                              ; preds = %start
  %0 = and i32 %n, 31
  %1 = shl i32 %_3, %0
  store i32 %1, ptr %sum, align 4
  %_7 = load i32, ptr %sum, align 4
  %_8.0 = sub i32 %_7, 1
  %_8.1 = icmp ult i32 %_7, 1
  br i1 %_8.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_edbf6916583ffa4ecd9fc375aa074f04) #22
  unreachable

bb2:                                              ; preds = %bb1
  ret i32 %_8.0

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7f8083c90fa36450de99c23bd2a5074e) #22
  unreachable
}
