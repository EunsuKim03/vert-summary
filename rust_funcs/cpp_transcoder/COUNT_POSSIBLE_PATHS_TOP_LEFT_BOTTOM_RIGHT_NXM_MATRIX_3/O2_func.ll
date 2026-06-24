define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #1 {
start:
  %_4 = add i32 %m, -1
  %iter1 = add i32 %_4, %n
  %_139 = icmp slt i32 %n, %iter1
  br i1 %_139, label %bb4, label %bb5

bb5:                                              ; preds = %bb3, %start
  %path.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %2, %bb3 ]
  ret i32 %path.sroa.0.0.lcssa

bb4:                                              ; preds = %start, %bb3
  %path.sroa.0.011 = phi i32 [ %2, %bb3 ], [ 1, %start ]
  %iter.sroa.0.010 = phi i32 [ %0, %bb3 ], [ %n, %start ]
  %0 = add i32 %iter.sroa.0.010, 1
  %1 = mul i32 %path.sroa.0.011, %iter.sroa.0.010
  %_8 = sub i32 %iter.sroa.0.010, %n
  %_7 = add i32 %_8, 1
  %_9 = icmp eq i32 %_7, 0
  br i1 %_9, label %panic, label %bb2

bb2:                                              ; preds = %bb4
  %_10 = icmp eq i32 %_7, -1
  %_11 = icmp eq i32 %1, -2147483648
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %panic2, label %bb3

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e51449fafc9a418f1d4275433590ba65) #17
  unreachable

bb3:                                              ; preds = %bb2
  %2 = sdiv i32 %1, %_7
  %exitcond.not = icmp eq i32 %0, %iter1
  br i1 %exitcond.not, label %bb5, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e51449fafc9a418f1d4275433590ba65) #17
  unreachable
}
