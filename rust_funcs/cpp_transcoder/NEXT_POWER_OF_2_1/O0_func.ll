define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %p = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 1, ptr %p, align 4
  %_3 = icmp ugt i32 %n, 0
  br i1 %_3, label %bb1, label %bb4

bb4:                                              ; preds = %bb6, %bb2, %start
  %_9 = load i32, ptr %p, align 4
  %_8 = icmp ult i32 %_9, %n
  br i1 %_8, label %bb5, label %bb7

bb1:                                              ; preds = %start
  %_7.0 = sub i32 %n, 1
  %_7.1 = icmp ult i32 %n, 1
  br i1 %_7.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = and i32 %n, %_7.0
  %_4 = icmp eq i32 %_5, 0
  br i1 %_4, label %bb3, label %bb4

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0dae022b376b4b601f384c84041ae643) #22
  unreachable

bb3:                                              ; preds = %bb2
  store i32 %n, ptr %_0, align 4
  br label %bb8

bb7:                                              ; preds = %bb4
  %0 = load i32, ptr %p, align 4
  store i32 %0, ptr %_0, align 4
  br label %bb8

bb5:                                              ; preds = %bb4
  %1 = load i32, ptr %p, align 4
  %2 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 2)
  %_10.0 = extractvalue { i32, i1 } %2, 0
  %_10.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_10.1, label %panic1, label %bb6

bb8:                                              ; preds = %bb3, %bb7
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb6:                                              ; preds = %bb5
  store i32 %_10.0, ptr %p, align 4
  br label %bb4

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_22c3b0f38a7c105f5fa8c019ded81232) #22
  unreachable
}
