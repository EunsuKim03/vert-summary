define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.3.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.3.0.extract.trunc = trunc nuw i64 %arr.sroa.3.0.extract.shift to i32
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  %3 = trunc i64 %0 to i32
  %_0.i.i.i.i.i = icmp slt i32 %2, %3
  %spec.select = select i1 %_0.i.i.i.i.i, i32 %3, i32 %arr.sroa.3.0.extract.trunc
  %spec.select15 = select i1 %_0.i.i.i.i.i, i32 %2, i32 %arr.sroa.0.0.extract.trunc
  %_156 = icmp sgt i32 %n, 0
  br i1 %_156, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %start
  %4 = add nsw i32 %n, -3
  %.not = icmp ult i32 %4, -2
  br i1 %.not, label %panic, label %bb8

bb9:                                              ; preds = %bb8, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1.lcssa, %bb8 ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %bb8.preheader
  %_9.not = icmp sgt i32 %spec.select15, -1
  %5 = zext i1 %_9.not to i32
  %exitcond.not = icmp eq i32 %n, 1
  %6 = select i1 %_9.not, i32 %spec.select15, i32 0
  %_9.not.1 = icmp sge i32 %spec.select, %6
  %7 = zext i1 %_9.not.1 to i32
  %count.sroa.0.1.1 = add nuw nsw i32 %5, %7
  %count.sroa.0.1.lcssa = select i1 %exitcond.not, i32 %5, i32 %count.sroa.0.1.1
  br label %bb9

panic:                                            ; preds = %bb8.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_63252c550bd639529741a965d328512b) #18
  unreachable
}
