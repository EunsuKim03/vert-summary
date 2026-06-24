define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
; call core::str::<impl str>::len
  %_3 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17hb6c5de94624e2f89E"(ptr align 1 %str.0, i64 %str.1) #20
  %n = trunc i64 %_3 to i32
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %_6.0)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_abd97bd614ef44f3331580b31be3e5eb) #22
  unreachable

bb3:                                              ; preds = %bb2
  %_10 = icmp eq i32 %_7.0, -2147483648
  %_11 = and i1 false, %_10
  br i1 %_11, label %panic2, label %bb5

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_71f9e4b0e17dc92d8e180d738cbce101) #22
  unreachable

bb5:                                              ; preds = %bb3
  %_0 = sdiv i32 %_7.0, 2
  ret i32 %_0

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_71f9e4b0e17dc92d8e180d738cbce101) #22
  unreachable
}
