define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %_6 = add i32 %n, 1
  %_4.not7 = icmp slt i32 %_6, 2
  br i1 %_4.not7, label %bb4, label %bb3

bb4:                                              ; preds = %bb3, %bb3.1, %start
  %total.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %1, %bb3 ], [ %3, %bb3.1 ]
  ret i32 %total.sroa.0.0.lcssa

bb3:                                              ; preds = %start
  %1 = sub i32 3, %a.sroa.0.0.extract.trunc
  %_4.not = icmp eq i32 %_6, 2
  br i1 %_4.not, label %bb4, label %bb3.1

bb3.1:                                            ; preds = %bb3
  %2 = add i32 %a.sroa.0.0.extract.trunc, %a.sroa.2.0.extract.trunc
  %3 = sub i32 6, %2
  %_4.not.1 = icmp slt i32 %_6, 4
  br i1 %_4.not.1, label %bb4, label %panic

panic:                                            ; preds = %bb3.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c753e5fc1c4f3005c1d62e99963ef927) #24
  unreachable
}
