define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_104 = icmp sgt i32 %n, 0
  br i1 %_104, label %bb6.preheader, label %bb7

bb6.preheader:                                    ; preds = %start
  %1 = add nsw i32 %n, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic, label %bb6

bb7:                                              ; preds = %bb6, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %spec.select.lcssa, %bb6 ]
  ret i32 %res.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.preheader
  %_6 = icmp eq i32 %x, %arr.sroa.0.0.extract.trunc
  %2 = zext i1 %_6 to i32
  %exitcond.not = icmp eq i32 %n, 1
  %_6.1 = icmp eq i32 %x, %arr.sroa.2.0.extract.trunc
  %3 = zext i1 %_6.1 to i32
  %spec.select.1 = add nuw nsw i32 %2, %3
  %spec.select.lcssa = select i1 %exitcond.not, i32 %2, i32 %spec.select.1
  br label %bb7

panic:                                            ; preds = %bb6.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7977bd7a47fe9ff722c73c51777aeed1) #18
  unreachable
}
