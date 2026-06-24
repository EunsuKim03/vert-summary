define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %a.sroa.1.0.extract.shift = lshr i64 %0, 32
  %a.sroa.1.0.extract.trunc = trunc nuw i64 %a.sroa.1.0.extract.shift to i32
  %1 = trunc i64 %0 to i32
  %_127 = icmp ugt i32 %n, 1
  br i1 %_127, label %bb7.preheader, label %bb8

bb7.preheader:                                    ; preds = %start
  %.not = icmp eq i32 %n, 2
  br i1 %.not, label %bb7, label %panic

bb8:                                              ; preds = %bb7, %start
  %min.sroa.0.0.lcssa = phi i32 [ %1, %start ], [ %min.sroa.0.1, %bb7 ]
  %_11 = add nsw i32 %n, -1
  %_0 = mul i32 %min.sroa.0.0.lcssa, %_11
  ret i32 %_0

bb7:                                              ; preds = %bb7.preheader
  %min.sroa.0.1 = tail call i32 @llvm.smin.i32(i32 %a.sroa.1.0.extract.trunc, i32 %1)
  br label %bb8

panic:                                            ; preds = %bb7.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5d09ff184d6baf32ae85f72034c846f9) #18
  unreachable
}
