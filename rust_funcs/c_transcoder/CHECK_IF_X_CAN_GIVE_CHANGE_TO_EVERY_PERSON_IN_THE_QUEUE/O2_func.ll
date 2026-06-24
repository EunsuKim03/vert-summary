define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %notes.sroa.2.0.extract.shift = lshr i64 %0, 32
  %notes.sroa.2.0.extract.trunc = trunc nuw i64 %notes.sroa.2.0.extract.shift to i32
  %_2011 = icmp sgt i32 %n, 0
  br i1 %_2011, label %bb22.preheader, label %bb21

bb22.preheader:                                   ; preds = %start
  %1 = and i64 %0, 4294967295
  %cond = icmp eq i64 %1, 5
  br i1 %cond, label %bb19, label %bb21

bb21:                                             ; preds = %bb22.preheader, %bb22.1, %bb19, %bb19.1, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb19 ], [ 1, %bb19.1 ], [ 0, %bb22.preheader ], [ 0, %bb22.1 ]
  ret i32 %_0.sroa.0.0

panic:                                            ; preds = %bb19.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9938ce9edb91e671d397c9951ae6e6a2) #18
  unreachable

bb19:                                             ; preds = %bb22.preheader
  %exitcond19.not = icmp eq i32 %n, 1
  br i1 %exitcond19.not, label %bb21, label %bb22.1

bb22.1:                                           ; preds = %bb19
  switch i32 %notes.sroa.2.0.extract.trunc, label %bb21 [
    i32 5, label %bb19.1
    i32 10, label %bb19.1
  ]

bb19.1:                                           ; preds = %bb22.1, %bb22.1
  %exitcond19.1.not = icmp eq i32 %n, 2
  br i1 %exitcond19.1.not, label %bb21, label %panic
}
