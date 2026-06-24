define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %_186 = icmp sgt i32 %n, 0
  br i1 %_186, label %bb12.preheader, label %bb13

bb12.preheader:                                   ; preds = %start
  %1 = add nsw i32 %n, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic, label %bb12

bb13:                                             ; preds = %bb12, %start
  %count_odd.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %9, %bb12 ]
  ret i32 %count_odd.sroa.0.0.lcssa

bb12:                                             ; preds = %bb12.preheader
  %2 = xor i32 %a.sroa.0.0.extract.trunc, 1
  %exitcond.not = icmp eq i32 %n, 1
  %3 = xor i32 %a.sroa.2.0.extract.trunc, 1
  %count_even.sroa.0.1.1 = add i32 %3, %2
  %count_odd.sroa.0.1.1 = add i32 %a.sroa.2.0.extract.trunc, %a.sroa.0.0.extract.trunc
  %count_even.sroa.0.1.lcssa = select i1 %exitcond.not, i32 %2, i32 %count_even.sroa.0.1.1
  %count_odd.sroa.0.1.lcssa = select i1 %exitcond.not, i32 %a.sroa.0.0.extract.trunc, i32 %count_odd.sroa.0.1.1
  %4 = and i32 %count_odd.sroa.0.1.lcssa, 1
  %5 = icmp eq i32 %4, 0
  %6 = and i32 %count_even.sroa.0.1.lcssa, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = zext i1 %8 to i32
  br label %bb13

panic:                                            ; preds = %bb12.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b866381f2b6ca5e6afb9b027812f4231) #18
  unreachable
}
