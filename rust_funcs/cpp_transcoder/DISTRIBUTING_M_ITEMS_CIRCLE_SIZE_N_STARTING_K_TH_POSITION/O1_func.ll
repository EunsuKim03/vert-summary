define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m, i32 noundef %k) unnamed_addr #3 {
start:
  %_6 = sub i32 %n, %k
  %_5 = add i32 %_6, 1
  %_4.not = icmp sgt i32 %m, %_5
  br i1 %_4.not, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %m1 = sub i32 %m, %_5
  %_10 = icmp eq i32 %n, 0
  br i1 %_10, label %panic, label %bb3

bb1:                                              ; preds = %start
  %_7 = add i32 %m, -1
  %0 = add i32 %_7, %k
  br label %bb10

bb3:                                              ; preds = %bb2
  %_11 = icmp eq i32 %n, -1
  %_12 = icmp eq i32 %m1, -2147483648
  %_13 = and i1 %_11, %_12
  br i1 %_13, label %panic2, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d8083114fc6f6cd7eed28a598a07e083) #23
  unreachable

bb4:                                              ; preds = %bb3
  %1 = srem i32 %m1, %n
  %_9 = icmp eq i32 %1, 0
  %spec.select = select i1 %_9, i32 %n, i32 %1
  br label %bb10

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d8083114fc6f6cd7eed28a598a07e083) #23
  unreachable

bb10:                                             ; preds = %bb4, %bb1
  %_0.sroa.0.0 = phi i32 [ %0, %bb1 ], [ %spec.select, %bb4 ]
  ret i32 %_0.sroa.0.0
}
