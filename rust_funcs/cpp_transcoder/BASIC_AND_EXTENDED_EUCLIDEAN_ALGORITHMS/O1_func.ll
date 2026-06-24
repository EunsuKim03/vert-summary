define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #3 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb4, %start
  %a.tr = phi i32 [ %a, %start ], [ %_4, %bb4 ]
  %b.tr = phi i32 [ %b, %start ], [ %a.tr, %bb4 ]
  %_3 = icmp eq i32 %a.tr, 0
  br i1 %_3, label %bb6, label %bb3

bb3:                                              ; preds = %tailrecurse
  %_5 = icmp eq i32 %a.tr, -1
  %_6 = icmp eq i32 %b.tr, -2147483648
  %_7 = and i1 %_5, %_6
  br i1 %_7, label %panic1, label %bb4

bb4:                                              ; preds = %bb3
  %_4 = srem i32 %b.tr, %a.tr
  br label %tailrecurse

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_69aae41b36f86c905c86a73b3d0b38c8) #23
  unreachable

bb6:                                              ; preds = %tailrecurse
  ret i32 %b.tr
}
