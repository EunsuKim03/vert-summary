define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %_0.i.i.i7 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i7, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %start
  %min.sroa.0.0.lcssa = phi i32 [ %a.sroa.0.0.extract.trunc, %start ], [ %min.sroa.0.1, %bb7 ]
  %_16 = add i32 %n, -1
  %_0 = mul i32 %min.sroa.0.0.lcssa, %_16
  ret i32 %_0

bb7:                                              ; preds = %start
  %min.sroa.0.1 = tail call i32 @llvm.smin.i32(i32 %a.sroa.2.0.extract.trunc, i32 %a.sroa.0.0.extract.trunc)
  %_0.i.i.i.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i.not, label %bb6, label %panic

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5d09ff184d6baf32ae85f72034c846f9) #24
  unreachable
}
