define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #1 {
start:
  %_33 = icmp eq i32 %a, 0
  br i1 %_33, label %bb6, label %bb3

bb3:                                              ; preds = %start, %bb4
  %b.tr5 = phi i32 [ %a.tr4, %bb4 ], [ %b, %start ]
  %a.tr4 = phi i32 [ %_4, %bb4 ], [ %a, %start ]
  %_5 = icmp eq i32 %a.tr4, -1
  %_6 = icmp eq i32 %b.tr5, -2147483648
  %_7 = and i1 %_5, %_6
  br i1 %_7, label %panic1, label %bb4

bb4:                                              ; preds = %bb3
  %_4 = srem i32 %b.tr5, %a.tr4
  %_3 = icmp eq i32 %_4, 0
  br i1 %_3, label %bb6, label %bb3

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_002095e2b953e07166c5757e0e79199d) #17
  unreachable

bb6:                                              ; preds = %bb4, %start
  %b.tr.lcssa = phi i32 [ %b, %start ], [ %a.tr4, %bb4 ]
  ret i32 %b.tr.lcssa
}
