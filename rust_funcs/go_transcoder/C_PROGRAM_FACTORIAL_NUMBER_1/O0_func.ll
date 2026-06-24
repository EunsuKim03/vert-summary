define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  store i32 1, ptr %res, align 4
  store i32 2, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %_5 = load i32, ptr %i, align 4
  %_4 = icmp ule i32 %_5, %n
  br i1 %_4, label %bb2, label %bb5

bb5:                                              ; preds = %bb1
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_6 = load i32, ptr %i, align 4
  %0 = load i32, ptr %res, align 4
  %1 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 %_6)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  store i32 %_7.0, ptr %res, align 4
  %2 = load i32, ptr %i, align 4
  %_8.0 = add i32 %2, 1
  %_8.1 = icmp ult i32 %_8.0, %2
  br i1 %_8.1, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_62340360ba36f1961bea0ed3114765f6) #22
  unreachable

bb4:                                              ; preds = %bb3
  store i32 %_8.0, ptr %i, align 4
  br label %bb1

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_559fdbd6f774db53f00068a2c3190090) #22
  unreachable
}
