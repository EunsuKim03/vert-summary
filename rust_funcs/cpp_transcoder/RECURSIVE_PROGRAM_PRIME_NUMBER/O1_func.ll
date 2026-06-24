define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n, i32 noundef %i) unnamed_addr #3 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb11, %start
  %i.tr = phi i32 [ %i, %start ], [ %_13, %bb11 ]
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb1, label %bb5

bb5:                                              ; preds = %tailrecurse
  %_7 = icmp eq i32 %i.tr, 0
  br i1 %_7, label %panic, label %bb7

bb1:                                              ; preds = %tailrecurse
  %_4 = icmp eq i32 %n, 2
  %. = zext i1 %_4 to i32
  br label %bb13

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c49abafdd92a391b2e58d85772acf06d) #23
  unreachable

bb7:                                              ; preds = %bb5
  %_6 = srem i32 %n, %i.tr
  %_5 = icmp eq i32 %_6, 0
  br i1 %_5, label %bb13, label %bb9

bb9:                                              ; preds = %bb7
  %_12 = mul i32 %i.tr, %i.tr
  %_11 = icmp sgt i32 %_12, %n
  br i1 %_11, label %bb13, label %bb11

bb11:                                             ; preds = %bb9
  %_13 = add i32 %i.tr, 1
  br label %tailrecurse

bb13:                                             ; preds = %bb9, %bb7, %bb1
  %_0.sroa.0.0 = phi i32 [ %., %bb1 ], [ 0, %bb7 ], [ 1, %bb9 ]
  ret i32 %_0.sroa.0.0
}
