define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 {
start:
  %_8 = icmp eq i32 %n, -2147483648
  br label %bb3

bb3:                                              ; preds = %start, %bb6
  %count.sroa.0.09 = phi i32 [ 0, %start ], [ %0, %bb6 ]
  %i.sroa.0.08 = phi i32 [ 5, %start ], [ %1, %bb6 ]
  %_4 = sdiv i32 %n, %i.sroa.0.08
  %_3 = icmp sgt i32 %_4, 0
  br i1 %_3, label %bb6, label %bb7

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_502c3ab8c693e4b7ab9d21689631a1c1) #17
  unreachable

bb7:                                              ; preds = %bb3
  ret i32 %count.sroa.0.09

bb6:                                              ; preds = %bb3
  %0 = add i32 %_4, %count.sroa.0.09
  %1 = mul i32 %i.sroa.0.08, 5
  %_7 = icmp eq i32 %i.sroa.0.08, 858993459
  %_9 = and i1 %_8, %_7
  br i1 %_9, label %panic1, label %bb3
}
