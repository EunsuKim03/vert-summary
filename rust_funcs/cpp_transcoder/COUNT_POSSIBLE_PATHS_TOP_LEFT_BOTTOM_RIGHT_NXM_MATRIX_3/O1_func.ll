define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #3 {
start:
  %_6 = add i32 %m, -1
  %_5 = add i32 %_6, %n
  %_0.i.i.i9 = icmp slt i32 %n, %_5
  br i1 %_0.i.i.i9, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %spec.select10 = add nsw i32 %n, 1
  br label %bb5

bb5:                                              ; preds = %bb5.preheader, %bb8
  %spec.select13 = phi i32 [ %spec.select, %bb8 ], [ %spec.select10, %bb5.preheader ]
  %path.sroa.0.012 = phi i32 [ %1, %bb8 ], [ 1, %bb5.preheader ]
  %iter.sroa.0.011 = phi i32 [ %spec.select13, %bb8 ], [ %n, %bb5.preheader ]
  %0 = mul i32 %path.sroa.0.012, %iter.sroa.0.011
  %_13 = sub i32 %iter.sroa.0.011, %n
  %_12 = add i32 %_13, 1
  %_14 = icmp eq i32 %_12, 0
  br i1 %_14, label %panic, label %bb7

bb6:                                              ; preds = %bb8, %start
  %path.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %1, %bb8 ]
  ret i32 %path.sroa.0.0.lcssa

bb7:                                              ; preds = %bb5
  %_15 = icmp eq i32 %_12, -1
  %_16 = icmp eq i32 %0, -2147483648
  %_17 = and i1 %_15, %_16
  br i1 %_17, label %panic1, label %bb8

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e51449fafc9a418f1d4275433590ba65) #23
  unreachable

bb8:                                              ; preds = %bb7
  %1 = sdiv i32 %0, %_12
  %_0.i.i.i = icmp slt i32 %spec.select13, %_5
  %2 = zext i1 %_0.i.i.i to i32
  %spec.select = add nsw i32 %spec.select13, %2
  br i1 %_0.i.i.i, label %bb5, label %bb6

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e51449fafc9a418f1d4275433590ba65) #23
  unreachable
}
