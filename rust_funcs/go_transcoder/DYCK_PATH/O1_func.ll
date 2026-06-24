define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i12.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i12.not, label %bb6, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start
  %_12 = shl i32 %n, 1
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %bb8
  %spec.select16 = phi i32 [ 1, %bb5.lr.ph ], [ %spec.select, %bb8 ]
  %res.sroa.0.015 = phi i32 [ 1, %bb5.lr.ph ], [ %1, %bb8 ]
  %iter.sroa.0.014 = phi i32 [ 0, %bb5.lr.ph ], [ %spec.select16, %bb8 ]
  %_11 = sub i32 %_12, %iter.sroa.0.014
  %0 = mul i32 %res.sroa.0.015, %_11
  %_14 = add nuw i32 %iter.sroa.0.014, 1
  %_16 = icmp eq i32 %_14, -1
  %_17 = icmp eq i32 %0, -2147483648
  %_18 = and i1 %_16, %_17
  br i1 %_18, label %panic3, label %bb8

bb6:                                              ; preds = %bb8, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %1, %bb8 ]
  %_20 = add i32 %n, 1
  %_21 = icmp eq i32 %_20, 0
  br i1 %_21, label %panic, label %bb9

bb9:                                              ; preds = %bb6
  %_22 = icmp eq i32 %_20, -1
  %_23 = icmp eq i32 %res.sroa.0.0.lcssa, -2147483648
  %_24 = and i1 %_22, %_23
  br i1 %_24, label %panic1, label %bb10

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e9f17a291dcb237b202939bb9c4c14e4) #23
  unreachable

bb10:                                             ; preds = %bb9
  %_0 = sdiv i32 %res.sroa.0.0.lcssa, %_20
  ret i32 %_0

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e9f17a291dcb237b202939bb9c4c14e4) #23
  unreachable

bb8:                                              ; preds = %bb5
  %1 = sdiv i32 %0, %_14
  %_0.i.i.i = icmp ult i32 %spec.select16, %n
  %_0.i1.i.i = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw i32 %spec.select16, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb5, label %bb6

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_debc84c1a26a970fd447a15b56338007) #23
  unreachable
}
