define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb7, label %bb2

bb2:                                              ; preds = %start
  %_12 = zext nneg i32 %n to i64
  %_11 = add nsw i64 %_12, -1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a0d5aa47d31dbb54dab47b0a5a3e05c2) #18
  unreachable

bb7:                                              ; preds = %start
  ret i32 -1
}
