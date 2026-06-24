define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb23, label %panic4

bb23:                                             ; preds = %start
  ret i32 -1

panic4:                                           ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a5f998b1d06b081252b5eafcd6708738) #24
  unreachable
}
