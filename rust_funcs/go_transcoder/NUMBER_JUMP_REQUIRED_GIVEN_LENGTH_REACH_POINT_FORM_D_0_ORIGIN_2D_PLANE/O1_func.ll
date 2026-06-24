define noundef i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %d) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %1, i32 %0)
  %_0.sroa.0.0.i10 = tail call noundef i32 @llvm.smax.i32(i32 %1, i32 %0)
  %_8.not = icmp slt i32 %d, %_0.sroa.0.0.i10
  br i1 %_8.not, label %bb6, label %bb3

bb6:                                              ; preds = %start
  %_17 = icmp eq i32 %d, 0
  br i1 %_17, label %bb11, label %bb8

bb3:                                              ; preds = %start
  %_11 = add i32 %_0.sroa.0.0.i10, -1
  %_10 = add i32 %_11, %d
  %_13 = icmp eq i32 %_0.sroa.0.0.i10, 0
  br i1 %_13, label %panic, label %bb4

bb8:                                              ; preds = %bb6
  %_18 = icmp eq i32 %d, %_0.sroa.0.0.i
  %. = select i1 %_18, i32 1, i32 2
  br label %bb11

bb11:                                             ; preds = %bb6, %bb8, %bb5
  %_0.sroa.0.0 = phi i32 [ %2, %bb5 ], [ %., %bb8 ], [ 0, %bb6 ]
  ret i32 %_0.sroa.0.0

bb4:                                              ; preds = %bb3
  %_14 = icmp eq i32 %_0.sroa.0.0.i10, -1
  %_15 = icmp eq i32 %_10, -2147483648
  %_16 = and i1 %_14, %_15
  br i1 %_16, label %panic1, label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_af8ee96c92e45108a716efef7c8ddede) #23
  unreachable

bb5:                                              ; preds = %bb4
  %2 = sdiv i32 %_10, %_0.sroa.0.0.i10
  br label %bb11

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_af8ee96c92e45108a716efef7c8ddede) #23
  unreachable
}
