define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %sum = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
  %_4 = icmp ult i32 %n, 32
  br i1 %_4, label %bb1, label %panic

bb1:                                              ; preds = %start
  %0 = and i32 %n, 31
  %1 = shl i32 1, %0
  store i32 %1, ptr %sum, align 4
  %_5 = load i32, ptr %sum, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_5, i32 1)
  %_6.0 = extractvalue { i32, i1 } %2, 0
  %_6.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_6.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_ecdb354feb95d63354f5194cd6a57b71) #22
  unreachable

bb2:                                              ; preds = %bb1
  ret i32 %_6.0

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bd08df17420749c53a1461318ba56824) #22
  unreachable
}
