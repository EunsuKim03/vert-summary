define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb9, label %bb2

bb2:                                              ; preds = %start
  %_13 = zext nneg i32 %n to i64
  %_12 = add nsw i64 %_13, -1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a0d5aa47d31dbb54dab47b0a5a3e05c2) #24
  unreachable

bb9:                                              ; preds = %start
  ret i32 -1
}
