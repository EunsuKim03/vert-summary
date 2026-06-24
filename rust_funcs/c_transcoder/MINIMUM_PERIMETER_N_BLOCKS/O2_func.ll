define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 {
start:
  %_4 = sitofp i32 %n to float
  %0 = tail call float @llvm.sqrt.f32(float %_4)
  %l = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %sq = mul i32 %l, %l
  %_6 = icmp eq i32 %sq, %n
  br i1 %_6, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_8 = icmp eq i32 %l, 0
  br i1 %_8, label %panic, label %bb3

bb1:                                              ; preds = %start
  %1 = shl i32 %l, 2
  br label %bb10

bb3:                                              ; preds = %bb2
  %_9 = icmp eq i32 %l, -1
  %_10 = icmp eq i32 %n, -2147483648
  %_11 = and i1 %_10, %_9
  br i1 %_11, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cf6f58cb1dd6f8dae3f1894eba2b034c) #17
  unreachable

bb4:                                              ; preds = %bb3
  %row = sdiv i32 %n, %l
  %_12 = add i32 %row, %l
  %2 = shl i32 %_12, 1
  %_14 = srem i32 %n, %l
  %_13.not = icmp eq i32 %_14, 0
  %3 = add i32 %2, 2
  %spec.select = select i1 %_13.not, i32 %2, i32 %3
  br label %bb10

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cf6f58cb1dd6f8dae3f1894eba2b034c) #17
  unreachable

bb10:                                             ; preds = %bb4, %bb1
  %perimeter.sroa.0.0 = phi i32 [ %1, %bb1 ], [ %spec.select, %bb4 ]
  ret i32 %perimeter.sroa.0.0
}
