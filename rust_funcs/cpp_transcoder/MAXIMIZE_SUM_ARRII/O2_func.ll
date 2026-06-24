define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  %3 = trunc i64 %0 to i32
  %_0.i.i.i.i.i = icmp slt i32 %2, %3
  %spec.select = select i1 %_0.i.i.i.i.i, i32 %3, i32 %arr.sroa.2.0.extract.trunc
  %_124 = icmp sgt i32 %n, 0
  br i1 %_124, label %bb4.preheader, label %bb5

bb4.preheader:                                    ; preds = %start
  %4 = add nsw i32 %n, -3
  %.not = icmp ult i32 %4, -2
  br i1 %.not, label %panic, label %bb4

bb5:                                              ; preds = %bb4, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %.lcssa, %bb4 ]
  ret i32 %sum.sroa.0.0.lcssa

bb4:                                              ; preds = %bb4.preheader
  %exitcond.not = icmp eq i32 %n, 1
  %.lcssa = select i1 %exitcond.not, i32 0, i32 %spec.select
  br label %bb5

panic:                                            ; preds = %bb4.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0b6bd549e7152e3219d87f755ab1df3d) #18
  unreachable
}
