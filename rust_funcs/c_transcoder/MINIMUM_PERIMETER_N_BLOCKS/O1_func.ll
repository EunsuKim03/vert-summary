define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 {
start:
  %_4 = sitofp i32 %n to float
  %0 = tail call noundef float @llvm.sqrt.f32(float %_4)
  %l = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %sq = mul i32 %l, %l
  %_6 = icmp eq i32 %sq, %n
  br i1 %_6, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %_8 = icmp eq i32 %l, 0
  br i1 %_8, label %panic, label %bb4

bb2:                                              ; preds = %start
  %1 = shl i32 %l, 2
  br label %bb11

bb4:                                              ; preds = %bb3
  %_9 = icmp eq i32 %l, -1
  %_10 = icmp eq i32 %n, -2147483648
  %_11 = and i1 %_10, %_9
  br i1 %_11, label %panic1, label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cf6f58cb1dd6f8dae3f1894eba2b034c) #23
  unreachable

bb5:                                              ; preds = %bb4
  %row = sdiv i32 %n, %l
  %_12 = add i32 %row, %l
  %2 = shl i32 %_12, 1
  %_14 = srem i32 %n, %l
  %_13.not = icmp eq i32 %_14, 0
  %3 = add i32 %2, 2
  %spec.select = select i1 %_13.not, i32 %2, i32 %3
  br label %bb11

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cf6f58cb1dd6f8dae3f1894eba2b034c) #23
  unreachable

bb11:                                             ; preds = %bb5, %bb2
  %perimeter.sroa.0.0 = phi i32 [ %1, %bb2 ], [ %spec.select, %bb5 ]
  ret i32 %perimeter.sroa.0.0
}
