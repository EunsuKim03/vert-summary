define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  %_3 = load i32, ptr %n, align 4
  %_2 = icmp eq i32 %_3, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %bb9, %start
  %_5 = load i32, ptr %n, align 4
  %_4 = icmp ne i32 %_5, 1
  br i1 %_4, label %bb3, label %bb10

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb11

bb10:                                             ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb11

bb3:                                              ; preds = %bb2
  %_8 = load i32, ptr %n, align 4
  %_11 = icmp eq i32 %_8, -2147483648
  %_12 = and i1 false, %_11
  br i1 %_12, label %panic, label %bb5

bb11:                                             ; preds = %bb1, %bb6, %bb10
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb5:                                              ; preds = %bb3
  %_7 = srem i32 %_8, 2
  %_6 = icmp ne i32 %_7, 0
  br i1 %_6, label %bb6, label %bb7

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_3cc6ae7898c57c5145381820e3cdb23a) #22
  unreachable

bb7:                                              ; preds = %bb5
  %_13 = load i32, ptr %n, align 4
  %_16 = icmp eq i32 %_13, -2147483648
  %_17 = and i1 false, %_16
  br i1 %_17, label %panic1, label %bb9

bb6:                                              ; preds = %bb5
  store i32 0, ptr %_0, align 4
  br label %bb11

bb9:                                              ; preds = %bb7
  %2 = sdiv i32 %_13, 2
  store i32 %2, ptr %n, align 4
  br label %bb2

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_44cdc8579835ddd2712d3dccd3545611) #22
  unreachable
}
