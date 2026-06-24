define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %exitcond.not = icmp slt i32 %n, 2
  br i1 %exitcond.not, label %bb9, label %bb5

bb9:                                              ; preds = %bb5, %bb4.1, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb5 ], [ 1, %bb4.1 ]
  ret i32 %_0.sroa.0.0

bb5:                                              ; preds = %start
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_7 = icmp sgt i32 %arr.sroa.0.0.extract.trunc, %arr.sroa.2.0.extract.trunc
  br i1 %_7, label %bb9, label %bb4.1

bb4.1:                                            ; preds = %bb5
  %exitcond.1.not = icmp eq i32 %n, 2
  br i1 %exitcond.1.not, label %bb9, label %panic1

panic1:                                           ; preds = %bb4.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1de4dca7228c0e7e7b08d10065fd390d) #18
  unreachable
}
