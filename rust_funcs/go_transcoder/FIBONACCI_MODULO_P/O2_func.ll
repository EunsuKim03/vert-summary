define noundef i32 @f_gold(i32 noundef %p) unnamed_addr #1 {
start:
  %_7 = icmp eq i32 %p, 0
  %_8 = icmp eq i32 %p, -1
  br i1 %_7, label %panic, label %bb2

bb5:                                              ; preds = %bb4
  ret i32 %1

bb2:                                              ; preds = %start, %bb4
  %number.sroa.0.09 = phi i32 [ %1, %bb4 ], [ 2, %start ]
  %first.sroa.0.08 = phi i32 [ %next.sroa.0.07, %bb4 ], [ 1, %start ]
  %next.sroa.0.07 = phi i32 [ %0, %bb4 ], [ 1, %start ]
  %_5 = add i32 %first.sroa.0.08, %next.sroa.0.07
  %_9 = icmp eq i32 %_5, -2147483648
  %_10 = and i1 %_8, %_9
  br i1 %_10, label %panic1, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e79d1cebc6041acc1a3195ff28710f74) #17
  unreachable

bb4:                                              ; preds = %bb2
  %0 = srem i32 %_5, %p
  %1 = add i32 %number.sroa.0.09, 1
  %_4.not = icmp eq i32 %0, 0
  br i1 %_4.not, label %bb5, label %bb2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e79d1cebc6041acc1a3195ff28710f74) #17
  unreachable
}
