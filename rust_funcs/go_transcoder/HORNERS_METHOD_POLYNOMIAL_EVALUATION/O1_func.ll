define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #3 {
start:
  %poly.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %poly.sroa.2.0.extract.shift = lshr i64 %0, 32
  %poly.sroa.2.0.extract.trunc = trunc nuw i64 %poly.sroa.2.0.extract.shift to i32
  %_0.i.i.i5 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i5, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %start
  %result.sroa.0.0.lcssa = phi i32 [ %poly.sroa.0.0.extract.trunc, %start ], [ %1, %bb7 ]
  ret i32 %result.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_11 = mul i32 %x, %poly.sroa.0.0.extract.trunc
  %1 = add i32 %_11, %poly.sroa.2.0.extract.trunc
  %_0.i.i.i.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i.not, label %bb6, label %panic

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c4fefab16f76f157ffe5ac158e9f068c) #24
  unreachable
}
