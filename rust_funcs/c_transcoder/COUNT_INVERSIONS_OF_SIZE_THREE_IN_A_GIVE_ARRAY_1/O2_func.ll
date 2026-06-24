define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %1 = add i32 %n, -3
  %_2537 = icmp ult i32 %1, -2
  br i1 %_2537, label %bb14.lr.ph, label %bb15

bb14.lr.ph:                                       ; preds = %start
  %_2932 = icmp ugt i32 %n, 2
  br i1 %_2932, label %panic8, label %panic

bb15:                                             ; preds = %start
  ret i32 0

panic:                                            ; preds = %bb14.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bedc1d9d818d870d13746abc743fe1f8) #18
  unreachable

panic8:                                           ; preds = %bb14.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2f665475ff5f437adeead010b6299ad3) #18
  unreachable
}
