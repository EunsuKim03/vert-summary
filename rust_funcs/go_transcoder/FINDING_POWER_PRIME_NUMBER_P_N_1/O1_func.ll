define noundef i32 @f_gold(i32 noundef %n, i32 noundef %p) unnamed_addr #3 {
start:
  %_4.not7 = icmp sgt i32 %p, %n
  br i1 %_4.not7, label %bb5, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %_10 = icmp eq i32 %n, -2147483648
  br label %bb2

bb5:                                              ; preds = %bb4, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %0, %bb4 ]
  ret i32 %ans.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2.lr.ph, %bb4
  %ans.sroa.0.09 = phi i32 [ 0, %bb2.lr.ph ], [ %0, %bb4 ]
  %temp.sroa.0.08 = phi i32 [ %p, %bb2.lr.ph ], [ %1, %bb4 ]
  %_8 = icmp eq i32 %temp.sroa.0.08, 0
  br i1 %_8, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %_9 = icmp eq i32 %temp.sroa.0.08, -1
  %_11 = and i1 %_10, %_9
  br i1 %_11, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aac7f087d08b4eeb69aa2670b1e08257) #23
  unreachable

bb4:                                              ; preds = %bb3
  %_6 = sdiv i32 %n, %temp.sroa.0.08
  %0 = add i32 %_6, %ans.sroa.0.09
  %1 = mul i32 %temp.sroa.0.08, %p
  %_4.not = icmp sgt i32 %1, %n
  br i1 %_4.not, label %bb5, label %bb2

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aac7f087d08b4eeb69aa2670b1e08257) #23
  unreachable
}
