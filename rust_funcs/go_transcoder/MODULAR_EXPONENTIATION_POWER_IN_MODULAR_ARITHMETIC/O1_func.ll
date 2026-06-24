define noundef range(i32 -2147483647, -2147483648) i32 @f_gold(i32 noundef %x, i32 noundef %0, i32 noundef %p) unnamed_addr #3 {
start:
  %_7 = icmp eq i32 %p, 0
  br i1 %_7, label %panic, label %bb2.preheader

bb2.preheader:                                    ; preds = %start
  %_8.not12 = icmp eq i32 %0, 0
  br i1 %_8.not12, label %bb10, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %bb2.preheader
  %_17 = icmp eq i32 %p, -1
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bf9f1d5bdb459ca454aa3317ff48a736) #23
  unreachable

bb10:                                             ; preds = %bb9, %bb2.preheader
  %res.sroa.0.0.lcssa = phi i32 [ 1, %bb2.preheader ], [ %res.sroa.0.1, %bb9 ]
  ret i32 %res.sroa.0.0.lcssa

bb3:                                              ; preds = %bb3.lr.ph, %bb9
  %x.pn = phi i32 [ %x, %bb3.lr.ph ], [ %_21, %bb9 ]
  %y.sroa.0.014 = phi i32 [ %0, %bb3.lr.ph ], [ %2, %bb9 ]
  %res.sroa.0.013 = phi i32 [ 1, %bb3.lr.ph ], [ %res.sroa.0.1, %bb9 ]
  %x1.sroa.0.015 = urem i32 %x.pn, %p
  %_11 = and i32 %y.sroa.0.014, 1
  %_10.not = icmp eq i32 %_11, 0
  br i1 %_10.not, label %bb9, label %bb4

bb4:                                              ; preds = %bb3
  %_13 = mul i32 %x1.sroa.0.015, %res.sroa.0.013
  %_18 = icmp eq i32 %_13, -2147483648
  %_19 = and i1 %_17, %_18
  br i1 %_19, label %panic3, label %bb6

bb6:                                              ; preds = %bb4
  %1 = srem i32 %_13, %p
  br label %bb9

panic3:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c777a96390d6cad362e1effbb453b738) #23
  unreachable

bb9:                                              ; preds = %bb6, %bb3
  %res.sroa.0.1 = phi i32 [ %1, %bb6 ], [ %res.sroa.0.013, %bb3 ]
  %_21 = mul i32 %x1.sroa.0.015, %x1.sroa.0.015
  %2 = lshr i32 %y.sroa.0.014, 1
  %_8.not = icmp ult i32 %y.sroa.0.014, 2
  br i1 %_8.not, label %bb10, label %bb3
}
