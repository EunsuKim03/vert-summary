define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %x)
  %_5.0 = extractvalue { i32, i1 } %0, 0
  %_5.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_5.0, i32 %x)
  %_6.0 = extractvalue { i32, i1 } %1, 0
  %_6.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_6.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d03023a9c8a96475143e7c52193ae483) #22
  unreachable

bb2:                                              ; preds = %bb1
  %_8 = icmp ult i32 %_6.0, 32
  br i1 %_8, label %bb3, label %panic2

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d03023a9c8a96475143e7c52193ae483) #22
  unreachable

bb3:                                              ; preds = %bb2
  %2 = and i32 %_6.0, 31
  %_2 = shl i32 %x, %2
  %_0 = ashr i32 %_2, 1
  ret i32 %_0

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_d53e163f5b1d0f5dba105e386c0d638f) #22
  unreachable
}
