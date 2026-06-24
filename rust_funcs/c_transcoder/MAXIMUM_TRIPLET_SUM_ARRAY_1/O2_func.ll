define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_9 = sext i32 %n to i64
  %_8 = add nsw i64 %_9, -1
  %_10 = icmp ult i64 %_8, 2
  br i1 %_10, label %bb2, label %panic

bb2:                                              ; preds = %start
  %_12 = add nsw i64 %_9, -2
  %_13 = icmp ult i64 %_12, 2
  br i1 %_13, label %panic2, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_77a0c66a84819c47a2f583b97f36d27f) #19
  unreachable

panic1:                                           ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bf1ea7c75658b6ed02a4c9048ea77cbe) #19
  unreachable

panic2:                                           ; preds = %bb2
  %_15 = add nuw nsw i64 %_9, -3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7dcd21b192b612e009780d59cfbcf6e0) #19
  unreachable
}
