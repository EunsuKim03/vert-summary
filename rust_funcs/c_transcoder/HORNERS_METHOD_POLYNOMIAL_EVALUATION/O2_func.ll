define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %poly.sroa.1.0.extract.shift = lshr i64 %0, 32
  %poly.sroa.1.0.extract.trunc = trunc nuw i64 %poly.sroa.1.0.extract.shift to i32
  %1 = trunc i64 %0 to i32
  %_104 = icmp sgt i32 %n, 1
  br i1 %_104, label %bb3.preheader, label %bb4

bb3.preheader:                                    ; preds = %start
  %.not11 = icmp eq i32 %n, 2
  br i1 %.not11, label %bb3, label %panic

bb4:                                              ; preds = %bb3, %start
  %result.sroa.0.0.lcssa = phi i32 [ %1, %start ], [ %2, %bb3 ]
  ret i32 %result.sroa.0.0.lcssa

bb3:                                              ; preds = %bb3.preheader
  %_6 = mul i32 %x, %1
  %2 = add i32 %_6, %poly.sroa.1.0.extract.trunc
  br label %bb4

panic:                                            ; preds = %bb3.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b50e145a28ead3a49df1585c47e238db) #18
  unreachable
}
