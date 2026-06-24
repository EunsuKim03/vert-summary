define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x, i32 noundef %y) unnamed_addr #1 {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_125 = icmp sgt i32 %n, 0
  br i1 %_125, label %bb7.preheader, label %bb8

bb7.preheader:                                    ; preds = %start
  %1 = add nsw i32 %n, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic, label %bb7

bb8:                                              ; preds = %bb7, %bb7.1, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb7 ], [ %spec.select.1, %bb7.1 ]
  ret i32 %count.sroa.0.0.lcssa

bb7:                                              ; preds = %bb7.preheader
  %_7.not = icmp sle i32 %x, %arr.sroa.0.0.extract.trunc
  %_11.not = icmp sge i32 %y, %arr.sroa.0.0.extract.trunc
  %or.cond.not = and i1 %_7.not, %_11.not
  %2 = zext i1 %or.cond.not to i32
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb8, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %_7.not.1 = icmp sle i32 %x, %arr.sroa.2.0.extract.trunc
  %_11.not.1 = icmp sge i32 %y, %arr.sroa.2.0.extract.trunc
  %or.cond.not.1 = and i1 %_7.not.1, %_11.not.1
  %3 = zext i1 %or.cond.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %2, %3
  br label %bb8

panic:                                            ; preds = %bb7.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f680369731030c1161ba990112b9b67d) #18
  unreachable
}
