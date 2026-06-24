define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, -1
  %_9 = icmp ult i64 %_7, 2
  br i1 %_9, label %bb1, label %panic

bb1:                                              ; preds = %start
  %_11 = add nsw i64 %_8, -2
  %_12 = icmp ult i64 %_11, 2
  br i1 %_12, label %panic2, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_037c982f7113fad382747c29e3244c82) #19
  unreachable

panic1:                                           ; preds = %bb1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_39aec2478f319ecb6e41d0d81fffd071) #19
  unreachable

panic2:                                           ; preds = %bb1
  %_14 = add nuw nsw i64 %_8, -3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4385c5a3a89a390cbd2f10c6aa51708b) #19
  unreachable
}
