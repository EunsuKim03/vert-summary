define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb13, %bb20, %start
  %accumulator.tr = phi i32 [ %accumulator.tr, %bb20 ], [ 0, %start ], [ %3, %bb13 ]
  %n.tr = phi i32 [ %n, %start ], [ %_31, %bb20 ], [ %_27, %bb13 ]
  %_2 = icmp slt i32 %n.tr, 3
  br i1 %_2, label %bb23, label %bb3

bb3:                                              ; preds = %tailrecurse
  %_4 = icmp slt i32 %n.tr, 10
  br i1 %_4, label %bb4, label %bb8

bb4:                                              ; preds = %bb3
  %0 = add nsw i32 %n.tr, -1
  br label %bb23

panic:                                            ; preds = %bb9.1
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_35663117fcaffa818b304a24a6c449c9) #23
  unreachable

bb8:                                              ; preds = %bb3, %bb9.1
  %po.sroa.0.014 = phi i32 [ %2, %bb9.1 ], [ 1, %bb3 ]
  %_7 = sdiv i32 %n.tr, %po.sroa.0.014
  %_6 = icmp sgt i32 %_7, 9
  br i1 %_6, label %bb9, label %bb12

bb9:                                              ; preds = %bb8
  %1 = mul i32 %po.sroa.0.014, 10
  %_7.1 = sdiv i32 %n.tr, %1
  %_6.1 = icmp sgt i32 %_7.1, 9
  br i1 %_6.1, label %bb9.1, label %bb12

bb9.1:                                            ; preds = %bb9
  %2 = mul i32 %po.sroa.0.014, 100
  %_9.1 = icmp eq i32 %2, 0
  br i1 %_9.1, label %panic, label %bb8

bb12:                                             ; preds = %bb9, %bb8
  %po.sroa.0.014.lcssa = phi i32 [ %po.sroa.0.014, %bb8 ], [ %1, %bb9 ]
  %_7.lcssa = phi i32 [ %_7, %bb8 ], [ %_7.1, %bb9 ]
  %_18.not = icmp eq i32 %_7.lcssa, 3
  br i1 %_18.not, label %bb20, label %bb13

bb20:                                             ; preds = %bb12
  %_32 = mul i32 %po.sroa.0.014.lcssa, 3
  %_31 = add i32 %_32, -1
  br label %tailrecurse

bb13:                                             ; preds = %bb12
  %_21 = tail call noundef i32 @f_gold(i32 noundef %_7.lcssa)
  %_23 = add i32 %po.sroa.0.014.lcssa, -1
  %_22 = tail call noundef i32 @f_gold(i32 noundef %_23)
  %_20 = mul i32 %_22, %_21
  %_25 = tail call noundef i32 @f_gold(i32 noundef %_7.lcssa)
  %_19 = add i32 %_20, %_25
  %_27 = srem i32 %n.tr, %po.sroa.0.014.lcssa
  %3 = add i32 %_19, %accumulator.tr
  br label %tailrecurse

bb23:                                             ; preds = %tailrecurse, %bb4
  %_0.sroa.0.0 = phi i32 [ %0, %bb4 ], [ %n.tr, %tailrecurse ]
  %accumulator.ret.tr = add i32 %_0.sroa.0.0, %accumulator.tr
  ret i32 %accumulator.ret.tr
}
