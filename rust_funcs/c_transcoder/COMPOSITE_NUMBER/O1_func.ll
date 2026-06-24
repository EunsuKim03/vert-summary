define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #3 {
start:
  %_3 = icmp slt i32 %n, 4
  br i1 %_3, label %bb22, label %bb4

bb4:                                              ; preds = %start
  %_5 = and i32 %n, 1
  %_4 = icmp eq i32 %_5, 0
  %_8 = urem i32 %n, 3
  %_7 = icmp eq i32 %_8, 0
  %or.cond = or i1 %_4, %_7
  br i1 %or.cond, label %bb22, label %bb10.preheader

bb10.preheader:                                   ; preds = %bb4
  %_10.not9 = icmp slt i32 %n, 25
  br i1 %_10.not9, label %bb22, label %bb11

bb10:                                             ; preds = %bb17
  %0 = add i32 %i.sroa.0.010, 6
  %_11 = mul i32 %0, %0
  %_10.not = icmp sgt i32 %_11, %n
  br i1 %_10.not, label %bb22, label %bb11

bb11:                                             ; preds = %bb10.preheader, %bb10
  %i.sroa.0.010 = phi i32 [ %0, %bb10 ], [ 5, %bb10.preheader ]
  %_17 = icmp eq i32 %i.sroa.0.010, 0
  br i1 %_17, label %panic, label %bb13

bb22:                                             ; preds = %bb10, %bb17, %bb13, %bb10.preheader, %bb4, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 1, %bb4 ], [ 0, %bb10.preheader ], [ 1, %bb13 ], [ 1, %bb17 ], [ 0, %bb10 ]
  ret i32 %_0.sroa.0.0

panic:                                            ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b6be0f1d7dd53aa49841ce199a3e18cd) #23
  unreachable

bb13:                                             ; preds = %bb11
  %_15 = srem i32 %n, %i.sroa.0.010
  %_14 = icmp eq i32 %_15, 0
  br i1 %_14, label %bb22, label %bb15

bb15:                                             ; preds = %bb13
  %_22 = add i32 %i.sroa.0.010, 2
  %_24 = icmp eq i32 %_22, 0
  br i1 %_24, label %panic2, label %bb17

panic2:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_01bee136f1ed09feb4b95e465d06549e) #23
  unreachable

bb17:                                             ; preds = %bb15
  %_21 = srem i32 %n, %_22
  %_20 = icmp eq i32 %_21, 0
  br i1 %_20, label %bb22, label %bb10
}
