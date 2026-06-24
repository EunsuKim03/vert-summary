define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %_3 = shl i32 %x, 1
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_3, i32 %x)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_7 = ashr i32 %x, 1
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_6.0, i32 %_7)
  %_10.0 = extractvalue { i32, i1 } %1, 0
  %_10.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_10.1, label %panic1, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b43fae640426f7d81f9d103b0ef82901) #22
  unreachable

bb4:                                              ; preds = %bb2
  ret i32 %_10.0

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b43fae640426f7d81f9d103b0ef82901) #22
  unreachable
}
