define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 {
start:
  %_2010.not = icmp eq i32 %n, 0
  br i1 %_2010.not, label %bb5, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %_7 = shl i32 %n, 1
  br label %bb2

bb7:                                              ; preds = %bb3
  %_15 = add i32 %n, 1
  %_16 = icmp eq i32 %_15, 0
  br i1 %_16, label %panic, label %bb4

bb4:                                              ; preds = %bb7
  %_17 = icmp eq i32 %_15, -1
  %_18 = icmp eq i32 %2, -2147483648
  %_19 = and i1 %_17, %_18
  br i1 %_19, label %panic1, label %bb5

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d0b040e08e871cefe1ddf122eb93520e) #17
  unreachable

bb5:                                              ; preds = %start, %bb4
  %res.sroa.0.0.lcssa1624 = phi i32 [ %2, %bb4 ], [ 1, %start ]
  %_151723 = phi i32 [ %_15, %bb4 ], [ 1, %start ]
  %_0 = sdiv i32 %res.sroa.0.0.lcssa1624, %_151723
  ret i32 %_0

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d0b040e08e871cefe1ddf122eb93520e) #17
  unreachable

bb2:                                              ; preds = %bb2.lr.ph, %bb3
  %res.sroa.0.012 = phi i32 [ 1, %bb2.lr.ph ], [ %2, %bb3 ]
  %iter.sroa.0.011 = phi i32 [ 0, %bb2.lr.ph ], [ %0, %bb3 ]
  %0 = add nuw i32 %iter.sroa.0.011, 1
  %_6 = sub i32 %_7, %iter.sroa.0.011
  %1 = mul i32 %res.sroa.0.012, %_6
  %_11 = icmp eq i32 %0, -1
  %_12 = icmp eq i32 %1, -2147483648
  %_13 = and i1 %_11, %_12
  br i1 %_13, label %panic3, label %bb3

bb3:                                              ; preds = %bb2
  %2 = sdiv i32 %1, %0
  %exitcond.not = icmp eq i32 %0, %n
  br i1 %exitcond.not, label %bb7, label %bb2

panic3:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b1665666ed210949fcbb75d6aab657bb) #17
  unreachable
}
