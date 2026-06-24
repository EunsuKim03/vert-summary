define i32 @f_gold(i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp sle i32 %k, 0
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 1)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 %n, ptr %_0, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  %_9 = icmp ult i32 %_7.0, 32
  br i1 %_9, label %bb4, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d57c4b28092a666ba864a03045bba19b) #22
  unreachable

bb4:                                              ; preds = %bb3
  %1 = and i32 %_7.0, 31
  %_5 = shl i32 1, %1
  %_4 = xor i32 %_5, -1
  %2 = and i32 %n, %_4
  store i32 %2, ptr %_0, align 4
  br label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_cf622f0f49f65afca642b7bb2b17aca3) #22
  unreachable

bb5:                                              ; preds = %bb1, %bb4
  %3 = load i32, ptr %_0, align 4
  ret i32 %3
}
