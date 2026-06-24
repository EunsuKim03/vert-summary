define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n, i32 noundef %p) unnamed_addr #1 {
start:
  %_4 = icmp eq i32 %p, 0
  br i1 %_4, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_5 = icmp eq i32 %p, -1
  %_6 = icmp eq i32 %n, -2147483648
  %_7 = and i1 %_6, %_5
  br i1 %_7, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_629a19d24384027aaa235e8c80de7d9c) #17
  unreachable

bb2:                                              ; preds = %bb1
  %n2 = srem i32 %n, %p
  %_98 = icmp sgt i32 %p, 2
  br i1 %_98, label %bb4, label %bb10

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_629a19d24384027aaa235e8c80de7d9c) #17
  unreachable

bb3:                                              ; preds = %bb6
  %0 = add nuw nsw i32 %x.sroa.0.09, 1
  %exitcond.not = icmp eq i32 %0, %p
  br i1 %exitcond.not, label %bb10, label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %x.sroa.0.09 = phi i32 [ %0, %bb3 ], [ 2, %bb2 ]
  %_13 = mul i32 %x.sroa.0.09, %x.sroa.0.09
  %_16 = icmp eq i32 %_13, -2147483648
  %_17 = and i1 %_5, %_16
  br i1 %_17, label %panic4, label %bb6

bb10:                                             ; preds = %bb3, %bb6, %bb2
  %_0.sroa.0.0 = phi i32 [ 0, %bb2 ], [ 1, %bb6 ], [ 0, %bb3 ]
  ret i32 %_0.sroa.0.0

bb6:                                              ; preds = %bb4
  %_12 = srem i32 %_13, %p
  %_11 = icmp eq i32 %_12, %n2
  br i1 %_11, label %bb10, label %bb3

panic4:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_24a69aa971146af69ba933bc628974be) #17
  unreachable
}
