define noundef range(i32 -2147483647, -2147483648) i32 @f_gold(i32 noundef %a, i32 noundef %0, i32 noundef %mod_) unnamed_addr #3 {
start:
  %_5 = icmp eq i32 %mod_, 0
  br i1 %_5, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_6 = icmp eq i32 %mod_, -1
  %_7 = icmp eq i32 %a, -2147483648
  %_8 = and i1 %_7, %_6
  br i1 %_8, label %panic2, label %bb3.preheader

bb3.preheader:                                    ; preds = %bb1
  %_914 = icmp sgt i32 %0, 0
  br i1 %_914, label %bb4, label %bb12

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_94598b3c2b81db58ae5c70654e278115) #23
  unreachable

panic2:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_94598b3c2b81db58ae5c70654e278115) #23
  unreachable

bb3:                                              ; preds = %bb9
  %1 = lshr i32 %b.sroa.0.016, 1
  %_9.not = icmp samesign ult i32 %b.sroa.0.016, 2
  br i1 %_9.not, label %bb12, label %bb4

bb12:                                             ; preds = %bb3, %bb3.preheader
  %res.sroa.0.0.lcssa = phi i32 [ 0, %bb3.preheader ], [ %res.sroa.0.1, %bb3 ]
  ret i32 %res.sroa.0.0.lcssa

bb4:                                              ; preds = %bb3.preheader, %bb3
  %a.pn.pn = phi i32 [ %_18, %bb3 ], [ %a, %bb3.preheader ]
  %b.sroa.0.016 = phi i32 [ %1, %bb3 ], [ %0, %bb3.preheader ]
  %res.sroa.0.015 = phi i32 [ %res.sroa.0.1, %bb3 ], [ 0, %bb3.preheader ]
  %a1.sroa.0.017 = srem i32 %a.pn.pn, %mod_
  %_12 = and i32 %b.sroa.0.016, 1
  %_11.not = icmp eq i32 %_12, 0
  br i1 %_11.not, label %bb9, label %bb5

bb5:                                              ; preds = %bb4
  %_14 = add i32 %a1.sroa.0.017, %res.sroa.0.015
  %_16 = icmp eq i32 %_14, -2147483648
  %_17 = and i1 %_6, %_16
  br i1 %_17, label %panic4, label %bb7

bb9:                                              ; preds = %bb4, %bb7
  %res.sroa.0.1 = phi i32 [ %2, %bb7 ], [ %res.sroa.0.015, %bb4 ]
  %_18 = shl i32 %a1.sroa.0.017, 1
  %_19 = icmp eq i32 %_18, -2147483648
  %_20 = and i1 %_6, %_19
  br i1 %_20, label %panic6, label %bb3

bb7:                                              ; preds = %bb5
  %2 = srem i32 %_14, %mod_
  br label %bb9

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_794df87ba7ac11c5f252fa6d96281bcc) #23
  unreachable

panic6:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1d65aeafd0d9ae054ac7598e81a528b9) #23
  unreachable
}
