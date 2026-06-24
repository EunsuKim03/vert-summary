define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %_166 = icmp sgt i32 %n, 0
  br i1 %_166, label %bb12.preheader, label %bb13

bb12.preheader:                                   ; preds = %start
  %1 = add nsw i32 %n, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic, label %bb12

bb13.loopexit:                                    ; preds = %bb12.1, %bb12
  %count_even.sroa.0.1.lcssa = phi i32 [ %6, %bb12 ], [ %9, %bb12.1 ]
  %count_odd.sroa.0.1.lcssa = phi i32 [ %_8, %bb12 ], [ %8, %bb12.1 ]
  %2 = icmp eq i32 %count_odd.sroa.0.1.lcssa, 0
  %3 = icmp ne i32 %count_even.sroa.0.1.lcssa, 1
  %4 = select i1 %2, i1 true, i1 %3
  %5 = zext i1 %4 to i32
  br label %bb13

bb13:                                             ; preds = %bb13.loopexit, %start
  %count_odd.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %5, %bb13.loopexit ]
  ret i32 %count_odd.sroa.0.0.lcssa

bb12:                                             ; preds = %bb12.preheader
  %_8 = and i32 %a.sroa.0.0.extract.trunc, 1
  %6 = xor i32 %_8, 1
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb13.loopexit, label %bb12.1

bb12.1:                                           ; preds = %bb12
  %7 = xor i32 %a.sroa.2.0.extract.trunc, -1
  %count_even.sroa.0.1.1 = add i32 %6, %7
  %count_odd.sroa.0.1.1 = add i32 %a.sroa.2.0.extract.trunc, %a.sroa.0.0.extract.trunc
  %8 = and i32 %count_odd.sroa.0.1.1, 1
  %9 = and i32 %count_even.sroa.0.1.1, 1
  br label %bb13.loopexit

panic:                                            ; preds = %bb12.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fdc1f7c0cc7e34a9ee9440810172a4d9) #18
  unreachable
}
