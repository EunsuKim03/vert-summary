define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_1814 = icmp sgt i32 %n, 0
  br i1 %_1814, label %bb9.preheader, label %panic

bb9.preheader:                                    ; preds = %start
  %1 = add nsw i32 %n, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic2, label %bb9

bb10:                                             ; preds = %bb9.1, %bb9
  %.lcssa = phi i32 [ %arr.sroa.0.0.extract.trunc, %bb9 ], [ %4, %bb9.1 ]
  %pos.sroa.0.1.lcssa = phi i32 [ %2, %bb9 ], [ %pos.sroa.0.1.1, %bb9.1 ]
  %neg.sroa.0.1.lcssa = phi i32 [ %3, %bb9 ], [ %neg.sroa.0.1.1, %bb9.1 ]
  %_14 = icmp eq i32 %neg.sroa.0.1.lcssa, %pos.sroa.0.1.lcssa
  br i1 %_14, label %panic, label %bb8

bb9:                                              ; preds = %bb9.preheader
  %_11 = icmp sgt i32 %arr.sroa.0.0.extract.trunc, -1
  %2 = zext i1 %_11 to i32
  %not._11 = xor i1 %_11, true
  %3 = zext i1 %not._11 to i32
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb10, label %bb9.1

bb9.1:                                            ; preds = %bb9
  %4 = add i32 %arr.sroa.2.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  %_11.1 = icmp sgt i64 %0, -1
  %5 = zext i1 %_11.1 to i32
  %pos.sroa.0.1.1 = add nuw nsw i32 %2, %5
  %not._11.1 = xor i1 %_11.1, true
  %6 = zext i1 %not._11.1 to i32
  %neg.sroa.0.1.1 = add nuw nsw i32 %3, %6
  br label %bb10

panic:                                            ; preds = %start, %bb10
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7d87ea604b0060abc8f3ab77f9cb596e) #18
  unreachable

bb8:                                              ; preds = %bb10
  %_13 = sub nsw i32 %neg.sroa.0.1.lcssa, %pos.sroa.0.1.lcssa
  %_12.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_13, i1 false)
  %_0 = sdiv i32 %.lcssa, %_12.sroa.0.0
  ret i32 %_0

panic2:                                           ; preds = %bb9.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_11ea925815217d24ca1e87e1c839890b) #18
  unreachable
}
