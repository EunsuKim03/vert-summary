define noundef range(i32 -2147483647, -2147483648) i32 @f_gold(i32 noundef %x, i32 noundef %0, i32 noundef %p) unnamed_addr #1 {
start:
  %_5 = icmp eq i32 %p, 0
  br i1 %_5, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_6 = icmp eq i32 %p, -1
  %_7 = icmp eq i32 %x, -2147483648
  %_8 = and i1 %_7, %_6
  br i1 %_8, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_238f211a4a200e9938862ae571c9313f) #17
  unreachable

panic2:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_238f211a4a200e9938862ae571c9313f) #17
  unreachable

bb3:                                              ; preds = %bb1, %bb9
  %x.pn = phi i32 [ %_19, %bb9 ], [ %x, %bb1 ]
  %res.sroa.0.0 = phi i32 [ %res.sroa.0.1, %bb9 ], [ 1, %bb1 ]
  %y.sroa.0.0 = phi i32 [ %1, %bb9 ], [ %0, %bb1 ]
  %x1.sroa.0.0 = srem i32 %x.pn, %p
  %_9.not = icmp eq i32 %y.sroa.0.0, 0
  br i1 %_9.not, label %bb12, label %bb4

bb12:                                             ; preds = %bb3
  ret i32 %res.sroa.0.0

bb4:                                              ; preds = %bb3
  %_12 = and i32 %y.sroa.0.0, 1
  %_11.not = icmp eq i32 %_12, 0
  br i1 %_11.not, label %bb9, label %bb5

bb5:                                              ; preds = %bb4
  %_14 = mul i32 %x1.sroa.0.0, %res.sroa.0.0
  %_16 = icmp eq i32 %_14, -2147483648
  %_17 = and i1 %_6, %_16
  br i1 %_17, label %panic4, label %bb7

bb9:                                              ; preds = %bb4, %bb7
  %res.sroa.0.1 = phi i32 [ %2, %bb7 ], [ %res.sroa.0.0, %bb4 ]
  %1 = lshr i32 %y.sroa.0.0, 1
  %_19 = mul i32 %x1.sroa.0.0, %x1.sroa.0.0
  %_21 = icmp eq i32 %_19, -2147483648
  %_22 = and i1 %_6, %_21
  br i1 %_22, label %panic6, label %bb3

bb7:                                              ; preds = %bb5
  %2 = srem i32 %_14, %p
  br label %bb9

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5236121c38de5ef14a9d7c2aff1fb45c) #17
  unreachable

panic6:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_de381d5c302409374630ca85b97854d1) #17
  unreachable
}
