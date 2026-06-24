define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %exitcond.not = icmp slt i32 %n, 1
  br i1 %exitcond.not, label %bb5, label %bb6

bb6:                                              ; preds = %start
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_5 = icmp eq i32 %x, %arr.sroa.0.0.extract.trunc
  br i1 %_5, label %bb5, label %bb1.1

bb5:                                              ; preds = %bb1.2, %bb6.1, %bb1.1, %bb6, %start
  %i.sroa.0.0 = phi i32 [ -1, %start ], [ 0, %bb6 ], [ -1, %bb1.1 ], [ 1, %bb6.1 ], [ -1, %bb1.2 ]
  ret i32 %i.sroa.0.0

bb1.1:                                            ; preds = %bb6
  %exitcond.1.not = icmp eq i32 %n, 1
  br i1 %exitcond.1.not, label %bb5, label %bb6.1

bb6.1:                                            ; preds = %bb1.1
  %_5.1 = icmp eq i32 %x, %arr.sroa.2.0.extract.trunc
  br i1 %_5.1, label %bb5, label %bb1.2

bb1.2:                                            ; preds = %bb6.1
  %exitcond.2.not = icmp eq i32 %n, 2
  br i1 %exitcond.2.not, label %bb5, label %panic

panic:                                            ; preds = %bb1.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6c4dd311708888c54fb1cc8e069cbae6) #18
  unreachable
}
