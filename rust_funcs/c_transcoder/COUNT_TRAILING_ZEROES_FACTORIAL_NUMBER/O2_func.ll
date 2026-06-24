define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 {
start:
  %_8 = icmp eq i32 %n, -2147483648
  br label %bb3

bb3:                                              ; preds = %start, %bb7
  %count.sroa.0.09 = phi i32 [ 0, %start ], [ %0, %bb7 ]
  %i.sroa.0.08 = phi i32 [ 5, %start ], [ %1, %bb7 ]
  %_4 = sdiv i32 %n, %i.sroa.0.08
  %_3 = icmp slt i32 %_4, 1
  br i1 %_3, label %bb4, label %bb7

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_35258a571234022596cf5a6795a107f0) #17
  unreachable

bb4:                                              ; preds = %bb3
  ret i32 %count.sroa.0.09

bb7:                                              ; preds = %bb3
  %0 = add i32 %_4, %count.sroa.0.09
  %1 = mul i32 %i.sroa.0.08, 5
  %_7 = icmp eq i32 %i.sroa.0.08, 858993459
  %_9 = and i1 %_8, %_7
  br i1 %_9, label %panic1, label %bb3
}
